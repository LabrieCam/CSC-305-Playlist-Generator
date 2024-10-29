import '/components/nps_form_widget.dart';
import '/components/p_create_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'golden_complete_model.dart';
export 'golden_complete_model.dart';

class GoldenCompleteWidget extends StatefulWidget {
  const GoldenCompleteWidget({super.key});

  @override
  State<GoldenCompleteWidget> createState() => _GoldenCompleteWidgetState();
}

class _GoldenCompleteWidgetState extends State<GoldenCompleteWidget> {
  late GoldenCompleteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoldenCompleteModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'goldenComplete'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('GOLDEN_COMPLETE_goldenComplete_ON_INIT_S');
      logFirebaseEvent('goldenComplete_bottom_sheet');
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: const NpsFormWidget(),
            ),
          );
        },
      ).then((value) => safeSetState(() {}));
    });

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
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/AMPL.FY_1.png',
                        width: 180.0,
                        height: 180.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Your Playlist Has Been Generated!',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            print('viewPlaylist pressed ...');
                          },
                          text: 'Click Here to View',
                          options: FFButtonOptions(
                            width: 310.0,
                            height: 55.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFA11AB9),
                            textStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'GOLDEN_COMPLETE_PAGE_viewPlaylist_ON_TAP');
                            logFirebaseEvent('viewPlaylist_bottom_sheet');
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const PCreateWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));

                            logFirebaseEvent(
                                'viewPlaylist_google_analytics_event');
                            logFirebaseEvent('Playlist Saved');
                          },
                          text: 'Save Playlist',
                          options: FFButtonOptions(
                            width: 310.0,
                            height: 55.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFA11AB9),
                            textStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'GOLDEN_COMPLETE_PAGE_viewPlaylist_ON_TAP');
                            logFirebaseEvent(
                                'viewPlaylist_google_analytics_event');
                            logFirebaseEvent('Regenerate ');
                          },
                          text: 'Regenerate Playlist',
                          options: FFButtonOptions(
                            width: 310.0,
                            height: 55.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFA11AB9),
                            textStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ].divide(const SizedBox(height: 40.0)),
                    ),
                  ].divide(const SizedBox(height: 20.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
