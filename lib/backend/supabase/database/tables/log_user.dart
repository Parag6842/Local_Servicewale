import '../database.dart';

class LogUserTable extends SupabaseTable<LogUserRow> {
  @override
  String get tableName => 'log_user';

  @override
  LogUserRow createRow(Map<String, dynamic> data) => LogUserRow(data);
}

class LogUserRow extends SupabaseDataRow {
  LogUserRow(super.data);

  @override
  SupabaseTable get table => LogUserTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get pwd => getField<String>('pwd');
  set pwd(String? value) => setField<String>('pwd', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get userType => getField<String>('user_type');
  set userType(String? value) => setField<String>('user_type', value);

  String? get pinCode => getField<String>('pin_code');
  set pinCode(String? value) => setField<String>('pin_code', value);

  String? get building => getField<String>('building');
  set building(String? value) => setField<String>('building', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get pic => getField<String>('pic');
  set pic(String? value) => setField<String>('pic', value);

  String? get mob => getField<String>('mob');
  set mob(String? value) => setField<String>('mob', value);

  String? get busName => getField<String>('bus_name');
  set busName(String? value) => setField<String>('bus_name', value);

  String? get busDesc => getField<String>('bus_desc');
  set busDesc(String? value) => setField<String>('bus_desc', value);

  String? get busPic => getField<String>('bus_pic');
  set busPic(String? value) => setField<String>('bus_pic', value);

  String? get busAddress => getField<String>('bus_address');
  set busAddress(String? value) => setField<String>('bus_address', value);

  String? get busMob => getField<String>('bus_mob');
  set busMob(String? value) => setField<String>('bus_mob', value);

  String? get busType => getField<String>('bus_type');
  set busType(String? value) => setField<String>('bus_type', value);

  String? get busPinCode => getField<String>('bus_pin_code');
  set busPinCode(String? value) => setField<String>('bus_pin_code', value);

  String? get versionNo => getField<String>('version_no');
  set versionNo(String? value) => setField<String>('version_no', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get areaName => getField<String>('area_name');
  set areaName(String? value) => setField<String>('area_name', value);

  String? get flatNo => getField<String>('flat_no');
  set flatNo(String? value) => setField<String>('flat_no', value);

  String? get regionName => getField<String>('region_name');
  set regionName(String? value) => setField<String>('region_name', value);
}
