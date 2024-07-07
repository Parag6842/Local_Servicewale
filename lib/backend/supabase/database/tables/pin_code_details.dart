import '../database.dart';

class PinCodeDetailsTable extends SupabaseTable<PinCodeDetailsRow> {
  @override
  String get tableName => 'pin_code_details';

  @override
  PinCodeDetailsRow createRow(Map<String, dynamic> data) =>
      PinCodeDetailsRow(data);
}

class PinCodeDetailsRow extends SupabaseDataRow {
  PinCodeDetailsRow(super.data);

  @override
  SupabaseTable get table => PinCodeDetailsTable();

  String? get pinCode => getField<String>('pin_code');
  set pinCode(String? value) => setField<String>('pin_code', value);

  String? get regionName => getField<String>('region_name');
  set regionName(String? value) => setField<String>('region_name', value);

  String? get taluka => getField<String>('taluka');
  set taluka(String? value) => setField<String>('taluka', value);

  String? get district => getField<String>('district');
  set district(String? value) => setField<String>('district', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);
}
