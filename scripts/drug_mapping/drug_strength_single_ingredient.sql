/* Preprocesses the drug_strength table to get all drugs with one ingredient */

SELECT drug_strength.*
INTO drugmap.drug_strength_single_ingredient
FROM (
    SELECT drug_concept_id
    FROM drug_strength
    GROUP BY drug_concept_id
    HAVING COUNT(*) = 1
) temp
LEFT JOIN drug_strength
    ON drug_strength.drug_concept_id = temp.drug_concept_id
;

ALTER TABLE drugmap.drug_strength_single_ingredient ADD PRIMARY KEY (drug_concept_id);
CREATE INDEX ingredient_concept_id_index ON drugmap.drug_strength_single_ingredient (ingredient_concept_id);
