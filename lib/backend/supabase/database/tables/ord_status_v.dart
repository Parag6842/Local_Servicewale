import '../database.dart';

class OrdStatusVTable extends SupabaseTable<OrdStatusVRow> {
  @override
  String get tableName => 'ord_status_v';

  @override
  OrdStatusVRow createRow(Map<String, dynamic> data) => OrdStatusVRow(data);
}

class OrdStatusVRow extends SupabaseDataRow {
  OrdStatusVRow(super.data);

  @override
  SupabaseTable get table => OrdStatusVTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get key => getField<int>('key');
  set key(int? value) => setField<int>('key', value);
}
