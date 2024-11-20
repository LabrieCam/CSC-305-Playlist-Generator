import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nps_form_model.dart';
export 'nps_form_model.dart';

class NpsFormWidget extends StatefulWidget {
  /// Please create a pop up nps satisfaction quiz with a 1-10 slider that asks
  /// how likely the user is to recommend the app
  const NpsFormWidget({super.key});

  @override
  State<NpsFormWidget> createState() => _NpsFormWidgetState();
}

class _NpsFormWidgetState extends State<NpsFormWidget> {
  late NpsFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NpsFormModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'How likely are you to recommend our app to a friend or colleague?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineSmallFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineSmallFamily),
                    ),
              ),
              SizedBox(
                width: 300.0,
                child: Slider(
                  activeColor: FlutterFlowTheme.of(context).primary,
                  inactiveColor: const Color(0x33FFFFFF),
                  min: 1.0,
                  max: 10.0,
                  value: _model.sliderValue ??= 5.0,
                  label: _model.sliderValue?.toString(),
                  divisions: 9,
                  onChanged: (newValue) {
                    safeSetState(() => _model.sliderValue = newValue);
                  },
                  onChangeEnd: (newValue) async {
                    safeSetState(() => _model.sliderValue = newValue);
                    logFirebaseEvent(
                        'NPS_FORM_Slider_ogw7xkik_ON_FORM_WIDGET_');
                    logFirebaseEvent('Slider_update_app_state');
                    FFAppState().sliderValue = _model.sliderValue!;
                    safeSetState(() {});
                  },
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1\nNot likely',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodySmallFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodySmallFamily),
                        ),
                  ),
                  Text(
                    '10\nVery likely',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodySmallFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodySmallFamily),
                        ),
                  ),
                ],
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('NPS_FORM_COMP_SUBMIT_BTN_ON_TAP');
                  logFirebaseEvent('Button_backend_call');

                  await currentUserReference!.update(createUsersRecordData(
                    npsRating: FFAppState().sliderValue,
                  ));
                  logFirebaseEvent('Button_google_analytics_event');
                  logFirebaseEvent(
                    'NPSScore',
                    parameters: {
                      'NPS': _model.sliderValue.toString(),
                    },
                  );
                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                },
                text: 'Submit',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 50.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: FlutterFlowTheme.of(context).info,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 0.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ].divide(const SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
