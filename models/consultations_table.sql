MODEL (
  name consultations.table,
  kind FULL
);

SELECT * FROM citizenspace.view
UNION ALL BY NAME
SELECT * FROM mysay.view;


CREATE OR REPLACE TABLE mysqldb.sqlmesh.consultations AS SELECT * FROM consultations.table;
