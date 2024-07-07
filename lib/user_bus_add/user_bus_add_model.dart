import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_bus_add_widget.dart' show UserBusAddWidget;
import 'package:flutter/material.dart';

class UserBusAddModel extends FlutterFlowModel<UserBusAddWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for bus_name widget.
  FocusNode? busNameFocusNode;
  TextEditingController? busNameTextController;
  String? Function(BuildContext, String?)? busNameTextControllerValidator;
  // State field(s) for bus_desc widget.
  FocusNode? busDescFocusNode;
  TextEditingController? busDescTextController;
  String? Function(BuildContext, String?)? busDescTextControllerValidator;
  // State field(s) for bus_mob widget.
  FocusNode? busMobFocusNode;
  TextEditingController? busMobTextController;
  String? Function(BuildContext, String?)? busMobTextControllerValidator;
  // State field(s) for Bus_type widget.
  String? busTypeValue;
  FormFieldController<String>? busTypeValueController;
  // State field(s) for bus_pin_code widget.
  FocusNode? busPinCodeFocusNode;
  TextEditingController? busPinCodeTextController;
  String? Function(BuildContext, String?)? busPinCodeTextControllerValidator;
  // State field(s) for bus_address widget.
  FocusNode? busAddressFocusNode;
  TextEditingController? busAddressTextController;
  String? Function(BuildContext, String?)? busAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    busNameFocusNode?.dispose();
    busNameTextController?.dispose();

    busDescFocusNode?.dispose();
    busDescTextController?.dispose();

    busMobFocusNode?.dispose();
    busMobTextController?.dispose();

    busPinCodeFocusNode?.dispose();
    busPinCodeTextController?.dispose();

    busAddressFocusNode?.dispose();
    busAddressTextController?.dispose();
  }
}
