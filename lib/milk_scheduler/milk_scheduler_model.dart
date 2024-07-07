import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'milk_scheduler_widget.dart' show MilkSchedulerWidget;
import 'package:flutter/material.dart';

class MilkSchedulerModel extends FlutterFlowModel<MilkSchedulerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for daily widget.
  FormFieldController<List<String>>? dailyValueController;
  String? get dailyValue => dailyValueController?.value?.firstOrNull;
  set dailyValue(String? val) =>
      dailyValueController?.value = val != null ? [val] : [];
  // State field(s) for weekly widget.
  FormFieldController<List<String>>? weeklyValueController;
  String? get weeklyValue => weeklyValueController?.value?.firstOrNull;
  set weeklyValue(String? val) =>
      weeklyValueController?.value = val != null ? [val] : [];
  // State field(s) for mon widget.
  FormFieldController<List<String>>? monValueController;
  String? get monValue => monValueController?.value?.firstOrNull;
  set monValue(String? val) =>
      monValueController?.value = val != null ? [val] : [];
  // State field(s) for tue widget.
  FormFieldController<List<String>>? tueValueController;
  String? get tueValue => tueValueController?.value?.firstOrNull;
  set tueValue(String? val) =>
      tueValueController?.value = val != null ? [val] : [];
  // State field(s) for wed widget.
  FormFieldController<List<String>>? wedValueController;
  String? get wedValue => wedValueController?.value?.firstOrNull;
  set wedValue(String? val) =>
      wedValueController?.value = val != null ? [val] : [];
  // State field(s) for thu widget.
  FormFieldController<List<String>>? thuValueController;
  String? get thuValue => thuValueController?.value?.firstOrNull;
  set thuValue(String? val) =>
      thuValueController?.value = val != null ? [val] : [];
  // State field(s) for fri widget.
  FormFieldController<List<String>>? friValueController;
  String? get friValue => friValueController?.value?.firstOrNull;
  set friValue(String? val) =>
      friValueController?.value = val != null ? [val] : [];
  // State field(s) for sat widget.
  FormFieldController<List<String>>? satValueController;
  String? get satValue => satValueController?.value?.firstOrNull;
  set satValue(String? val) =>
      satValueController?.value = val != null ? [val] : [];
  // State field(s) for sun widget.
  FormFieldController<List<String>>? sunValueController;
  String? get sunValue => sunValueController?.value?.firstOrNull;
  set sunValue(String? val) =>
      sunValueController?.value = val != null ? [val] : [];
  // State field(s) for morning widget.
  FormFieldController<List<String>>? morningValueController;
  String? get morningValue => morningValueController?.value?.firstOrNull;
  set morningValue(String? val) =>
      morningValueController?.value = val != null ? [val] : [];
  // State field(s) for afternoon widget.
  FormFieldController<List<String>>? afternoonValueController;
  String? get afternoonValue => afternoonValueController?.value?.firstOrNull;
  set afternoonValue(String? val) =>
      afternoonValueController?.value = val != null ? [val] : [];
  // State field(s) for evening widget.
  FormFieldController<List<String>>? eveningValueController;
  String? get eveningValue => eveningValueController?.value?.firstOrNull;
  set eveningValue(String? val) =>
      eveningValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }
}
