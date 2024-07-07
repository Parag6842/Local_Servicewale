import '/flutter_flow/flutter_flow_util.dart';
import 'wb_ord_add_widget.dart' show WbOrdAddWidget;
import 'package:flutter/material.dart';

class WbOrdAddModel extends FlutterFlowModel<WbOrdAddWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for rate widget.
  FocusNode? rateFocusNode;
  TextEditingController? rateTextController;
  String? Function(BuildContext, String?)? rateTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rateFocusNode?.dispose();
    rateTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
