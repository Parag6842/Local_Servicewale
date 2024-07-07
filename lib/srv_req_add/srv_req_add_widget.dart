import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'srv_req_add_model.dart';
export 'srv_req_add_model.dart';

class SrvReqAddWidget extends StatefulWidget {
  const SrvReqAddWidget({
    super.key,
    required this.paramBusEmail,
    String? paramBusType,
    required this.paragBusName,
  }) : paramBusType = paramBusType ?? '999';

  final String? paramBusEmail;
  final String paramBusType;
  final String? paragBusName;

  @override
  State<SrvReqAddWidget> createState() => _SrvReqAddWidgetState();
}

class _SrvReqAddWidgetState extends State<SrvReqAddWidget> {
  late SrvReqAddModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SrvReqAddModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Text(
                'Enquiry',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 30.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                    ),
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                List<LogUserRow> loginUserDtlsLogUserRowList = snapshot.data!;
                final loginUserDtlsLogUserRow =
                    loginUserDtlsLogUserRowList.isNotEmpty
                        ? loginUserDtlsLogUserRowList.first
                        : null;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (loginUserDtlsLogUserRow?.userType == 'USER')
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: FlutterFlowChoiceChips(
                                      options: const [
                                        ChipData('Info'),
                                        ChipData('Call'),
                                        ChipData('Visit')
                                      ],
                                      onChanged: (val) => setState(() =>
                                          _model.choiceChipsValue1 =
                                              val?.firstOrNull),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        iconSize: 18.0,
                                        elevation: 4.0,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      chipSpacing: 12.0,
                                      rowSpacing: 12.0,
                                      multiselect: false,
                                      initialized:
                                          _model.choiceChipsValue1 != null,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController1 ??=
                                              FormFieldController<List<String>>(
                                        ['Call'],
                                      ),
                                      wrapped: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: FlutterFlowChoiceChips(
                                    options: const [
                                      ChipData('Morning(8-12)'),
                                      ChipData('Afternoon(12-4)'),
                                      ChipData('Evening(4-8)')
                                    ],
                                    onChanged: (val) => setState(() => _model
                                        .choiceChipsValue2 = val?.firstOrNull),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
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
                                          FlutterFlowTheme.of(context)
                                              .alternate,
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
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.choiceChipsValueController2 ??=
                                            FormFieldController<List<String>>(
                                      [],
                                    ),
                                    wrapped: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Name - ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      loginUserDtlsLogUserRow?.name,
                                      '999',
                                    ),
                                    style: const TextStyle(),
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
                          ),
                          if (_model.choiceChipsValue1 == 'Visit')
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Address -',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        loginUserDtlsLogUserRow?.address,
                                        '999',
                                      ),
                                      style: const TextStyle(),
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
                            ),
                          if (_model.choiceChipsValue1 == 'Visit')
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 2.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue = newValue!);
                                      },
                                      side: BorderSide(
                                        width: 2,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                      activeColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Call before visit',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          if ((_model.choiceChipsValue1 == 'Call') ||
                              (_model.checkboxValue == true))
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Mob - ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        loginUserDtlsLogUserRow?.mob,
                                        '999',
                                      ),
                                      style: const TextStyle(),
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
                            ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Comment/Query',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              maxLines: 3,
                              minLines: 3,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await SrvRequestTable().insert({
                                  'user_email': currentUserEmail,
                                  'bus_email': widget.paramBusEmail,
                                  'req_type': _model.choiceChipsValue1,
                                  'pref_time': _model.choiceChipsValue2,
                                  'user_name': loginUserDtlsLogUserRow?.name,
                                  'user_mob': loginUserDtlsLogUserRow?.mob,
                                  'user_address':
                                      loginUserDtlsLogUserRow?.address,
                                  'call_before_visit': _model.checkboxValue,
                                  'user_comment': _model.textController.text,
                                  'status': 'Requested',
                                  'bus_name': widget.paragBusName,
                                  'bus_type': widget.paramBusType,
                                });

                                context.pushNamed(
                                  'Orders',
                                  queryParameters: {
                                    'paramBusType': serializeParam(
                                      widget.paramBusType,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              text: 'Request',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
