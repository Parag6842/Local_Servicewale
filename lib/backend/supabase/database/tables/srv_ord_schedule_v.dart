import '../database.dart';

class SrvOrdScheduleVTable extends SupabaseTable<SrvOrdScheduleVRow> {
  @override
  String get tableName => 'srv_ord_schedule_v';

  @override
  SrvOrdScheduleVRow createRow(Map<String, dynamic> data) =>
      SrvOrdScheduleVRow(data);
}

class SrvOrdScheduleVRow extends SupabaseDataRow {
  SrvOrdScheduleVRow(super.data);

  @override
  SupabaseTable get table => SrvOrdScheduleVTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

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

  String? get mob => getField<String>('mob');
  set mob(String? value) => setField<String>('mob', value);

  String? get prdName => getField<String>('prd_name');
  set prdName(String? value) => setField<String>('prd_name', value);

  String? get busEmail => getField<String>('bus_email');
  set busEmail(String? value) => setField<String>('bus_email', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String? get freq => getField<String>('freq');
  set freq(String? value) => setField<String>('freq', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);

  int? get rate => getField<int>('rate');
  set rate(int? value) => setField<int>('rate', value);

  DateTime? get dt => getField<DateTime>('dt');
  set dt(DateTime? value) => setField<DateTime>('dt', value);

  String? get deliveryDate => getField<String>('delivery_date');
  set deliveryDate(String? value) => setField<String>('delivery_date', value);

  String? get dayTime => getField<String>('day_time');
  set dayTime(String? value) => setField<String>('day_time', value);

  int? get dayNo => getField<int>('day_no');
  set dayNo(int? value) => setField<int>('day_no', value);

  int? get exDayNo => getField<int>('ex_day_no');
  set exDayNo(int? value) => setField<int>('ex_day_no', value);

  int? get nrDayNo => getField<int>('nr_day_no');
  set nrDayNo(int? value) => setField<int>('nr_day_no', value);

  int? get ndelDayNo => getField<int>('ndel_day_no');
  set ndelDayNo(int? value) => setField<int>('ndel_day_no', value);

  int? get delDayNo => getField<int>('del_day_no');
  set delDayNo(int? value) => setField<int>('del_day_no', value);

  String? get deliverySchedule => getField<String>('delivery_schedule');
  set deliverySchedule(String? value) =>
      setField<String>('delivery_schedule', value);

  int? get dayTimeOrder => getField<int>('day_time_order');
  set dayTimeOrder(int? value) => setField<int>('day_time_order', value);

  String? get sysDays => getField<String>('sys_days');
  set sysDays(String? value) => setField<String>('sys_days', value);
}
