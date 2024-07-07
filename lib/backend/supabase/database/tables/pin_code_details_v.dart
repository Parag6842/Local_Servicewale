import '../database.dart';

class PinCodeDetailsVTable extends SupabaseTable<PinCodeDetailsVRow> {
  @override
  String get tableName => 'pin_code_details_v';

  @override
  PinCodeDetailsVRow createRow(Map<String, dynamic> data) =>
      PinCodeDetailsVRow(data);
}

class PinCodeDetailsVRow extends SupabaseDataRow {
  PinCodeDetailsVRow(super.data);

  @override
  SupabaseTable get table => PinCodeDetailsVTable();

  String? get pinCode => getField<String>('pin_code');
  set pinCode(String? value) => setField<String>('pin_code', value);

  String? get regionName => getField<String>('region_name');
  set regionName(String? value) => setField<String>('region_name', value);
}
