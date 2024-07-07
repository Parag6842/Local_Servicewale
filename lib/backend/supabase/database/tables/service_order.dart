import '../database.dart';

class ServiceOrderTable extends SupabaseTable<ServiceOrderRow> {
  @override
  String get tableName => 'service_order';

  @override
  ServiceOrderRow createRow(Map<String, dynamic> data) => ServiceOrderRow(data);
}

class ServiceOrderRow extends SupabaseDataRow {
  ServiceOrderRow(super.data);

  @override
  SupabaseTable get table => ServiceOrderTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

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

  DateTime? get oldEndDate => getField<DateTime>('old_end_date');
  set oldEndDate(DateTime? value) => setField<DateTime>('old_end_date', value);
}
