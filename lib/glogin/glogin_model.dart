import '/flutter_flow/flutter_flow_util.dart';
import 'glogin_widget.dart' show GloginWidget;
import 'package:flutter/material.dart';

class GloginModel extends FlutterFlowModel<GloginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
