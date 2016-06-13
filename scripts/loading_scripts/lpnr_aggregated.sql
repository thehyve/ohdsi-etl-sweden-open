/* Combine patient registries, drug registry and death registry
    Returns: id, MAX(gender), year of birth, immigration, emigration, count.
    Year of birth = Year - Age_end_year (thus highest age recorded = lowest yob).
    Imigration/emmigration only in oppen and sluten files. Aggregate for later use.
    Gender from Death register is often different from other registries. (20 times out of 179)
    */

-- SELECT * FROM (
CREATE TABLE bayer.lpnr_aggregated AS
    SELECT  lpnr,
            ROUND( AVG(kon) ) as kon, -- Should be all consistent
            FLOOR( AVG(ar - alder) ) as year_of_birth,

            -- seninv/utv are the most recent emmigration.
            -- Check whether it starts with a digit. Convert non-integer to NULL
            -- Known non-integer value is '   .'
            CASE WHEN MAX(seninv) ~ '^[0-9]'
                 THEN MAX(seninv)
                 ELSE NULL
            END as seninv,
            CASE WHEN MAX(senutv) ~ '^[0-9]'
                 THEN MAX(senutv)
                 ELSE NULL
            END as senutv,
            count(lpnr) as count
            -- string_agg(seninv,'|') as seninv,
            -- string_agg(senutv,'|') as senutv,
            -- array_agg(source_file),
            -- array_agg(kon) as kon_array
    FROM
    (
        SELECT lpnr, kon, ar, alder, seninv, senutv,
                'oppen' AS source_file
        FROM bayer.patient_oppen

        UNION ALL

        SELECT lpnr, kon, ar, alder, seninv, senutv,
                'sluten' AS source_file
        FROM bayer.patient_sluten

        UNION ALL

        SELECT lpnr, kon, ar, alder, NULL, NULL,
                'dag_kiru' AS source_file
        FROM bayer.patient_dag_kiru

        UNION ALL

        -- edatum: '24/01/2015'. Year is last four characters from edatum. cast as integer
        SELECT lpnr, kon, SUBSTRING(edatum FROM '....$')::integer as ar, alder, NULL, NULL,
                'drug' AS source_file
        FROM bayer.drug

        UNION ALL

        -- NOTE: many lpnr are only in the death registry.
        -- Gender turned off: too many aberrant readings
        SELECT lpnr, NULL, ar, alder, NULL, NULL,
                'death' AS source_file
        FROM bayer.death

    ) persons
    WHERE lpnr IS NOT NULL
    GROUP BY lpnr
    -- ) B where kon_temp != kon
;

-- Add primary key index on lpnr to speed up joins on lpnr.
ALTER TABLE bayer.lpnr_aggregated ADD PRIMARY KEY (lpnr);