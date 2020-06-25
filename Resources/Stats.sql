SELECT
    count(*)
FROM pump_it_up_test_set_values;
-----------------------------------
SELECT
    *
FROM pump_it_up_test_set_values;
-----------------------------------
PRAGMA table_info(pump_it_up_test_set_values);
----------------------------------
SELECT
    count(*)
FROM pump_it_up_training_set_lables;
-----------------------------------
SELECT
    *
FROM pump_it_up_training_set_lables;
-----------------------------------
PRAGMA table_info(pump_it_up_training_set_lables);
-----------------------------------
SELECT
    count(*)
FROM pump_it_up_test_set_values;
-----------------------------------
SELECT
    *
FROM pump_it_up_test_set_values;
-----------------------------------
PRAGMA table_info(pump_it_up_test_set_values);
-----------------------------------
SELECT
    COUNT(DISTINCT ID)
FROM pump_it_up_training_set_values;
--59400
----------------------------------
SELECT
    COUNT(DISTINCT ID)
FROM pump_it_up_training_set_lables;
--59400
-----------------------------------
SELECT
    pump_it_up_training_set_values.*
  , pump_it_up_training_set_lables.status_group
FROM pump_it_up_training_set_values
INNER JOIN pump_it_up_training_set_lables ON pump_it_up_training_set_values.id = pump_it_up_training_set_lables.id;
-----------------------------------
CREATE TABLE pump_it_up_training_set AS
SELECT
    pump_it_up_training_set_values.*
  , pump_it_up_training_set_lables.status_group
FROM pump_it_up_training_set_values
INNER JOIN pump_it_up_training_set_lables ON pump_it_up_training_set_values.id = pump_it_up_training_set_lables.id;
-----------------------------------
PRAGMA table_info(pump_it_up_sample_set_values);
-----------------------------------
PRAGMA table_info(pump_it_up_sample_set_lables);
-----------------------------------
CREATE TABLE pump_it_up_sample_set AS
SELECT
    pump_it_up_sample_set_values.*
  , pump_it_up_sample_set_lables.status_group
FROM pump_it_up_sample_set_values
INNER JOIN pump_it_up_sample_set_lables ON pump_it_up_sample_set_values.id = pump_it_up_sample_set_lables.id;
-----------------------------------
CREATE TABLE pump_it_up_test_set AS
SELECT
    *
FROM pump_it_up_training_set
ORDER BY
    RANDOM (
    
)
LIMIT 10000;
-----------------------------------
CREATE TABLE pump_it_up_test_set_values AS
SELECT
    pump_it_up_training_set_values.*
FROM pump_it_up_training_set_values
INNER JOIN pump_it_up_test_set ON pump_it_up_test_set.id = pump_it_up_training_set_values.id;
-----------------------------------
CREATE TABLE pump_it_up_test_set_lables AS
SELECT
    pump_it_up_training_set_lables.*
FROM pump_it_up_training_set_lables
INNER JOIN pump_it_up_test_set ON pump_it_up_test_set.id = pump_it_up_training_set_lables.id;
