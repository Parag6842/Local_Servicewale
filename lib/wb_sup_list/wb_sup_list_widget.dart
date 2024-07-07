import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'wb_sup_list_model.dart';
export 'wb_sup_list_model.dart';

class WbSupListWidget extends StatefulWidget {
  const WbSupListWidget({
    super.key,
    required this.busType,
  });

  final String? busType;

  @override
  State<WbSupListWidget> createState() => _WbSupListWidgetState();
}

class _WbSupListWidgetState extends State<WbSupListWidget>
    with TickerProviderStateMixin {
  late WbSupListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WbSupListModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          leading: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
            ),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pop();
              },
              child: const Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF57636C),
                size: 24.0,
              ),
            ),
          ),
          title: Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
            ),
            child: Text(
              'Business List',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 30.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ),
          actions: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondary,
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('home_new');
                },
                child: Icon(
                  Icons.home,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 50.0,
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                  child: FutureBuilder<List<LogUserVRow>>(
                    future: LogUserVTable().queryRows(
                      queryFn: (q) => q.eq(
                        'bus_type',
                        widget.busType,
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
                      List<LogUserVRow> listViewLogUserVRowList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewLogUserVRowList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewLogUserVRow =
                              listViewLogUserVRowList[listViewIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 1.0),
                            child: Container(
                              width: 100.0,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 0.0,
                                    color: Color(0xFFE0E3E7),
                                    offset: Offset(
                                      0.0,
                                      1.0,
                                    ),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                      child: Image.network(
                                        listViewLogUserVRow.busPic!,
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                listViewLogUserVRow.busName,
                                                '999',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w800,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                listViewLogUserVRow.busDesc,
                                                '999',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                listViewLogUserVRow.busAddress,
                                                '999',
                                              ),
                                              maxLines: 3,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: const Color(0xFFF1F4F8),
                                      elevation: 1.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (widget.busType ==
                                                'Iron Press') {
                                              context.pushNamed(
                                                'srv_req_add',
                                                queryParameters: {
                                                  'paramBusEmail':
                                                      serializeParam(
                                                    listViewLogUserVRow.email,
                                                    ParamType.String,
                                                  ),
                                                  'paramBusType':
                                                      serializeParam(
                                                    widget.busType,
                                                    ParamType.String,
                                                  ),
                                                  'paragBusName':
                                                      serializeParam(
                                                    listViewLogUserVRow.busName,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else {
                                              context.pushNamed(
                                                'wb_prd_list',
                                                queryParameters: {
                                                  'busEmail': serializeParam(
                                                    listViewLogUserVRow.email,
                                                    ParamType.String,
                                                  ),
                                                  'busType': serializeParam(
                                                    widget.busType,
                                                    ParamType.String,
                                                  ),
                                                  'paramBusMob': serializeParam(
                                                    listViewLogUserVRow.callBus,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            }
                                          },
                                          child: const Icon(
                                            Icons.keyboard_arrow_right_rounded,
                                            color: Color(0xFF57636C),
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
