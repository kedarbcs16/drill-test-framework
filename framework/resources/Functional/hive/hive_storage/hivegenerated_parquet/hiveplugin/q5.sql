select * from hive1_fewtypes_null_parquet where coalesce(cast(date_col as date), date '2015-01-01', cast(date_col as date)) > date '2014-12-31';
