import '/flutter_flow/flutter_flow_util.dart';
import 'wb_prd_list_widget.dart' show WbPrdListWidget;
import 'package:flutter/material.dart';

class WbPrdListModel extends FlutterFlowModel<WbPrdListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
