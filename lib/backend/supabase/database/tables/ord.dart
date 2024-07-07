import '../database.dart';

class OrdTable extends SupabaseTable<OrdRow> {
  @override
  String get tableName => 'ord';

  @override
  OrdRow createRow(Map<String, dynamic> data) => OrdRow(data);
}

class OrdRow extends SupabaseDataRow {
  OrdRow(super.data);

  @override
  SupabaseTable get table => OrdTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  String? get busEmail => getField<String>('bus_email');
  set busEmail(String? value) => setField<String>('bus_email', value);

  int? get prdId => getField<int>('prd_id');
  set prdId(int? value) => setField<int>('prd_id', value);

  String? get prdName => getField<String>('prd_name');
  set prdName(String? value) => setField<String>('prd_name', value);

  int? get prdRate => getField<int>('prd_rate');
  set prdRate(int? value) => setField<int>('prd_rate', value);

  String? get prdPic => getField<String>('prd_pic');
  set prdPic(String? value) => setField<String>('prd_pic', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);
}
