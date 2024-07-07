import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bus_srv_req_list_block_widget.dart' show BusSrvReqListBlockWidget;
import 'package:flutter/material.dart';

class BusSrvReqListBlockModel
    extends FlutterFlowModel<BusSrvReqListBlockWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<SrvRequestRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
