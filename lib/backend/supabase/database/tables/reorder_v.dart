import '../database.dart';

class ReorderVTable extends SupabaseTable<ReorderVRow> {
  @override
  String get tableName => 'reorder_v';

  @override
  ReorderVRow createRow(Map<String, dynamic> data) => ReorderVRow(data);
}

class ReorderVRow extends SupabaseDataRow {
  ReorderVRow(super.data);

  @override
  SupabaseTable get table => ReorderVTable();

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get shortDesc => getField<String>('short_desc');
  set shortDesc(String? value) => setField<String>('short_desc', value);

  String? get pic => getField<String>('pic');
  set pic(String? value) => setField<String>('pic', value);

  int? get rate => getField<int>('rate');
  set rate(int? value) => setField<int>('rate', value);

  String? get busEmail => getField<String>('bus_email');
  set busEmail(String? value) => setField<String>('bus_email', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
