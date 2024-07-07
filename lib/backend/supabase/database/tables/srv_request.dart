import '../database.dart';

class SrvRequestTable extends SupabaseTable<SrvRequestRow> {
  @override
  String get tableName => 'srv_request';

  @override
  SrvRequestRow createRow(Map<String, dynamic> data) => SrvRequestRow(data);
}

class SrvRequestRow extends SupabaseDataRow {
  SrvRequestRow(super.data);

  @override
  SupabaseTable get table => SrvRequestTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  String? get busEmail => getField<String>('bus_email');
  set busEmail(String? value) => setField<String>('bus_email', value);

  String? get reqType => getField<String>('req_type');
  set reqType(String? value) => setField<String>('req_type', value);

  String? get prefTime => getField<String>('pref_time');
  set prefTime(String? value) => setField<String>('pref_time', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  String? get userMob => getField<String>('user_mob');
  set userMob(String? value) => setField<String>('user_mob', value);

  String? get userAddress => getField<String>('user_address');
  set userAddress(String? value) => setField<String>('user_address', value);

  bool? get callBeforeVisit => getField<bool>('call_before_visit');
  set callBeforeVisit(bool? value) =>
      setField<bool>('call_before_visit', value);

  String? get userComment => getField<String>('user_comment');
  set userComment(String? value) => setField<String>('user_comment', value);

  String? get busComment => getField<String>('bus_comment');
  set busComment(String? value) => setField<String>('bus_comment', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get eta => getField<DateTime>('ETA');
  set eta(DateTime? value) => setField<DateTime>('ETA', value);

  bool? get userAlert => getField<bool>('user_alert');
  set userAlert(bool? value) => setField<bool>('user_alert', value);

  bool? get busAlert => getField<bool>('bus_alert');
  set busAlert(bool? value) => setField<bool>('bus_alert', value);

  String? get busName => getField<String>('bus_name');
  set busName(String? value) => setField<String>('bus_name', value);

  String? get busType => getField<String>('bus_type');
  set busType(String? value) => setField<String>('bus_type', value);
}
