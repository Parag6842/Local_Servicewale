import '../database.dart';

class OrdStatusTable extends SupabaseTable<OrdStatusRow> {
  @override
  String get tableName => 'ord_status';

  @override
  OrdStatusRow createRow(Map<String, dynamic> data) => OrdStatusRow(data);
}

class OrdStatusRow extends SupabaseDataRow {
  OrdStatusRow(super.data);

  @override
  SupabaseTable get table => OrdStatusTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get key => getField<int>('key');
  set key(int? value) => setField<int>('key', value);
}
