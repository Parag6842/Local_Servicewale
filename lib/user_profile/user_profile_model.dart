import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Fname widget.
  FocusNode? fnameFocusNode;
  TextEditingController? fnameTextController;
  String? Function(BuildContext, String?)? fnameTextControllerValidator;
  // State field(s) for Lname widget.
  FocusNode? lnameFocusNode;
  TextEditingController? lnameTextController;
  String? Function(BuildContext, String?)? lnameTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for mob widget.
  FocusNode? mobFocusNode;
  TextEditingController? mobTextController;
  String? Function(BuildContext, String?)? mobTextControllerValidator;
  // State field(s) for pin_code widget.
  FocusNode? pinCodeFocusNode;
  TextEditingController? pinCodeTextController;
  String? Function(BuildContext, String?)? pinCodeTextControllerValidator;
  Completer<List<PinCodeDetailsVRow>>? requestCompleter;
  // State field(s) for area_name widget.
  FocusNode? areaNameFocusNode;
  TextEditingController? areaNameTextController;
  String? Function(BuildContext, String?)? areaNameTextControllerValidator;
  // State field(s) for region widget.
  String? regionValue;
  FormFieldController<String>? regionValueController;
  // State field(s) for area widget.
  String? areaValue;
  FormFieldController<String>? areaValueController;
  // State field(s) for apartment_name widget.
  FocusNode? apartmentNameFocusNode;
  TextEditingController? apartmentNameTextController;
  String? Function(BuildContext, String?)? apartmentNameTextControllerValidator;
  // State field(s) for flatno widget.
  FocusNode? flatnoFocusNode;
  TextEditingController? flatnoTextController;
  String? Function(BuildContext, String?)? flatnoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    fnameFocusNode?.dispose();
    fnameTextController?.dispose();

    lnameFocusNode?.dispose();
    lnameTextController?.dispose();

    mobFocusNode?.dispose();
    mobTextController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeTextController?.dispose();

    areaNameFocusNode?.dispose();
    areaNameTextController?.dispose();

    apartmentNameFocusNode?.dispose();
    apartmentNameTextController?.dispose();

    flatnoFocusNode?.dispose();
    flatnoTextController?.dispose();
  }

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
