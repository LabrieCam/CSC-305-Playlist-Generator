import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage_model.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({super.key});

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  late HomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'homepage'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  image: Image.asset(
                    'assets/images/AMP_background2.png',
                  ).image,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 40.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/AMPL.FY_transparent.png',
                              width: 300.0,
                              height: 139.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 40.0),
                            child: SizedBox(
                              width: 300.0,
                              child: TextFormField(
                                key: const ValueKey('TextField_mbla'),
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                  hintText: 'Enter Playlist Prompt...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                textAlign: TextAlign.center,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<ApiToolsRecord>
                                generateButtonApiToolsRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final generateButtonApiToolsRecord =
                                generateButtonApiToolsRecordList.isNotEmpty
                                    ? generateButtonApiToolsRecordList.first
                                    : null;

                            return FFButtonWidget(
                              key: const ValueKey('generate_button_38tj'),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'HOMEPAGE_PAGE_generate_button_ON_TAP');
                                var shouldSetState = false;
                                logFirebaseEvent(
                                    'generate_button_google_analytics_event');
                                logFirebaseEvent('End Golden Path');
                                logFirebaseEvent(
                                    'generate_button_validate_form');
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                logFirebaseEvent(
                                    'generate_button_backend_call');
                                _model.apiResultpvd =
                                    await GetAccessTokenCall.call(
                                  refreshToken: generateButtonApiToolsRecord
                                      ?.spotifyRefresh,
                                );

                                shouldSetState = true;
                                if ((_model.apiResultpvd?.succeeded ?? true)) {
                                  logFirebaseEvent(
                                      'generate_button_backend_call');

                                  await generateButtonApiToolsRecord!.reference
                                      .update(createApiToolsRecordData(
                                    spotifyAuth: GetAccessTokenCall.accessToken(
                                      (_model.apiResultpvd?.jsonBody ?? ''),
                                    ),
                                    authTime: getCurrentTimestamp,
                                  ));
                                }
                                logFirebaseEvent(
                                    'generate_button_backend_call');
                                _model.apiResultywx =
                                    await AIgeneratePlaylistCall.call(
                                  genreOrMood: _model.textController.text,
                                  accessToken:
                                      generateButtonApiToolsRecord?.spotifyAuth,
                                  filterExplicit: !valueOrDefault<bool>(
                                      currentUserDocument?.explicitAllowed,
                                      false),
                                );

                                shouldSetState = true;
                                if ((_model.apiResultywx?.succeeded ?? true)) {
                                  logFirebaseEvent(
                                      'generate_button_update_app_state');
                                  FFAppState().spotifyurl =
                                      AIgeneratePlaylistCall.playlistURL(
                                    (_model.apiResultywx?.jsonBody ?? ''),
                                  )!;
                                  safeSetState(() {});
                                } else {
                                  logFirebaseEvent(
                                      'generate_button_alert_dialog');
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Invalid Genre Entered'),
                                        content: const Text(
                                            'An invalid genre has been entered! Please input a new genre.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  logFirebaseEvent(
                                      'generate_button_clear_text_fields_pin_co');
                                  safeSetState(() {
                                    _model.textController?.clear();
                                  });
                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                }

                                logFirebaseEvent(
                                    'generate_button_update_app_state');
                                FFAppState().genre = _model.textController.text;
                                safeSetState(() {});
                                logFirebaseEvent('generate_button_navigate_to');

                                context.pushNamed('goldenComplete');

                                if (shouldSetState) safeSetState(() {});
                              },
                              text: 'Generate Playlist!',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFF8C52FF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      shadows: [
                                        Shadow(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: const Offset(2.0, 3.0),
                                          blurRadius: 2.0,
                                        )
                                      ],
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(12.0),
                                hoverColor: const Color(0xFF2B2525),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(1.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 100.0),
                          child: FlutterFlowIconButton(
                            borderRadius: 100.0,
                            buttonSize: 40.0,
                            fillColor: const Color(0xE3E0E3E7),
                            icon: FaIcon(
                              FontAwesomeIcons.music,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 15.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'HOMEPAGE_PAGE_website_button_ON_TAP');
                              logFirebaseEvent('website_button_launch_u_r_l');
                              await launchURL(
                                  'https://sites.google.com/uri.edu/amplfy');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
