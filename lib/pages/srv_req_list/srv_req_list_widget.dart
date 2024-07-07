import '/components/user_srv_req_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'srv_req_list_model.dart';
export 'srv_req_list_model.dart';

class SrvReqListWidget extends StatefulWidget {
  const SrvReqListWidget({super.key});

  @override
  State<SrvReqListWidget> createState() => _SrvReqListWidgetState();
}

class _SrvReqListWidgetState extends State<SrvReqListWidget> {
  late SrvReqListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SrvReqListModel());
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
                'Enquery List',
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
          child: wrapWithModel(
            model: _model.userSrvReqListModel,
            updateCallback: () => setState(() {}),
            child: const UserSrvReqListWidget(),
          ),
        ),
      ),
    );
  }
}
