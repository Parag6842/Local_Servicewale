import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/bus_srv_list_block_widget.dart';
import '/components/bus_srv_req_list_block_widget.dart';
import '/components/home_ord_bus_view_block_widget.dart';
import '/components/srv_del_schedule_widget.dart';
import '/components/srv_ord_list_block_widget.dart';
import '/components/user_srv_req_list_widget.dart';
import '/components/user_view_block_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'orders_model.dart';
export 'orders_model.dart';

class OrdersWidget extends StatefulWidget {
  const OrdersWidget({
    super.key,
    this.paramBusType,
  });

  final String? paramBusType;

  @override
  State<OrdersWidget> createState() => _OrdersWidgetState();
}

class _OrdersWidgetState extends State<OrdersWidget> {
  late OrdersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdersModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
            height: 50.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Local Servicewale',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF7264F9),
                          fontSize: 25.0,
                          letterSpacing: 0.0,
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
              child: const Icon(
                Icons.power_settings_new,
                color: Color(0xFF786BF3),
                size: 50.0,
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            height: 700.0,
            decoration: const BoxDecoration(),
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
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 5.0),
                                child: FlutterFlowChoiceChips(
                                  options: const [
                                    ChipData('Water Bottle'),
                                    ChipData('Milk Provider'),
                                    ChipData('Iron Press')
                                  ],
                                  onChanged: (val) => setState(() => _model
                                      .ordBusTypeValue = val?.firstOrNull),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 4.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0xFFBFC3C5),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  initialized: _model.ordBusTypeValue != null,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.ordBusTypeValueController ??=
                                          FormFieldController<List<String>>(
                                    [columnLogUserRow!.busType!],
                                  ),
                                  wrapped: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            if ((_model.ordBusTypeValue == 'Milk Provider') &&
                                (columnLogUserRow?.userType == 'BUS'))
                              Expanded(
                                child: FlutterFlowChoiceChips(
                                  options: const [
                                    ChipData('List'),
                                    ChipData('Delivery')
                                  ],
                                  onChanged: (val) => setState(() => _model
                                      .ordListTypeValue = val?.firstOrNull),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 4.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  initialized: _model.ordListTypeValue != null,
                                  alignment: WrapAlignment.spaceEvenly,
                                  controller:
                                      _model.ordListTypeValueController ??=
                                          FormFieldController<List<String>>(
                                    ['List'],
                                  ),
                                  wrapped: true,
                                ),
                              ),
                          ],
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          if ((columnLogUserRow?.userType == 'USER') &&
                              (_model.ordBusTypeValue == 'Water Bottle')) {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.userViewBlockModel,
                                  updateCallback: () => setState(() {}),
                                  child: const UserViewBlockWidget(),
                                ),
                              ],
                            );
                          } else if ((columnLogUserRow?.userType == 'USER') &&
                              (_model.ordBusTypeValue == 'Milk Provider')) {
                            return Container(
                              height: 800.0,
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.srvOrdListBlockModel,
                                updateCallback: () => setState(() {}),
                                child: const SrvOrdListBlockWidget(),
                              ),
                            );
                          } else if ((columnLogUserRow?.userType == 'BUS') &&
                              (_model.ordBusTypeValue == 'Milk Provider') &&
                              (_model.ordListTypeValue == 'List')) {
                            return Container(
                              height: 800.0,
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.busSrvListBlockModel,
                                updateCallback: () => setState(() {}),
                                child: const BusSrvListBlockWidget(
                                  parameter1: 'ABC',
                                ),
                              ),
                            );
                          } else if ((columnLogUserRow?.userType == 'USER') &&
                              (_model.ordBusTypeValue == 'Iron Press')) {
                            return Container(
                              height: 650.0,
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.userSrvReqListModel,
                                updateCallback: () => setState(() {}),
                                child: const UserSrvReqListWidget(),
                              ),
                            );
                          } else if ((columnLogUserRow?.userType == 'BUS') &&
                              (_model.ordBusTypeValue == 'Iron Press')) {
                            return Container(
                              height: 650.0,
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.busSrvReqListBlockModel,
                                updateCallback: () => setState(() {}),
                                child: const BusSrvReqListBlockWidget(),
                              ),
                            );
                          } else if ((columnLogUserRow?.userType == 'BUS') &&
                              (_model.ordListTypeValue == 'Delivery') &&
                              (_model.ordBusTypeValue == 'Milk Provider')) {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: 700.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: wrapWithModel(
                                    model: _model.srvDelScheduleModel,
                                    updateCallback: () => setState(() {}),
                                    child: const SrvDelScheduleWidget(),
                                  ),
                                ),
                              ],
                            );
                          } else if ((columnLogUserRow?.userType == 'BUS') &&
                              (_model.ordBusTypeValue == 'Water Bottle')) {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.homeOrdBusViewBlockModel,
                                  updateCallback: () => setState(() {}),
                                  child: const HomeOrdBusViewBlockWidget(),
                                ),
                              ],
                            );
                          } else {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    columnLogUserRow?.userType,
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
                                    _model.ordBusTypeValue,
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
                                  'No Data found',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            );
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
