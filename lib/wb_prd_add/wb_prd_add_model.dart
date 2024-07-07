import '/flutter_flow/flutter_flow_util.dart';
import 'wb_prd_add_widget.dart' show WbPrdAddWidget;
import 'package:flutter/material.dart';

class WbPrdAddModel extends FlutterFlowModel<WbPrdAddWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for short_desc widget.
  FocusNode? shortDescFocusNode;
  TextEditingController? shortDescTextController;
  String? Function(BuildContext, String?)? shortDescTextControllerValidator;
  // State field(s) for rate widget.
  FocusNode? rateFocusNode;
  TextEditingController? rateTextController;
  String? Function(BuildContext, String?)? rateTextControllerValidator;
  // State field(s) for bus_type widget.
  FocusNode? busTypeFocusNode;
  TextEditingController? busTypeTextController;
  String? Function(BuildContext, String?)? busTypeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    shortDescFocusNode?.dispose();
    shortDescTextController?.dispose();

    rateFocusNode?.dispose();
    rateTextController?.dispose();

    busTypeFocusNode?.dispose();
    busTypeTextController?.dispose();
  }
}
