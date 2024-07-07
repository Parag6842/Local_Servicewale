import '/components/user_srv_req_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'srv_req_list_widget.dart' show SrvReqListWidget;
import 'package:flutter/material.dart';

class SrvReqListModel extends FlutterFlowModel<SrvReqListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for user_srv_req_list component.
  late UserSrvReqListModel userSrvReqListModel;

  @override
  void initState(BuildContext context) {
    userSrvReqListModel = createModel(context, () => UserSrvReqListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    userSrvReqListModel.dispose();
  }
}
