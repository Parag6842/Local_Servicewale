import '../database.dart';

class GloginTable extends SupabaseTable<GloginRow> {
  @override
  String get tableName => 'glogin';

  @override
  GloginRow createRow(Map<String, dynamic> data) => GloginRow(data);
}

class GloginRow extends SupabaseDataRow {
  GloginRow(super.data);

  @override
  SupabaseTable get table => GloginTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
