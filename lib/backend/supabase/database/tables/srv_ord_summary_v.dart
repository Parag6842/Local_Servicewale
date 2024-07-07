import '../database.dart';

class SrvOrdSummaryVTable extends SupabaseTable<SrvOrdSummaryVRow> {
  @override
  String get tableName => 'srv_ord_summary_v';

  @override
  SrvOrdSummaryVRow createRow(Map<String, dynamic> data) =>
      SrvOrdSummaryVRow(data);
}

class SrvOrdSummaryVRow extends SupabaseDataRow {
  SrvOrdSummaryVRow(super.data);

  @override
  SupabaseTable get table => SrvOrdSummaryVTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);

  int? get rate => getField<int>('rate');
  set rate(int? value) => setField<int>('rate', value);

  int? get dayTimes => getField<int>('day_times');
  set dayTimes(int? value) => setField<int>('day_times', value);

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
}
