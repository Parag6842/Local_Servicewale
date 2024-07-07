import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'home_new_model.dart';
export 'home_new_model.dart';

class HomeNewWidget extends StatefulWidget {
  const HomeNewWidget({
    super.key,
    this.paramBusType,
  });

  final String? paramBusType;

  @override
  State<HomeNewWidget> createState() => _HomeNewWidgetState();
}

class _HomeNewWidgetState extends State<HomeNewWidget> {
  late HomeNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeNewModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          leading: FutureBuilder<List<LogUserRow>>(
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
              List<LogUserRow> rowLogUserRowList = snapshot.data!;
              final rowLogUserRow =
                  rowLogUserRowList.isNotEmpty ? rowLogUserRowList.first : null;
              return Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Builder(
                          builder: (context) {
                            if (rowLogUserRow?.userType == 'USER') {
                              return Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('user_profile_type');
                                  },
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                    child: Image.network(
                                      rowLogUserRow!.pic!,
                                      width: 50.0,
                                      height: 50.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('user_profile_type');
                                  },
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                    child: Image.network(
                                      rowLogUserRow!.busPic!,
                                      width: 50.0,
                                      height: 50.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          title: Container(
            width: 300.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('location');
                  },
                  child: Text(
                    'Local',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF7365F1),
                          fontSize: 25.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('icon');
                          },
                          child: Text(
                            'Servicewale',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF7062F3),
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                    if (1 == 2)
                      Text(
                        'v1',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                context.goNamedAuth('user_login', context.mounted);
              },
              child: Icon(
                Icons.power_settings_new,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 50.0,
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<List<LogUserRow>>(
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
              final columnLogUserRow = columnLogUserRowList.isNotEmpty
                  ? columnLogUserRowList.first
                  : null;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 350.0),
                      child: Wrap(
                        spacing: 0.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.spaceEvenly,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'wb_sup_list',
                                  queryParameters: {
                                    'busType': serializeParam(
                                      'Water Bottle',
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://tpfouzxmzzculpluprfg.supabase.co/storage/v1/object/public/flutterflow_bkt/profile_pic/1714294324892000.jpg',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'wb_sup_list',
                                  queryParameters: {
                                    'busType': serializeParam(
                                      'Flour',
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://tpfouzxmzzculpluprfg.supabase.co/storage/v1/object/public/flutterflow_bkt/bus_cat/floor_mill.jpeg',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'wb_sup_list',
                                  queryParameters: {
                                    'busType': serializeParam(
                                      'Milk Provider',
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://tpfouzxmzzculpluprfg.supabase.co/storage/v1/object/public/flutterflow_bkt/profile_pic/1714300390042000.jpeg',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 10.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'wb_sup_list',
                                    queryParameters: {
                                      'busType': serializeParam(
                                        'Iron Press',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://tpfouzxmzzculpluprfg.supabase.co/storage/v1/object/public/flutterflow_bkt/bus_cat/Iron_press.jpg',
                                    width: 100.0,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(),
                    child: Wrap(
                      spacing: 0.0,
                      runSpacing: 0.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        FutureBuilder<List<SrvReqAlertVRow>>(
                          future: SrvReqAlertVTable().queryRows(
                            queryFn: (q) => q
                                .eq(
                                  'to_user',
                                  currentUserEmail,
                                )
                                .eq(
                                  'alert_to_user_type',
                                  columnLogUserRow?.userType,
                                )
                                .order('param1'),
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
                            List<SrvReqAlertVRow> rowSrvReqAlertVRowList =
                                snapshot.data!;
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: List.generate(
                                    rowSrvReqAlertVRowList.length, (rowIndex) {
                                  final rowSrvReqAlertVRow =
                                      rowSrvReqAlertVRowList[rowIndex];
                                  return Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 20.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (columnLogUserRow
                                                          ?.userType ==
                                                      'USER') {
                                                    await SrvRequestTable()
                                                        .update(
                                                      data: {
                                                        'user_alert': true,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eq(
                                                        'id',
                                                        rowSrvReqAlertVRow
                                                            .param1,
                                                      ),
                                                    );
                                                  } else {
                                                    await SrvRequestTable()
                                                        .update(
                                                      data: {
                                                        'bus_alert': true,
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eq(
                                                        'id',
                                                        rowSrvReqAlertVRow
                                                            .param1,
                                                      ),
                                                    );
                                                  }

                                                  context.pushNamed(
                                                    'srv_req_dtl',
                                                    queryParameters: {
                                                      'paramReqID':
                                                          serializeParam(
                                                        rowSrvReqAlertVRow
                                                            .param1,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.arrow_circle_up_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                rowSrvReqAlertVRow.msg,
                                                '999',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
