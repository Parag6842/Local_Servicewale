import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'srv_del_schedule_widget.dart' show SrvDelScheduleWidget;
import 'package:flutter/material.dart';

class SrvDelScheduleModel extends FlutterFlowModel<SrvDelScheduleWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ord_days widget.
  FormFieldController<List<String>>? ordDaysValueController;
  String? get ordDaysValue => ordDaysValueController?.value?.firstOrNull;
  set ordDaysValue(String? val) =>
      ordDaysValueController?.value = val != null ? [val] : [];
  Completer<List<SrvOrdScheduleVRow>>? requestCompleter;
  // State field(s) for Ord_time widget.
  FormFieldController<List<String>>? ordTimeValueController;
  String? get ordTimeValue => ordTimeValueController?.value?.firstOrNull;
  set ordTimeValue(String? val) =>
      ordTimeValueController?.value = val != null ? [val] : [];
  // State field(s) for ord_status widget.
  FormFieldController<List<String>>? ordStatusValueController;
  String? get ordStatusValue => ordStatusValueController?.value?.firstOrNull;
  set ordStatusValue(String? val) =>
      ordStatusValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
