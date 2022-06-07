BEGIN;

-- CREATE TABLE "lists" ----------------------------------------
CREATE TABLE "public"."lists" ( 
	"id" Integer DEFAULT nextval('lists_id_seq'::regclass) NOT NULL,
	"task" Character Varying( 25 ) NOT NULL,
	PRIMARY KEY ( "id" ) );
 ;
-- -------------------------------------------------------------

COMMIT;
