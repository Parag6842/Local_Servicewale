import '../database.dart';

class SystemParamTable extends SupabaseTable<SystemParamRow> {
  @override
  String get tableName => 'system_param';

  @override
  SystemParamRow createRow(Map<String, dynamic> data) => SystemParamRow(data);
}

class SystemParamRow extends SupabaseDataRow {
  SystemParamRow(super.data);

  @override
  SupabaseTable get table => SystemParamTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get paramName => getField<String>('param_name');
  set paramName(String? value) => setField<String>('param_name', value);

  String? get paramValue => getField<String>('param_value');
  set paramValue(String? value) => setField<String>('param_value', value);
}
