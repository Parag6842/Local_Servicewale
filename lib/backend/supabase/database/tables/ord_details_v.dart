import '../database.dart';

class OrdDetailsVTable extends SupabaseTable<OrdDetailsVRow> {
  @override
  String get tableName => 'ord_details_v';

  @override
  OrdDetailsVRow createRow(Map<String, dynamic> data) => OrdDetailsVRow(data);
}

class OrdDetailsVRow extends SupabaseDataRow {
  OrdDetailsVRow(super.data);

  @override
  SupabaseTable get table => OrdDetailsVTable();

  String? get userPic => getField<String>('user_pic');
  set userPic(String? value) => setField<String>('user_pic', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  String? get userAddress => getField<String>('user_address');
  set userAddress(String? value) => setField<String>('user_address', value);

  String? get userPinCode => getField<String>('user_pin_code');
  set userPinCode(String? value) => setField<String>('user_pin_code', value);

  String? get userBuilding => getField<String>('user_building');
  set userBuilding(String? value) => setField<String>('user_building', value);

  String? get prdName => getField<String>('prd_name');
  set prdName(String? value) => setField<String>('prd_name', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get busEmail => getField<String>('bus_email');
  set busEmail(String? value) => setField<String>('bus_email', value);

  int? get prdRate => getField<int>('prd_rate');
  set prdRate(int? value) => setField<int>('prd_rate', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);

  int? get price => getField<int>('price');
  set price(int? value) => setField<int>('price', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get mob => getField<String>('mob');
  set mob(String? value) => setField<String>('mob', value);
}
