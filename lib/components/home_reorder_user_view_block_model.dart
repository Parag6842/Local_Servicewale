import '/flutter_flow/flutter_flow_util.dart';
import 'home_reorder_user_view_block_widget.dart'
    show HomeReorderUserViewBlockWidget;
import 'package:flutter/material.dart';

class HomeReorderUserViewBlockModel
    extends FlutterFlowModel<HomeReorderUserViewBlockWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for rate widget.
  FocusNode? rateFocusNode;
  TextEditingController? rateTextController;
  String? Function(BuildContext, String?)? rateTextControllerValidator;
  // State field(s) for Quantity widget.
  int? quantityValue;
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
