import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/nps_form_widget.dart';
import '/components/p_create_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/AMP_background2.png',
                      ).image,
                    ),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                      child: Column(
                        key: const ValueKey('Column_1jmc'),
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 100.0, 0.0, 50.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/AMPL.FY_transparent.png',
                                width: 300.0,
                                height: 116.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Your playlist has been generated!',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineMediumFamily),
                                ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                key: const ValueKey('viewPlaylist_bdeo'),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'GOLDEN_COMPLETE_PAGE_viewPlaylist_ON_TAP');
                                  logFirebaseEvent('viewPlaylist_launch_u_r_l');
                                  await launchURL(FFAppState().spotifyurl);
                                  if (valueOrDefault(
                                              currentUserDocument?.npsRating,
                                              0.0)
                                          .toString() ==
                                      '0') {
                                    logFirebaseEvent(
                                        'viewPlaylist_bottom_sheet');
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const NpsFormWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  } else {
                                    return;
                                  }
                                },
                                text: 'Click Here to View',
                                options: FFButtonOptions(
                                  width: 310.0,
                                  height: 55.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily),
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
                                        onTap: () {
                                          FocusScope.of(context).unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
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
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily),
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                              StreamBuilder<List<ApiToolsRecord>>(
                                stream: queryApiToolsRecord(
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ApiToolsRecord>
                                      regPlaylistApiToolsRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final regPlaylistApiToolsRecord =
                                      regPlaylistApiToolsRecordList.isNotEmpty
                                          ? regPlaylistApiToolsRecordList.first
                                          : null;

                                  return FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'GOLDEN_COMPLETE_PAGE_regPlaylist_ON_TAP');
                                      logFirebaseEvent(
                                          'regPlaylist_google_analytics_event');
                                      logFirebaseEvent('Regenerate ');
                                      logFirebaseEvent(
                                          'regPlaylist_backend_call');
                                      _model.apiResultbyb =
                                          await GetAccessTokenCall.call(
                                        refreshToken: regPlaylistApiToolsRecord
                                            ?.spotifyRefresh,
                                      );

                                      if ((_model.apiResultbyb?.succeeded ??
                                          true)) {
                                        logFirebaseEvent(
                                            'regPlaylist_backend_call');

                                        await regPlaylistApiToolsRecord!
                                            .reference
                                            .update(createApiToolsRecordData(
                                          spotifyAuth:
                                              GetAccessTokenCall.accessToken(
                                            (_model.apiResultbyb?.jsonBody ??
                                                ''),
                                          ),
                                          authTime: getCurrentTimestamp,
                                        ));
                                      }
                                      logFirebaseEvent(
                                          'regPlaylist_backend_call');
                                      _model.apiResult6j8 =
                                          await AIgeneratePlaylistCall.call(
                                        genreOrMood: FFAppState().genre,
                                        accessToken: regPlaylistApiToolsRecord
                                            ?.spotifyAuth,
                                        filterExplicit: valueOrDefault<bool>(
                                            currentUserDocument
                                                ?.explicitAllowed,
                                            false),
                                      );

                                      if ((_model.apiResult6j8?.succeeded ??
                                          true)) {
                                        logFirebaseEvent(
                                            'regPlaylist_update_app_state');
                                        FFAppState().spotifyurl =
                                            AIgeneratePlaylistCall.playlistURL(
                                          (_model.apiResult6j8?.jsonBody ?? ''),
                                        )!;
                                        safeSetState(() {});
                                      }
                                      logFirebaseEvent(
                                          'regPlaylist_navigate_to');

                                      context.pushNamed('goldenComplete');

                                      safeSetState(() {});
                                    },
                                    text: 'Regenerate Playlist',
                                    options: FFButtonOptions(
                                      width: 310.0,
                                      height: 55.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelLargeFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelLargeFamily),
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  );
                                },
                              ),
                            ].divide(const SizedBox(height: 40.0)),
                          ),
                        ].divide(const SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
