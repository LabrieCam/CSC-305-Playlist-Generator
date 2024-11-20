import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/d_select_widget.dart';
import '/components/p_select_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'saved_playlists_model.dart';
export 'saved_playlists_model.dart';

class SavedPlaylistsWidget extends StatefulWidget {
  const SavedPlaylistsWidget({super.key});

  @override
  State<SavedPlaylistsWidget> createState() => _SavedPlaylistsWidgetState();
}

class _SavedPlaylistsWidgetState extends State<SavedPlaylistsWidget> {
  late SavedPlaylistsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SavedPlaylistsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'savedPlaylists'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SAVED_PLAYLISTS_savedPlaylists_ON_INIT_S');
      if (valueOrDefault<bool>(currentUserDocument?.dailyCreated, false) ==
          false) {
        logFirebaseEvent('savedPlaylists_backend_call');

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
        logFirebaseEvent('savedPlaylists_backend_call');

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
        logFirebaseEvent('savedPlaylists_backend_call');

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
        logFirebaseEvent('savedPlaylists_backend_call');

        await currentUserReference!.update(createUsersRecordData(
          dailyCreated: true,
        ));
      } else {
        return;
      }
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Playlists',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).displayMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).displayMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).displayMediumFamily),
                      ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 450.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Saved Playlists',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .displaySmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .displaySmallFamily),
                                ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'SAVED_PLAYLISTS_Text_n8xx2lms_ON_TAP');
                              logFirebaseEvent('Text_navigate_to');

                              context.pushNamed('seePlaylists');
                            },
                            child: Text(
                              'See More',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: StreamBuilder<List<PlaylistCoversRecord>>(
                                stream: queryPlaylistCoversRecord(
                                  queryBuilder: (playlistCoversRecord) =>
                                      playlistCoversRecord
                                          .where(
                                            'user',
                                            isEqualTo: currentUserReference,
                                          )
                                          .orderBy('createdTime',
                                              descending: true),
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
                                  List<PlaylistCoversRecord>
                                      gridViewPlaylistCoversRecordList =
                                      snapshot.data!;
                                  if (gridViewPlaylistCoversRecordList
                                      .isEmpty) {
                                    return Image.asset(
                                      '',
                                    );
                                  }

                                  return GridView.builder(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10.0,
                                      childAspectRatio: 1.0,
                                    ),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        gridViewPlaylistCoversRecordList.length,
                                    itemBuilder: (context, gridViewIndex) {
                                      final gridViewPlaylistCoversRecord =
                                          gridViewPlaylistCoversRecordList[
                                              gridViewIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'SAVED_PLAYLISTS_Image_7memnxjm_ON_TAP');
                                              logFirebaseEvent(
                                                  'Image_bottom_sheet');
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: PSelectWidget(
                                                        url:
                                                            gridViewPlaylistCoversRecord
                                                                .playlistUrl,
                                                        playlistImage:
                                                            gridViewPlaylistCoversRecord
                                                                .image,
                                                        playlistName:
                                                            gridViewPlaylistCoversRecord
                                                                .playlistName,
                                                        document:
                                                            gridViewPlaylistCoversRecord,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                gridViewPlaylistCoversRecord
                                                    .image,
                                                width: 93.0,
                                                height: 93.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            gridViewPlaylistCoversRecord
                                                .playlistName,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily Playlists',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .displaySmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .displaySmallFamily),
                                ),
                      ),
                      Container(
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: StreamBuilder<List<DailyPlaylistsRecord>>(
                                stream: queryDailyPlaylistsRecord(
                                  queryBuilder: (dailyPlaylistsRecord) =>
                                      dailyPlaylistsRecord
                                          .where(
                                            'user',
                                            isEqualTo: currentUserReference,
                                          )
                                          .orderBy('daily_name'),
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
                                  List<DailyPlaylistsRecord>
                                      gridViewDailyPlaylistsRecordList =
                                      snapshot.data!;
                                  if (gridViewDailyPlaylistsRecordList
                                      .isEmpty) {
                                    return Image.asset(
                                      '',
                                    );
                                  }

                                  return GridView.builder(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10.0,
                                      childAspectRatio: 1.0,
                                    ),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        gridViewDailyPlaylistsRecordList.length,
                                    itemBuilder: (context, gridViewIndex) {
                                      final gridViewDailyPlaylistsRecord =
                                          gridViewDailyPlaylistsRecordList[
                                              gridViewIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
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
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ApiToolsRecord>
                                                  imageApiToolsRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final imageApiToolsRecord =
                                                  imageApiToolsRecordList
                                                          .isNotEmpty
                                                      ? imageApiToolsRecordList
                                                          .first
                                                      : null;

                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'SAVED_PLAYLISTS_Image_svxwxhmu_ON_TAP');
                                                  if ((dateTimeFormat(
                                                              "Md",
                                                              gridViewDailyPlaylistsRecord
                                                                  .dailyTime) !=
                                                          dateTimeFormat("Md",
                                                              getCurrentTimestamp)) ||
                                                      (gridViewDailyPlaylistsRecord
                                                              .dailyUrl ==
                                                          '0')) {
                                                    logFirebaseEvent(
                                                        'Image_backend_call');
                                                    _model.apiResult0bo =
                                                        await GetAccessTokenCall
                                                            .call(
                                                      refreshToken:
                                                          imageApiToolsRecord
                                                              ?.spotifyRefresh,
                                                    );

                                                    if ((_model.apiResult0bo
                                                            ?.succeeded ??
                                                        true)) {
                                                      logFirebaseEvent(
                                                          'Image_backend_call');

                                                      await imageApiToolsRecord!
                                                          .reference
                                                          .update(
                                                              createApiToolsRecordData(
                                                        spotifyAuth:
                                                            GetAccessTokenCall
                                                                .accessToken(
                                                          (_model.apiResult0bo
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        authTime:
                                                            getCurrentTimestamp,
                                                      ));
                                                    }
                                                    logFirebaseEvent(
                                                        'Image_backend_call');
                                                    _model.apiResult5nm =
                                                        await GenerateDailyPlaylistCall
                                                            .call(
                                                      accessToken:
                                                          imageApiToolsRecord
                                                              ?.spotifyAuth,
                                                      genre:
                                                          gridViewDailyPlaylistsRecord
                                                              .genre,
                                                    );

                                                    if ((_model.apiResult5nm
                                                            ?.succeeded ??
                                                        true)) {
                                                      logFirebaseEvent(
                                                          'Image_backend_call');

                                                      await gridViewDailyPlaylistsRecord
                                                          .reference
                                                          .update(
                                                              createDailyPlaylistsRecordData(
                                                        dailyTime:
                                                            getCurrentTimestamp,
                                                        dailyUrl:
                                                            GenerateDailyPlaylistCall
                                                                .dailylink(
                                                          (_model.apiResult5nm
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                      ));
                                                    }
                                                  }
                                                  logFirebaseEvent(
                                                      'Image_bottom_sheet');
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () =>
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child: DSelectWidget(
                                                            playlisturl:
                                                                gridViewDailyPlaylistsRecord
                                                                    .dailyUrl,
                                                            playlistName:
                                                                gridViewDailyPlaylistsRecord
                                                                    .dailyName,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));

                                                  safeSetState(() {});
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/AMPL.FY_1.png',
                                                    width: 93.0,
                                                    height: 93.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                          Text(
                                            gridViewDailyPlaylistsRecord
                                                .dailyName,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
