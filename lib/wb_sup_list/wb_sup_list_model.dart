import '/flutter_flow/flutter_flow_util.dart';
import 'wb_sup_list_widget.dart' show WbSupListWidget;
import 'package:flutter/material.dart';

class WbSupListModel extends FlutterFlowModel<WbSupListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
