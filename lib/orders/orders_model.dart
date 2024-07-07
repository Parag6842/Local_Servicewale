import '/components/bus_srv_list_block_widget.dart';
import '/components/bus_srv_req_list_block_widget.dart';
import '/components/home_ord_bus_view_block_widget.dart';
import '/components/srv_del_schedule_widget.dart';
import '/components/srv_ord_list_block_widget.dart';
import '/components/user_srv_req_list_widget.dart';
import '/components/user_view_block_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'orders_widget.dart' show OrdersWidget;
import 'package:flutter/material.dart';

class OrdersModel extends FlutterFlowModel<OrdersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ord_bus_type widget.
  FormFieldController<List<String>>? ordBusTypeValueController;
  String? get ordBusTypeValue => ordBusTypeValueController?.value?.firstOrNull;
  set ordBusTypeValue(String? val) =>
      ordBusTypeValueController?.value = val != null ? [val] : [];
  // State field(s) for ord_list_type widget.
  FormFieldController<List<String>>? ordListTypeValueController;
  String? get ordListTypeValue =>
      ordListTypeValueController?.value?.firstOrNull;
  set ordListTypeValue(String? val) =>
      ordListTypeValueController?.value = val != null ? [val] : [];
  // Model for user_view_block component.
  late UserViewBlockModel userViewBlockModel;
  // Model for srv_ord_list_block component.
  late SrvOrdListBlockModel srvOrdListBlockModel;
  // Model for bus_srv_list_block component.
  late BusSrvListBlockModel busSrvListBlockModel;
  // Model for user_srv_req_list component.
  late UserSrvReqListModel userSrvReqListModel;
  // Model for bus_srv_req_list_block component.
  late BusSrvReqListBlockModel busSrvReqListBlockModel;
  // Model for srv_del_schedule component.
  late SrvDelScheduleModel srvDelScheduleModel;
  // Model for home_ord_bus_view_block component.
  late HomeOrdBusViewBlockModel homeOrdBusViewBlockModel;

  @override
  void initState(BuildContext context) {
    userViewBlockModel = createModel(context, () => UserViewBlockModel());
    srvOrdListBlockModel = createModel(context, () => SrvOrdListBlockModel());
    busSrvListBlockModel = createModel(context, () => BusSrvListBlockModel());
    userSrvReqListModel = createModel(context, () => UserSrvReqListModel());
    busSrvReqListBlockModel =
        createModel(context, () => BusSrvReqListBlockModel());
    srvDelScheduleModel = createModel(context, () => SrvDelScheduleModel());
    homeOrdBusViewBlockModel =
        createModel(context, () => HomeOrdBusViewBlockModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    userViewBlockModel.dispose();
    srvOrdListBlockModel.dispose();
    busSrvListBlockModel.dispose();
    userSrvReqListModel.dispose();
    busSrvReqListBlockModel.dispose();
    srvDelScheduleModel.dispose();
    homeOrdBusViewBlockModel.dispose();
  }
}
