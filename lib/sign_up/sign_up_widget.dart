import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_up_model.dart';
export 'sign_up_model.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  late SignUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'SignUp'});
    _model.emailSignupTextController ??= TextEditingController();
    _model.emailSignupFocusNode ??= FocusNode();

    _model.passwordSignupTextController ??= TextEditingController();
    _model.passwordSignupFocusNode ??= FocusNode();

    _model.confirmPassSignupTextController ??= TextEditingController();
    _model.confirmPassSignupFocusNode ??= FocusNode();

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
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Sign up',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineLargeFamily,
                        color: const Color(0xAA480B52),
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineLargeFamily),
                      ),
                ),
              ),
              Text(
                'Create your account',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: 310.0,
                      child: TextFormField(
                        controller: _model.emailSignupTextController,
                        focusNode: _model.emailSignupFocusNode,
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
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
                              ),
                          hintText: 'Email',
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
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
                          fillColor: const Color(0x7F8C52FF),
                          prefixIcon: const Icon(
                            Icons.mail_outline,
                            color: Colors.black,
                            size: 26.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                              lineHeight: 2.0,
                            ),
                        maxLines: null,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.emailSignupTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    SizedBox(
                      width: 310.0,
                      child: TextFormField(
                        controller: _model.passwordSignupTextController,
                        focusNode: _model.passwordSignupFocusNode,
                        autofocus: false,
                        obscureText: !_model.passwordSignupVisibility,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
                              ),
                          hintText: 'Password',
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
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
                          fillColor: const Color(0x808C52FF),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                            size: 26.0,
                          ),
                          suffixIcon: InkWell(
                            onTap: () => safeSetState(
                              () => _model.passwordSignupVisibility =
                                  !_model.passwordSignupVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.passwordSignupVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 20.0,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                              lineHeight: 2.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.passwordSignupTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    SizedBox(
                      width: 310.0,
                      child: TextFormField(
                        controller: _model.confirmPassSignupTextController,
                        focusNode: _model.confirmPassSignupFocusNode,
                        autofocus: false,
                        obscureText: !_model.confirmPassSignupVisibility,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
                              ),
                          hintText: 'Confirm Password',
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelMediumFamily),
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
                          fillColor: const Color(0x808C52FF),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                            size: 26.0,
                          ),
                          suffixIcon: InkWell(
                            onTap: () => safeSetState(
                              () => _model.confirmPassSignupVisibility =
                                  !_model.confirmPassSignupVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.confirmPassSignupVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 20.0,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                              lineHeight: 2.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model
                            .confirmPassSignupTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ].divide(const SizedBox(height: 20.0)),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('SIGN_UP_PAGE_SIGN_UP_BTN_ON_TAP');
                  logFirebaseEvent('Button_validate_form');
                  if (_model.formKey.currentState == null ||
                      !_model.formKey.currentState!.validate()) {
                    return;
                  }
                  logFirebaseEvent('Button_auth');
                  GoRouter.of(context).prepareAuthEvent();
                  if (_model.passwordSignupTextController.text !=
                      _model.confirmPassSignupTextController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Passwords don\'t match!',
                        ),
                      ),
                    );
                    return;
                  }

                  final user = await authManager.createAccountWithEmail(
                    context,
                    _model.emailSignupTextController.text,
                    _model.passwordSignupTextController.text,
                  );
                  if (user == null) {
                    return;
                  }

                  await UsersRecord.collection
                      .doc(user.uid)
                      .update(createUsersRecordData(
                        email: '',
                        createdTime: getCurrentTimestamp,
                        dailyCreated: true,
                      ));

                  logFirebaseEvent('Button_google_analytics_event');
                  logFirebaseEvent('StartGoldenPath');
                  logFirebaseEvent('Button_backend_call');

                  await currentUserReference!.update(createUsersRecordData(
                    email: _model.emailSignupTextController.text,
                  ));
                  logFirebaseEvent('Button_backend_call');

                  await DailyPlaylistsRecord.collection
                      .doc()
                      .set(createDailyPlaylistsRecordData(
                        dailyUrl: '0',
                        dailyName: 'Daily 1',
                        dailyImage:
                            'gs://csc-305-playlist-generator.appspot.com/daily playlists/AMPL.FY_1.png',
                        dailyTime: getCurrentTimestamp,
                        user: currentUserReference,
                        genre: 'pop',
                      ));
                  logFirebaseEvent('Button_backend_call');

                  await DailyPlaylistsRecord.collection
                      .doc()
                      .set(createDailyPlaylistsRecordData(
                        dailyUrl: '0',
                        dailyName: 'Daily 2',
                        dailyImage:
                            'gs://csc-305-playlist-generator.appspot.com/daily playlists/AMPL.FY_1.png',
                        dailyTime: getCurrentTimestamp,
                        user: currentUserReference,
                        genre: 'rock',
                      ));
                  logFirebaseEvent('Button_backend_call');

                  await DailyPlaylistsRecord.collection
                      .doc()
                      .set(createDailyPlaylistsRecordData(
                        dailyUrl: '0',
                        dailyName: 'Daily 3',
                        dailyImage:
                            'gs://csc-305-playlist-generator.appspot.com/daily playlists/AMPL.FY_1.png',
                        dailyTime: getCurrentTimestamp,
                        user: currentUserReference,
                        genre: 'country',
                      ));
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamedAuth('ProfileSetup', context.mounted);
                },
                text: 'Sign up',
                options: FFButtonOptions(
                  width: 310.0,
                  height: 55.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFF8C52FF),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: Colors.white,
                        fontSize: 21.0,
                        letterSpacing: 0.0,
                        shadows: [
                          Shadow(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            offset: const Offset(2.0, 3.0),
                            blurRadius: 2.0,
                          )
                        ],
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(20.0),
                  hoverColor: const Color(0xFF2B2525),
                ),
              ),
              Text(
                'or',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      fontSize: 19.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('SIGN_UP_SIGN_UP_WITH_GOOGLE_BTN_ON_TAP');
                  logFirebaseEvent('Button_auth');
                  GoRouter.of(context).prepareAuthEvent();
                  final user = await authManager.signInWithGoogle(context);
                  if (user == null) {
                    return;
                  }
                  logFirebaseEvent('Button_backend_call');

                  await currentUserReference!.update(createUsersRecordData(
                    dailyCreated: true,
                  ));
                  logFirebaseEvent('Button_google_analytics_event');
                  logFirebaseEvent('StartGoldenPath');
                  logFirebaseEvent('Button_backend_call');

                  await DailyPlaylistsRecord.collection
                      .doc()
                      .set(createDailyPlaylistsRecordData(
                        dailyUrl: '0',
                        dailyName: 'Daily 1',
                        dailyImage:
                            'gs://csc-305-playlist-generator.appspot.com/daily playlists/AMPL.FY_1.png',
                        dailyTime: getCurrentTimestamp,
                        user: currentUserReference,
                      ));
                  logFirebaseEvent('Button_backend_call');

                  await DailyPlaylistsRecord.collection
                      .doc()
                      .set(createDailyPlaylistsRecordData(
                        dailyUrl: '0',
                        dailyName: 'Daily 2',
                        dailyImage:
                            'gs://csc-305-playlist-generator.appspot.com/daily playlists/AMPL.FY_1.png',
                        dailyTime: getCurrentTimestamp,
                        user: currentUserReference,
                      ));
                  logFirebaseEvent('Button_backend_call');

                  await DailyPlaylistsRecord.collection
                      .doc()
                      .set(createDailyPlaylistsRecordData(
                        dailyUrl: '0',
                        dailyName: 'Daily 3',
                        dailyImage:
                            'gs://csc-305-playlist-generator.appspot.com/daily playlists/AMPL.FY_1.png',
                        dailyTime: getCurrentTimestamp,
                        user: currentUserReference,
                      ));
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamedAuth('ProfileSetup', context.mounted);
                },
                text: 'Sign up with Google',
                options: FFButtonOptions(
                  width: 310.0,
                  height: 55.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        color: const Color(0xFF8C52FF),
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyLargeFamily),
                      ),
                  elevation: 0.0,
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
              Text(
                'Already have an account?',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('SIGN_UP_PAGE_Text_7pus56l5_ON_TAP');
                  logFirebaseEvent('Text_navigate_to');

                  context.pushNamed('WelcomeScreen');
                },
                child: Text(
                  'Login!',
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodySmallFamily,
                        color: const Color(0xFF8C52FF),
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodySmallFamily),
                      ),
                ),
              ),
            ].divide(const SizedBox(height: 20.0)).addToStart(const SizedBox(height: 30.0)),
          ),
        ),
      ),
    );
  }
}
