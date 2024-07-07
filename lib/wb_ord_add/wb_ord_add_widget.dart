import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'wb_ord_add_model.dart';
export 'wb_ord_add_model.dart';

class WbOrdAddWidget extends StatefulWidget {
  const WbOrdAddWidget({
    super.key,
    required this.prdID,
  });

  final int? prdID;

  @override
  State<WbOrdAddWidget> createState() => _WbOrdAddWidgetState();
}

class _WbOrdAddWidgetState extends State<WbOrdAddWidget>
    with TickerProviderStateMixin {
  late WbOrdAddModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WbOrdAddModel());

    _model.rateFocusNode ??= FocusNode();

    _model.priceFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 80.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        automaticallyImplyLeading: false,
        leading: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
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
        title: Container(
          width: double.infinity,
          height: 50.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondary,
          ),
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Place Order',
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
      body: FutureBuilder<List<PrdRow>>(
        future: PrdTable().querySingleRow(
          queryFn: (q) => q.eq(
            'id',
            widget.prdID,
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
          List<PrdRow> productPagePrdRowList = snapshot.data!;
          final productPagePrdRow = productPagePrdRowList.isNotEmpty
              ? productPagePrdRowList.first
              : null;
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Hero(
                          tag: productPagePrdRow!.pic!,
                          transitionOnUserGestures: true,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              productPagePrdRow.pic!,
                              width: double.infinity,
                              height: 300.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              productPagePrdRow.name,
                              '9999',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 16.0),
                          child: Text(
                            valueOrDefault<String>(
                              productPagePrdRow.shortDesc,
                              '999',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation']!),
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                100.0, 0.0, 100.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.currency_rupee,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.rateTextController ??=
                                          TextEditingController(
                                        text:
                                            productPagePrdRow.rate?.toString(),
                                      ),
                                      focusNode: _model.rateFocusNode,
                                      autofocus: true,
                                      readOnly: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Rate',
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
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      keyboardType: TextInputType.number,
                                      validator: _model
                                          .rateTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 130.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: const Color(0xFFE0E3E7),
                                          width: 2.0,
                                        ),
                                      ),
                                      child: FlutterFlowCountController(
                                        decrementIconBuilder: (enabled) => Icon(
                                          Icons.remove_rounded,
                                          color: enabled
                                              ? const Color(0xFF57636C)
                                              : const Color(0xFF57636C),
                                          size: 16.0,
                                        ),
                                        incrementIconBuilder: (enabled) => Icon(
                                          Icons.add_rounded,
                                          color: enabled
                                              ? const Color(0xFF4B39EF)
                                              : const Color(0xFF57636C),
                                          size: 16.0,
                                        ),
                                        countBuilder: (count) => Text(
                                          count.toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: const Color(0xFF14181B),
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        count: _model.countControllerValue ??=
                                            1,
                                        updateCount: (count) async {
                                          setState(() => _model
                                              .countControllerValue = count);
                                          setState(() {
                                            _model.priceTextController
                                                ?.text = (int.parse(_model
                                                        .rateTextController
                                                        .text) *
                                                    (_model
                                                        .countControllerValue!))
                                                .toString();
                                            _model.priceTextController
                                                    ?.selection =
                                                TextSelection.collapsed(
                                                    offset: _model
                                                        .priceTextController!
                                                        .text
                                                        .length);
                                          });
                                        },
                                        stepSize: 1,
                                        minimum: 1,
                                      ),
                                    ),
                                  ],
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation']!),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 5.0, 0.0),
                                child: Icon(
                                  Icons.currency_rupee,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 20.0, 0.0),
                                child: TextFormField(
                                  controller: _model.priceTextController ??=
                                      TextEditingController(
                                    text: productPagePrdRow.rate?.toString(),
                                  ),
                                  focusNode: _model.priceFocusNode,
                                  autofocus: true,
                                  readOnly: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Price',
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
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
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
                                  keyboardType: TextInputType.number,
                                  validator: _model.priceTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await OrdTable().insert({
                              'user_email': currentUserEmail,
                              'bus_email': productPagePrdRow.busEmail,
                              'prd_id': widget.prdID,
                              'prd_name': productPagePrdRow.name,
                              'prd_rate': productPagePrdRow.rate,
                              'prd_pic': productPagePrdRow.pic,
                              'qty': _model.countControllerValue,
                              'status': 'Product Requested',
                              'price':
                                  int.tryParse(_model.priceTextController.text),
                            });

                            context.pushNamed('home_new');
                          },
                          text: 'Order',
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 2.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
