SELECT int_with_null_field, sqlTypeOf(int_with_null_field), int_without_null_field, sqlTypeOf(int_without_null_field), bool_with_null_field, sqlTypeOf(bool_with_null_field), bool_without_null_field, sqlTypeOf(bool_without_null_field), long_with_null_field, sqlTypeOf(long_with_null_field), long_without_null_field, sqlTypeOf(long_without_null_field), float_with_null_field, sqlTypeOf(float_with_null_field), float_without_null_field, sqlTypeOf(float_without_null_field), double_with_null_field, sqlTypeOf(double_with_null_field), double_without_null_field, sqlTypeOf(double_without_null_field), string_with_null_field, sqlTypeOf(string_with_null_field), string_without_null_field, sqlTypeOf(string_without_null_field) FROM dfs.drillTestDir.`decimal/DRILL_6094/Types.avro`;
