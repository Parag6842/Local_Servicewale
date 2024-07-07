import '/flutter_flow/flutter_flow_util.dart';
import 'home_new_widget.dart' show HomeNewWidget;
import 'package:flutter/material.dart';

class HomeNewModel extends FlutterFlowModel<HomeNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
