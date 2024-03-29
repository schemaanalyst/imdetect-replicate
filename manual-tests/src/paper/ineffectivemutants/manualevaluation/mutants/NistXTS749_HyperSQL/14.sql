-- 14
-- NNCA
-- Added NOT NULL to column EMPNAME in table STAFF

CREATE TABLE "STAFF" (
	"SALARY"	INT,
	"EMPNAME"	CHAR(20)	NOT NULL,
	"GRADE"	DECIMAL,
	"EMPNUM"	CHAR(3)	PRIMARY KEY	NOT NULL
)

CREATE TABLE "TEST12649" (
	"TNUM1"	NUMERIC(5, 0)	NOT NULL,
	"TNUM2"	NUMERIC(5, 0)	NOT NULL,
	"TCHAR"	CHAR(3)	CONSTRAINT "CND12649C"  REFERENCES "STAFF" ("EMPNUM"),
	CONSTRAINT "CND12649A" PRIMARY KEY ("TNUM1", "TNUM2"),
	CONSTRAINT "CND12649B" CHECK ("TNUM2" > 0)
)

