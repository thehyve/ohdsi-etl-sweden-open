/* Creates the tables in which the raw source data is loaded.
   Created in the bayer schema.
*/

-- DROP SCHEMA IF EXISTS bayer CASCADE;
CREATE SCHEMA bayer;

CREATE TABLE bayer.drug (
    atc		    varchar(10),
    forpstl		varchar(20),
    lnamn		varchar(100),
    varunr		integer,
    lpnr		integer,
    edatum		varchar(20),
    fdatum		varchar(20),
    transtyp	varchar(10),
    otyp		varchar(10),
    ftyp		varchar(10),
    yrke		varchar(10),
    vform		integer,
    verks		integer,
    startfp		integer,
    bytet		integer,
    bytesk		varchar(10),
    fvaruid		integer,
    fantal		decimal,
    varutyp		varchar(10),
    antal		decimal,
    tkost		decimal,
    merkost		decimal,
    spkod1		integer,
    spkod2		integer,
    spkod3		integer,
    alder		integer,
    lankost		decimal,
    patkost		decimal,
    doser		varchar(500),
    kon		    integer,
    aform		integer,
    utfkat		varchar(10),
    recb		varchar(10),
    lk		    integer,
    arbetsplats integer,
    fatc		varchar(10),
    exp_ar		integer,
    dddforp		decimal,
    berf		varchar(20),
    lform		varchar(100),
    lformgrupp		varchar(30),
    styrknum		decimal,
    strykalf		varchar(100),
    produktnanmn	varchar(100),
    beredningsform	varchar(100),
    beredningsgrupp	varchar(100),
    receptbelagt	varchar(10),
    styrka_tf		varchar(30),
    styrka_alf		varchar(100),
    styrka_enh		varchar(30),
    quantity        integer -- 26-05-2016
)
;


CREATE TABLE bayer.lisa (
    lpnr	integer,
    civil	varchar(2),
    lan	    integer,
    famtypf	integer,
    konsviktf04	decimal,
    dispinkpersf04	integer,
    sun2000niva	integer,
    syssstat11	integer,
    utlsvbakgalt	integer,
    yseg	varchar(2),
    year    varchar(20)
)
;

CREATE TABLE bayer.death (
    dodsdat	    integer,
    dodsdatn	varchar(20),
    ar          integer,
    kon         integer,
    ulorsak	    varchar(10),
    morsak1	    varchar(10),
    morsak2	    varchar(10),
    morsak3	    varchar(10),
    morsak4	    varchar(10),
    morsak5	    varchar(10),
    morsak6	    varchar(10),
    dbgrund1	integer,
    dalddag	    integer,
    daldman	    integer,
    alder       integer,
    fciv        varchar(2),
    nation      varchar(5),
    lpnr	    integer,
    morsak7     varchar(10),
    morsak8     varchar(10),
    morsak9     varchar(10),
    morsak10	varchar(10),
    morsak11	varchar(10),
    morsak12	varchar(10),
    dbgrund5	integer,
    dbgrund6	integer,
    dbgrund7	integer,
    dbgrund8	integer,
    alkohol	    integer,
    narkotik	integer,
    dodutl      integer,
    opererad	integer,
    opdat       varchar(10),
    skada       integer,
    mord        varchar(10),
    dodspl      integer,
    aolycka     integer,
    morsak13	varchar(10),
    morsak14	varchar(10),
    morsak15	varchar(10),
    morsak16	varchar(10),
    morsak17	varchar(10),
    morsak18	varchar(10),
    morsak19	varchar(10),
    morsak20	varchar(10),
    morsak21	varchar(10),
    morsak22	varchar(10),
    morsak23	varchar(10),
    morsak24	varchar(10),
    morsak25	varchar(10),
    morsak26	varchar(10),
    morsak27	varchar(10),
    morsak28	varchar(10),
    morsak29	varchar(10),
    morsak30	varchar(10),
    morsak31	varchar(10),
    morsak32	varchar(10),
    morsak33	varchar(10),
    morsak34	varchar(10),
    morsak35	varchar(10),
    morsak36	varchar(10),
    morsak37	varchar(10),
    morsak38	varchar(10),
    morsak39	varchar(10),
    morsak40	varchar(10),
    morsak41	varchar(10),
    morsak42	varchar(10),
    morsak43	varchar(10),
    morsak44	varchar(10),
    morsak45	varchar(10),
    morsak46	varchar(10),
    morsak47	varchar(10),
    morsak48	varchar(10),
    lan_kom	    integer,
    lan_text	varchar(20),
    skadans_natur	varchar(10)
)
;

/* Create tables */
CREATE TABLE bayer.patient_oppen (
  ar        integer,
  kon       integer,
  alder     integer,
  sjukhus   varchar(10),
  mvo       varchar(10),
  indatuma  integer,
  indatum   varchar(20),
  pvard     integer,
  seninv    varchar(10),
  senutv    varchar(10),
  ekod1     varchar(20),
  ekod2     varchar(20),
  ekod3     varchar(20),
  ekod4     varchar(20),
  ekod5     varchar(20),
  civil     varchar(10),
  ktyp      varchar(10),
  lpnr      integer, -- patient number
  drg       varchar(10),
  mdc       integer,
  hdia  varchar(10),
  op1	varchar(10),
  op2	varchar(10),
  op3	varchar(10),
  op4	varchar(10),
  op5	varchar(10),
  op6	varchar(10),
  op7	varchar(10),
  op8	varchar(10),
  op9	varchar(10),
  op10	varchar(10),
  op11	varchar(10),
  op12	varchar(10),
  op13	varchar(10),
  op14	varchar(10),
  op15	varchar(10),
  op16	varchar(10),
  op17	varchar(10),
  op18	varchar(10),
  op19	varchar(10),
  op20	varchar(10),
  op21	varchar(10),
  op22	varchar(10),
  op23	varchar(10),
  op24	varchar(10),
  op25	varchar(10),
  op26	varchar(10),
  op27	varchar(10),
  op28	varchar(10),
  op29	varchar(10),
  op30	varchar(10),
  bdia1	varchar(10),
  bdia2	varchar(10),
  bdia3	varchar(10),
  bdia4	varchar(10),
  bdia5	varchar(10),
  bdia6	varchar(10),
  bdia7	varchar(10),
  bdia8	varchar(10),
  bdia9	varchar(10),
  bdia10	varchar(10),
  bdia11	varchar(10),
  bdia12	varchar(10),
  bdia13	varchar(10),
  bdia14	varchar(10),
  bdia15	varchar(10),
  sjukhusnamn	varchar(50),
  klinik	varchar(50),
  lan_text	varchar(20),
  lan_kom	varchar(10),
  care_type   varchar(20)
)
;

CREATE TABLE bayer.patient_sluten (
    ar        integer,
    kon       integer,
    alder     integer,
    sjukhus   varchar(10),
    mvo       varchar(10),
    indatuma  integer,
    utdatuma  integer,
    indatum   varchar(20),
    utdatum   varchar(20),
    vtid      integer,
    insatt    integer,
    utsatt    integer,
    pvard     integer,
    seninv    varchar(10),
    senutv    varchar(10),
    ekod1     varchar(20),
    ekod2     varchar(20),
    ekod3     varchar(20),
    ekod4     varchar(20),
    ekod5     varchar(20),
    civil     varchar(10),
    lpnr      integer, -- patient number
    drg       varchar(10),
    mdc       integer,
    hdia      varchar(10),
    op1       varchar(10),
    op2	      varchar(10),
    op3	      varchar(10),
    op4	      varchar(10),
    op5	      varchar(10),
    op6	      varchar(10),
    op7	      varchar(10),
    op8	      varchar(10),
    op9	      varchar(10),
    op10	varchar(10),
    op11	varchar(10),
    op12	varchar(10),
    op13	varchar(10),
    op14	varchar(10),
    op15	varchar(10),
    op16	varchar(10),
    op17	varchar(10),
    op18	varchar(10),
    op19	varchar(10),
    op20	varchar(10),
    op21	varchar(10),
    op22	varchar(10),
    op23	varchar(10),
    op24	varchar(10),
    op25	varchar(10),
    op26	varchar(10),
    op27	varchar(10),
    op28	varchar(10),
    op29	varchar(10),
    op30	varchar(10),
    bdia1	varchar(10),
    bdia2	varchar(10),
    bdia3	varchar(10),
    bdia4	varchar(10),
    bdia5	varchar(10),
    bdia6	varchar(10),
    bdia7	varchar(10),
    bdia8	varchar(10),
    bdia9	varchar(10),
    bdia10	varchar(10),
    bdia11	varchar(10),
    bdia12	varchar(10),
    bdia13	varchar(10),
    bdia14	varchar(10),
    bdia15	varchar(10),
    bdia16	varchar(10),
    bdia17	varchar(10),
    bdia18	varchar(10),
    bdia19	varchar(10),
    bdia20	varchar(10),
    bdia21	varchar(10),
    sjukhusnamn	 varchar(50),
    klinik	     varchar(50),
    lan_text	 varchar(20),
    lan_kom	     varchar(10),
    care_type   varchar(20)
)
;

CREATE TABLE bayer.patient_dag_kiru (
    ar        integer,
    kon       integer,
    alder     integer,
    sjukhus   varchar(10), -- actually only integers in this dataset. But for coherency also varchar here.
    mvo       varchar(10),
    indatuma  integer,
    indatum   varchar(20),
    lpnr      integer, -- patient number
    seninv    varchar(10),
    senutv    varchar(10),
    hdia      varchar(10),
    op1       varchar(10),
    op2	      varchar(10),
    op3	      varchar(10),
    op4	      varchar(10),
    op5	      varchar(10),
    op6	      varchar(10),
    op7	      varchar(10),
    op8	      varchar(10),
    op9	      varchar(10),
    op10	  varchar(10),
    op11	  varchar(10),
    op12	  varchar(10),
    bdia1	  varchar(10),
    bdia2	  varchar(10),
    bdia3	  varchar(10),
    bdia4	  varchar(10),
    bdia5	  varchar(10),
    bdia6	  varchar(10),
    bdia7	  varchar(10),
    sjukhusnamn	 varchar(50),
    klinik	     varchar(50),
    lan_text	 varchar(20),
    lan_kom	     varchar(10),
    care_type   varchar(20)
)
;

/* Create tables in the long format for processed patient registeries*/
CREATE TABLE bayer.patient_oppen_long (
  ar        integer,
  kon       integer,
  alder     integer,
  sjukhus   varchar(10),
  mvo       varchar(10),
  indatuma  integer,
  indatum   varchar(20),
  pvard     integer,
  civil     varchar(2),
  seninv    varchar(10),
  senutv    varchar(10),
  ktyp      varchar(2),
  lpnr      integer, -- patient number
  drg       varchar(10),
  mdc       integer,
  sjukhusnamn	varchar(50),
  klinik	varchar(50),
  lan_text	varchar(20),
  lan_kom	varchar(10),
  visit_id	integer,
  code_type	varchar(10), -- ekod#, hdia, bdia#, op#
  code	    varchar(10),
  care_type   varchar(20)
)
;

CREATE TABLE bayer.patient_sluten_long (
    ar        integer,
    kon       integer,
    alder     integer,
    sjukhus   varchar(10),
    mvo       varchar(10),
    indatuma  integer,
    utdatuma  integer,
    indatum   varchar(20),
    utdatum   varchar(20),
    seninv    varchar(10),
    senutv    varchar(10),
    vtid      integer,
    insatt    integer,
    utsatt    integer,
    pvard     integer,
    civil     varchar(2),
    lpnr      integer, -- patient number
    drg       varchar(10),
    mdc       integer,
    sjukhusnamn	 varchar(50),
    klinik	     varchar(50),
    lan_text	 varchar(20),
    lan_kom	     varchar(10),
    visit_id	integer,
    code_type	varchar(10), -- ekod#, hdia, bdia#, op#
    code	    varchar(10),
    care_type   varchar(20)
)
;

CREATE TABLE bayer.patient_dag_kiru_long (
    ar        integer,
    kon       integer,
    alder     integer,
    sjukhus   varchar(10), -- actually only integers in this dataset. But for coherency also varchar here.
    mvo       varchar(10),
    indatuma  integer,
    indatum   varchar(20),
    lpnr      integer, -- patient number
    seninv    varchar(10),
    senutv    varchar(10),
    sjukhusnamn	 varchar(50),
    klinik	     varchar(50),
    lan_text	 varchar(20),
    lan_kom	     varchar(10),
    visit_id	integer,
    code_type	varchar(10), -- ekod#, hdia, bdia#, op#
    code	    varchar(10),
    care_type   varchar(20)
)
;