import '../database.dart';

class SrvReqAlertVTable extends SupabaseTable<SrvReqAlertVRow> {
  @override
  String get tableName => 'srv_req_alert_v';

  @override
  SrvReqAlertVRow createRow(Map<String, dynamic> data) => SrvReqAlertVRow(data);
}

class SrvReqAlertVRow extends SupabaseDataRow {
  SrvReqAlertVRow(super.data);

  @override
  SupabaseTable get table => SrvReqAlertVTable();

  String? get alertType => getField<String>('alert_type');
  set alertType(String? value) => setField<String>('alert_type', value);

  String? get fromUser => getField<String>('from_user');
  set fromUser(String? value) => setField<String>('from_user', value);

  String? get toUser => getField<String>('to_user');
  set toUser(String? value) => setField<String>('to_user', value);

  int? get param1 => getField<int>('param1');
  set param1(int? value) => setField<int>('param1', value);

  String? get msg => getField<String>('msg');
  set msg(String? value) => setField<String>('msg', value);

  String? get fromUserName => getField<String>('from_user_name');
  set fromUserName(String? value) => setField<String>('from_user_name', value);

  String? get toUserName => getField<String>('to_user_name');
  set toUserName(String? value) => setField<String>('to_user_name', value);

  String? get alertToUserType => getField<String>('alert_to_user_type');
  set alertToUserType(String? value) =>
      setField<String>('alert_to_user_type', value);
}
