import '../database.dart';

class SrvOrdDetailsVTable extends SupabaseTable<SrvOrdDetailsVRow> {
  @override
  String get tableName => 'srv_ord_details_v';

  @override
  SrvOrdDetailsVRow createRow(Map<String, dynamic> data) =>
      SrvOrdDetailsVRow(data);
}

class SrvOrdDetailsVRow extends SupabaseDataRow {
  SrvOrdDetailsVRow(super.data);

  @override
  SupabaseTable get table => SrvOrdDetailsVTable();

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  String? get userPic => getField<String>('user_pic');
  set userPic(String? value) => setField<String>('user_pic', value);

  String? get userAddress => getField<String>('user_address');
  set userAddress(String? value) => setField<String>('user_address', value);

  String? get userPinCode => getField<String>('user_pin_code');
  set userPinCode(String? value) => setField<String>('user_pin_code', value);

  String? get userBuilding => getField<String>('user_building');
  set userBuilding(String? value) => setField<String>('user_building', value);

  String? get busName => getField<String>('bus_name');
  set busName(String? value) => setField<String>('bus_name', value);

  String? get busPic => getField<String>('bus_pic');
  set busPic(String? value) => setField<String>('bus_pic', value);

  String? get prdName => getField<String>('prd_name');
  set prdName(String? value) => setField<String>('prd_name', value);

  String? get prdPic => getField<String>('prd_pic');
  set prdPic(String? value) => setField<String>('prd_pic', value);

  String? get scheduleDay => getField<String>('schedule_day');
  set scheduleDay(String? value) => setField<String>('schedule_day', value);

  String? get scheduleTime => getField<String>('schedule_time');
  set scheduleTime(String? value) => setField<String>('schedule_time', value);

  String? get stDt => getField<String>('st_dt');
  set stDt(String? value) => setField<String>('st_dt', value);

  String? get endDt => getField<String>('end_dt');
  set endDt(String? value) => setField<String>('end_dt', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get prdCat => getField<String>('prd_cat');
  set prdCat(String? value) => setField<String>('prd_cat', value);

  int? get prdId => getField<int>('prd_id');
  set prdId(int? value) => setField<int>('prd_id', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String? get freq => getField<String>('freq');
  set freq(String? value) => setField<String>('freq', value);

  String? get isMon => getField<String>('is_mon');
  set isMon(String? value) => setField<String>('is_mon', value);

  String? get isTue => getField<String>('is_tue');
  set isTue(String? value) => setField<String>('is_tue', value);

  String? get isWed => getField<String>('is_wed');
  set isWed(String? value) => setField<String>('is_wed', value);

  String? get isThu => getField<String>('is_thu');
  set isThu(String? value) => setField<String>('is_thu', value);

  String? get isFri => getField<String>('is_fri');
  set isFri(String? value) => setField<String>('is_fri', value);

  String? get isSat => getField<String>('is_sat');
  set isSat(String? value) => setField<String>('is_sat', value);

  String? get isSun => getField<String>('is_sun');
  set isSun(String? value) => setField<String>('is_sun', value);

  String? get isMorning => getField<String>('is_morning');
  set isMorning(String? value) => setField<String>('is_morning', value);

  String? get isEvening => getField<String>('is_evening');
  set isEvening(String? value) => setField<String>('is_evening', value);

  String? get isAfternoon => getField<String>('is_afternoon');
  set isAfternoon(String? value) => setField<String>('is_afternoon', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  String? get busEmail => getField<String>('bus_email');
  set busEmail(String? value) => setField<String>('bus_email', value);

  int? get prdRate => getField<int>('prd_rate');
  set prdRate(int? value) => setField<int>('prd_rate', value);

  int? get dayTimes => getField<int>('day_times');
  set dayTimes(int? value) => setField<int>('day_times', value);

  int? get dayNo => getField<int>('day_no');
  set dayNo(int? value) => setField<int>('day_no', value);

  int? get exDayNo => getField<int>('ex_day_no');
  set exDayNo(int? value) => setField<int>('ex_day_no', value);

  int? get nrDayNo => getField<int>('nr_day_no');
  set nrDayNo(int? value) => setField<int>('nr_day_no', value);

  int? get totalQty => getField<int>('total_qty');
  set totalQty(int? value) => setField<int>('total_qty', value);

  int? get totalPrice => getField<int>('total_price');
  set totalPrice(int? value) => setField<int>('total_price', value);
}
