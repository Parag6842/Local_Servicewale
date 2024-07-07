import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'home_reorder_user_view_block_model.dart';
export 'home_reorder_user_view_block_model.dart';

class HomeReorderUserViewBlockWidget extends StatefulWidget {
  const HomeReorderUserViewBlockWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
    this.parameter6,
    this.parameter7,
  });

  final String? parameter1;
  final String? parameter2;
  final String? parameter3;
  final int? parameter4;
  final String? parameter5;
  final int? parameter6;
  final String? parameter7;

  @override
  State<HomeReorderUserViewBlockWidget> createState() =>
      _HomeReorderUserViewBlockWidgetState();
}

class _HomeReorderUserViewBlockWidgetState
    extends State<HomeReorderUserViewBlockWidget>
    with TickerProviderStateMixin {
  late HomeReorderUserViewBlockModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeReorderUserViewBlockModel());

    _model.rateTextController ??=
        TextEditingController(text: widget.parameter4?.toString());
    _model.rateFocusNode ??= FocusNode();

    _model.priceTextController ??=
        TextEditingController(text: widget.parameter4?.toString());
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
            child: Hero(
              tag: widget.parameter1!,
              transitionOnUserGestures: true,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.network(
                  widget.parameter1!,
                  width: double.infinity,
                  height: 300.0,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Image.asset(
                    'assets/images/error_image.gif',
                    width: double.infinity,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: Text(
                widget.parameter2!,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).secondary,
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 16.0),
              child: Text(
                widget.parameter3!,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: const Color(0xFF57636C),
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                      lineHeight: 2.0,
                    ),
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.rateTextController,
                      focusNode: _model.rateFocusNode,
                      autofocus: true,
                      readOnly: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Rate',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
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
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      validator: _model.rateTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                Container(
                  width: 130.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
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
                          ? FlutterFlowTheme.of(context).secondary
                          : FlutterFlowTheme.of(context).secondaryText,
                      size: 16.0,
                    ),
                    incrementIconBuilder: (enabled) => Icon(
                      Icons.add_rounded,
                      color: enabled
                          ? FlutterFlowTheme.of(context).secondary
                          : FlutterFlowTheme.of(context).secondaryText,
                      size: 16.0,
                    ),
                    countBuilder: (count) => Text(
                      count.toString(),
                      style: FlutterFlowTheme.of(context)
                          .headlineSmall
                          .override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    count: _model.quantityValue ??= 1,
                    updateCount: (count) async {
                      setState(() => _model.quantityValue = count);
                      setState(() {
                        _model.priceTextController?.text =
                            (int.parse(_model.rateTextController.text) *
                                    (_model.quantityValue!))
                                .toString();
                        _model.priceTextController?.selection =
                            TextSelection.collapsed(
                                offset:
                                    _model.priceTextController!.text.length);
                      });
                    },
                    stepSize: 1,
                    minimum: 1,
                  ),
                ),
              ],
            ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 5.0, 0.0),
                child: Icon(
                  Icons.currency_rupee,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 40.0,
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                  child: TextFormField(
                    controller: _model.priceTextController,
                    focusNode: _model.priceFocusNode,
                    autofocus: true,
                    readOnly: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Price',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
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
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
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
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                await OrdTable().insert({
                  'user_email': currentUserEmail,
                  'bus_email': widget.parameter5,
                  'prd_id': widget.parameter6,
                  'prd_name': widget.parameter7,
                  'prd_rate': widget.parameter4,
                  'prd_pic': widget.parameter1,
                  'qty': _model.quantityValue,
                  'status': 'Product Requested',
                  'price': int.tryParse(_model.priceTextController.text),
                });

                context.pushNamed(
                  'Orders',
                  queryParameters: {
                    'paramBusType': serializeParam(
                      'Water Bottle',
                      ParamType.String,
                    ),
                  }.withoutNulls,
                );
              },
              text: 'Order',
              options: FFButtonOptions(
                width: 130.0,
                height: 50.0,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
    );
  }
}
