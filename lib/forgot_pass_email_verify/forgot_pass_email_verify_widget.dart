import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'forgot_pass_email_verify_model.dart';
export 'forgot_pass_email_verify_model.dart';

class ForgotPassEmailVerifyWidget extends StatefulWidget {
  const ForgotPassEmailVerifyWidget({super.key});

  @override
  State<ForgotPassEmailVerifyWidget> createState() =>
      _ForgotPassEmailVerifyWidgetState();
}

class _ForgotPassEmailVerifyWidgetState
    extends State<ForgotPassEmailVerifyWidget> {
  late ForgotPassEmailVerifyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPassEmailVerifyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ForgotPassEmailVerify'});
    _model.codeTextController ??= TextEditingController();
    _model.codeFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 35.0,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Email Verification',
                  style: FlutterFlowTheme.of(context).displayMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Get Your Code',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  '     Please enter the 4 digit code that \n        was sent to your email Address.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: SizedBox(
                  width: 310.0,
                  child: TextFormField(
                    controller: _model.codeTextController,
                    focusNode: _model.codeFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Code..',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFE0ADE5),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                          lineHeight: 2.0,
                        ),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.codeTextControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'If you didn\'t received code!  ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Resend',
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('RecoverPass pressed ...');
                  },
                  text: 'Verify and Proceed',
                  options: FFButtonOptions(
                    width: 310.0,
                    height: 55.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFA11AB9),
                    textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 20.0)).around(const SizedBox(height: 20.0)),
          ),
        ),
      ),
    );
  }
}
