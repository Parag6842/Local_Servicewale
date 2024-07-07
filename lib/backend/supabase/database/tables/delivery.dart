import '../database.dart';

class DeliveryTable extends SupabaseTable<DeliveryRow> {
  @override
  String get tableName => 'delivery';

  @override
  DeliveryRow createRow(Map<String, dynamic> data) => DeliveryRow(data);
}

class DeliveryRow extends SupabaseDataRow {
  DeliveryRow(super.data);

  @override
  SupabaseTable get table => DeliveryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get ordId => getField<int>('ord_id');
  set ordId(int? value) => setField<int>('ord_id', value);

  DateTime? get scheduleDate => getField<DateTime>('schedule_date');
  set scheduleDate(DateTime? value) =>
      setField<DateTime>('schedule_date', value);

  String? get scheduleTime => getField<String>('schedule_time');
  set scheduleTime(String? value) => setField<String>('schedule_time', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
