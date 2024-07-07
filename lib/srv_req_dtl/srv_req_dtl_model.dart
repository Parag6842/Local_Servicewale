import '/flutter_flow/flutter_flow_util.dart';
import 'srv_req_dtl_widget.dart' show SrvReqDtlWidget;
import 'package:flutter/material.dart';

class SrvReqDtlModel extends FlutterFlowModel<SrvReqDtlWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  DateTime? datePicked;
  // State field(s) for eta widget.
  FocusNode? etaFocusNode;
  TextEditingController? etaTextController;
  String? Function(BuildContext, String?)? etaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    etaFocusNode?.dispose();
    etaTextController?.dispose();
  }
}
