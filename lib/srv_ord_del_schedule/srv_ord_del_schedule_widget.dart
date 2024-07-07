import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'srv_ord_del_schedule_model.dart';
export 'srv_ord_del_schedule_model.dart';

class SrvOrdDelScheduleWidget extends StatefulWidget {
  const SrvOrdDelScheduleWidget({
    super.key,
    required this.paramOrdID,
  });

  final int? paramOrdID;

  @override
  State<SrvOrdDelScheduleWidget> createState() =>
      _SrvOrdDelScheduleWidgetState();
}

class _SrvOrdDelScheduleWidgetState extends State<SrvOrdDelScheduleWidget> {
  late SrvOrdDelScheduleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SrvOrdDelScheduleModel());
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
          leading: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 50.0,
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
            ],
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Delivery Details',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 20.0,
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                    child: Container(
                      width: 350.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Order No# ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  widget.paramOrdID?.toString(),
                                  '999',
                                ),
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                FutureBuilder<List<SrvOrdDetailsVRow>>(
                  future: SrvOrdDetailsVTable().querySingleRow(
                    queryFn: (q) => q.eq(
                      'id',
                      widget.paramOrdID,
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
                    List<SrvOrdDetailsVRow> containerSrvOrdDetailsVRowList =
                        snapshot.data!;
                    final containerSrvOrdDetailsVRow =
                        containerSrvOrdDetailsVRowList.isNotEmpty
                            ? containerSrvOrdDetailsVRowList.first
                            : null;
                    return Container(
                      width: double.infinity,
                      height: 160.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 5.0, 0.0, 10.0),
                              child: Container(
                                width: double.infinity,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Order Summary',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Service Days : ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    containerSrvOrdDetailsVRow?.dayNo
                                        ?.toString(),
                                    '999',
                                  ),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Not Received Days',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    containerSrvOrdDetailsVRow?.nrDayNo
                                        ?.toString(),
                                    '999',
                                  ),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Hold Delivery Days : ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    containerSrvOrdDetailsVRow?.exDayNo
                                        ?.toString(),
                                    '999',
                                  ),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Times per Day : ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    containerSrvOrdDetailsVRow?.dayTimes
                                        ?.toString(),
                                    '999',
                                  ),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Total QTY : ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    containerSrvOrdDetailsVRow?.totalQty
                                        ?.toString(),
                                    '999',
                                  ),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Total Price : ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    containerSrvOrdDetailsVRow?.totalPrice
                                        ?.toString(),
                                    '999',
                                  ),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            FutureBuilder<List<LogUserRow>>(
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
                List<LogUserRow> loginDetailsLogUserRowList = snapshot.data!;
                final loginDetailsLogUserRow =
                    loginDetailsLogUserRowList.isNotEmpty
                        ? loginDetailsLogUserRowList.first
                        : null;
                return Container(
                  decoration: const BoxDecoration(),
                  child: FutureBuilder<List<SrvOrdScheduleVRow>>(
                    future: (_model.requestCompleter ??=
                            Completer<List<SrvOrdScheduleVRow>>()
                              ..complete(SrvOrdScheduleVTable().queryRows(
                                queryFn: (q) => q.eq(
                                  'id',
                                  widget.paramOrdID,
                                ),
                              )))
                        .future,
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<SrvOrdScheduleVRow>
                          deliveryDetailsSrvOrdScheduleVRowList =
                          snapshot.data!;
                      return Container(
                        height: 500.0,
                        decoration: const BoxDecoration(),
                        child: Builder(
                          builder: (context) {
                            final ordDelList =
                                deliveryDetailsSrvOrdScheduleVRowList.toList();
                            return FlutterFlowDataTable<SrvOrdScheduleVRow>(
                              controller: _model.paginatedDataTableController,
                              data: ordDelList,
                              columnsBuilder: (onSortChanged) => [
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Delivery Date',
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
                                      'Delivery Time',
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
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Action',
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
                              dataRowBuilder: (ordDelListItem, ordDelListIndex,
                                      selected, onSelectChanged) =>
                                  DataRow(
                                color: WidgetStateProperty.all(
                                  ordDelListIndex % 2 == 0
                                      ? FlutterFlowTheme.of(context)
                                          .secondaryBackground
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                ),
                                cells: [
                                  Text(
                                    valueOrDefault<String>(
                                      ordDelListItem.deliveryDate,
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
                                      ordDelListItem.dayTime,
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
                                      ordDelListItem.deliverySchedule,
                                      '999',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if ((ordDelListItem.deliverySchedule ==
                                              'Schedule') &&
                                          (ordDelListItem.dt! >
                                              getCurrentTimestamp) &&
                                          (loginDetailsLogUserRow?.userType ==
                                              'USER')) {
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await DeliveryTable().insert({
                                              'ord_id': widget.paramOrdID,
                                              'schedule_date':
                                                  supaSerialize<DateTime>(
                                                      ordDelListItem.dt),
                                              'schedule_time':
                                                  valueOrDefault<String>(
                                                ordDelListItem.dayTime,
                                                '999',
                                              ),
                                              'status': 'Hold',
                                            });
                                            setState(() =>
                                                _model.requestCompleter = null);
                                            await _model
                                                .waitForRequestCompleted();
                                          },
                                          child: Icon(
                                            Icons.pause_circle_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 30.0,
                                          ),
                                        );
                                      } else if ((ordDelListItem
                                                  .deliverySchedule ==
                                              'Schedule') &&
                                          (loginDetailsLogUserRow?.userType ==
                                              'USER') &&
                                          (ordDelListItem.dt! <
                                              getCurrentTimestamp)) {
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await DeliveryTable().insert({
                                              'ord_id': widget.paramOrdID,
                                              'schedule_date':
                                                  supaSerialize<DateTime>(
                                                      ordDelListItem.dt),
                                              'schedule_time':
                                                  valueOrDefault<String>(
                                                ordDelListItem.dayTime,
                                                '999',
                                              ),
                                              'status': 'Not Received',
                                            });
                                            setState(() =>
                                                _model.requestCompleter = null);
                                            await _model
                                                .waitForRequestCompleted();
                                          },
                                          child: Icon(
                                            Icons.cancel_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 30.0,
                                          ),
                                        );
                                      } else if ((ordDelListItem
                                                  .deliverySchedule ==
                                              'Schedule') &&
                                          (loginDetailsLogUserRow?.userType ==
                                              'BUS')) {
                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await DeliveryTable().insert({
                                                    'ord_id': widget.paramOrdID,
                                                    'schedule_date':
                                                        supaSerialize<DateTime>(
                                                            ordDelListItem.dt),
                                                    'schedule_time':
                                                        valueOrDefault<String>(
                                                      ordDelListItem.dayTime,
                                                      '999',
                                                    ),
                                                    'status': 'Delivered',
                                                  });
                                                  setState(() => _model
                                                      .requestCompleter = null);
                                                  await _model
                                                      .waitForRequestCompleted();
                                                },
                                                child: Icon(
                                                  Icons.check_box,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await DeliveryTable().insert({
                                                  'ord_id': widget.paramOrdID,
                                                  'schedule_date':
                                                      supaSerialize<DateTime>(
                                                          ordDelListItem.dt),
                                                  'schedule_time':
                                                      valueOrDefault<String>(
                                                    ordDelListItem.dayTime,
                                                    '999',
                                                  ),
                                                  'status': 'Not Delivered',
                                                });
                                                setState(() => _model
                                                    .requestCompleter = null);
                                                await _model
                                                    .waitForRequestCompleted();
                                              },
                                              child: Icon(
                                                Icons.cancel_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 30.0,
                                              ),
                                            ),
                                          ],
                                        );
                                      } else if ((ordDelListItem
                                                  .deliverySchedule ==
                                              'Not Received') &&
                                          (loginDetailsLogUserRow?.userType ==
                                              'BUS')) {
                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await DeliveryTable().update(
                                                    data: {
                                                      'status': 'Delivered',
                                                    },
                                                    matchingRows: (rows) => rows
                                                        .eq(
                                                          'ord_id',
                                                          widget.paramOrdID,
                                                        )
                                                        .eq(
                                                          'schedule_date',
                                                          supaSerialize<
                                                                  DateTime>(
                                                              ordDelListItem
                                                                  .dt),
                                                        )
                                                        .eq(
                                                          'schedule_time',
                                                          valueOrDefault<
                                                              String>(
                                                            ordDelListItem
                                                                .dayTime,
                                                            '999',
                                                          ),
                                                        ),
                                                  );
                                                  setState(() => _model
                                                      .requestCompleter = null);
                                                  await _model
                                                      .waitForRequestCompleted();
                                                },
                                                child: Icon(
                                                  Icons.check_box,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await DeliveryTable().update(
                                                  data: {
                                                    'status': 'Not Delivered',
                                                  },
                                                  matchingRows: (rows) => rows
                                                      .eq(
                                                        'ord_id',
                                                        widget.paramOrdID,
                                                      )
                                                      .eq(
                                                        'schedule_date',
                                                        supaSerialize<DateTime>(
                                                            ordDelListItem.dt),
                                                      )
                                                      .eq(
                                                        'schedule_time',
                                                        valueOrDefault<String>(
                                                          ordDelListItem
                                                              .dayTime,
                                                          '999',
                                                        ),
                                                      ),
                                                );
                                                setState(() => _model
                                                    .requestCompleter = null);
                                                await _model
                                                    .waitForRequestCompleted();
                                              },
                                              child: Icon(
                                                Icons.cancel_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 30.0,
                                              ),
                                            ),
                                          ],
                                        );
                                      } else {
                                        return Icon(
                                          Icons.not_interested_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        );
                                      }
                                    },
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
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              horizontalDividerThickness: 1.0,
                              addVerticalDivider: false,
                            );
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
