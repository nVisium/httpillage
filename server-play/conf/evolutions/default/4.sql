# JobResponse schema
# --- !Ups
CREATE TABLE IF NOT EXISTS "JOBRESPONSES" (
    "ID" SERIAL PRIMARY KEY,
    "JOBID" bigint NOT NULL,
    "NODEID" bigint NOT NULL,
    "RESPONSECODE" int NOT NULL,
    "RESPONSE" text NOT NULL,
    "CREATEDAT" timestamp NOT NULL
);

INSERT INTO "JOBRESPONSES" ( "JOBID", "NODEID", "RESPONSECODE", "RESPONSE", "CREATEDAT")
VALUES (1, 1, 200, '<html><body>...</body></html>','2017-01-16T13:15:39.248+08:00');

INSERT INTO "JOBRESPONSES" ( "JOBID", "NODEID", "RESPONSECODE", "RESPONSE", "CREATEDAT")
VALUES (1, 1, 200, '<html><head></head><body>...</body></html>','2017-01-16T13:15:39.248+08:00');

# --- !Downs
DROP TABLE "JOBRESPONSES";