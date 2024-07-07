import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bus_srv_req_list_block_model.dart';
export 'bus_srv_req_list_block_model.dart';

class BusSrvReqListBlockWidget extends StatefulWidget {
  const BusSrvReqListBlockWidget({super.key});

  @override
  State<BusSrvReqListBlockWidget> createState() =>
      _BusSrvReqListBlockWidgetState();
}

class _BusSrvReqListBlockWidgetState extends State<BusSrvReqListBlockWidget> {
  late BusSrvReqListBlockModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BusSrvReqListBlockModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<LogUserRow>>(
      future: LogUserTable().querySingleRow(
        queryFn: (q) => q.eq(
          'email',
          currentUserEmail,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<LogUserRow> columnLogUserRowList = snapshot.data!;
        final columnLogUserRow =
            columnLogUserRowList.isNotEmpty ? columnLogUserRowList.first : null;
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: FutureBuilder<List<SrvRequestRow>>(
                future: SrvRequestTable().queryRows(
                  queryFn: (q) => q
                      .eq(
                        'bus_email',
                        currentUserEmail,
                      )
                      .order('created_at'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<SrvRequestRow> requestListSrvRequestRowList =
                      snapshot.data!;
                  return Container(
                    decoration: const BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        final srvReqList =
                            requestListSrvRequestRowList.toList();
                        return FlutterFlowDataTable<SrvRequestRow>(
                          controller: _model.paginatedDataTableController,
                          data: srvReqList,
                          columnsBuilder: (onSortChanged) => [
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Request ID',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Request type',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Status',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                          dataRowBuilder: (srvReqListItem, srvReqListIndex,
                                  selected, onSelectChanged) =>
                              DataRow(
                            color: WidgetStateProperty.all(
                              srvReqListIndex % 2 == 0
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                            ),
                            cells: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'srv_req_dtl',
                                    queryParameters: {
                                      'paramReqID': serializeParam(
                                        valueOrDefault<int>(
                                          srvReqListItem.id,
                                          999,
                                        ),
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Text(
                                  valueOrDefault<String>(
                                    srvReqListItem.id.toString(),
                                    '999',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 25.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  srvReqListItem.reqType,
                                  '999',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  srvReqListItem.status,
                                  '999',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].map((c) => DataCell(c)).toList(),
                          ),
                          paginated: true,
                          selectable: false,
                          hidePaginator: false,
                          showFirstLastButtons: false,
                          headingRowHeight: 56.0,
                          dataRowHeight: 48.0,
                          columnSpacing: 20.0,
                          headingRowColor:
                              FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.circular(8.0),
                          addHorizontalDivider: true,
                          addTopAndBottomDivider: false,
                          hideDefaultHorizontalDivider: true,
                          horizontalDividerColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          horizontalDividerThickness: 1.0,
                          addVerticalDivider: false,
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
