import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bus_srv_list_block_widget.dart' show BusSrvListBlockWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class BusSrvListBlockModel extends FlutterFlowModel<BusSrvListBlockWidget> {
  ///  State fields for stateful widgets in this component.

  Completer<List<SrvOrdDetailsVRow>>? requestCompleter;

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
