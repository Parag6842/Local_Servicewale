import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'user_view_block_model.dart';
export 'user_view_block_model.dart';

class UserViewBlockWidget extends StatefulWidget {
  const UserViewBlockWidget({super.key});

  @override
  State<UserViewBlockWidget> createState() => _UserViewBlockWidgetState();
}

class _UserViewBlockWidgetState extends State<UserViewBlockWidget> {
  late UserViewBlockModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserViewBlockModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 30.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'User View',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
              child: FutureBuilder<List<OrdRow>>(
                future: OrdTable().queryRows(
                  queryFn: (q) => q
                      .eq(
                        'user_email',
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
                  List<OrdRow> columnOrdRowList = snapshot.data!;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children:
                        List.generate(columnOrdRowList.length, (columnIndex) {
                      final columnOrdRow = columnOrdRowList[columnIndex];
                      return Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 570.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: const Color(0xFFE5E7EB),
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 0.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                columnOrdRow.prdPic!,
                                                width: 100.0,
                                                height: 100.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 0.0, 0.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      const TextSpan(
                                                        text: 'Order #: ',
                                                        style: TextStyle(),
                                                      ),
                                                      TextSpan(
                                                        text: columnOrdRow.id
                                                            .toString(),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              const Color(0xFF15161E),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Container(
                                                height: 32.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      columnOrdRow.prdName,
                                                      '999',
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'Rate : ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                      TextSpan(
                                                        text: valueOrDefault<
                                                            String>(
                                                          columnOrdRow.prdRate
                                                              ?.toString(),
                                                          '999',
                                                        ),
                                                        style: const TextStyle(),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'qty : ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                      TextSpan(
                                                        text: valueOrDefault<
                                                            String>(
                                                          columnOrdRow.qty
                                                              ?.toString(),
                                                          '999',
                                                        ),
                                                        style: const TextStyle(),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.currency_rupee,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 20.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: ': ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                      TextSpan(
                                                        text: valueOrDefault<
                                                            String>(
                                                          columnOrdRow.price
                                                              ?.toString(),
                                                          '999',
                                                        ),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Container(
                                                height: 32.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        columnOrdRow.status,
                                                        '999',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
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
                                              context.pushNamed(
                                                'wb_ord_upd',
                                                queryParameters: {
                                                  'ordID': serializeParam(
                                                    columnOrdRow.id,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: const Icon(
                                              Icons
                                                  .keyboard_arrow_right_rounded,
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
                            ],
                          ),
                        ),
                      );
                    }).divide(const SizedBox(height: 12.0)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
