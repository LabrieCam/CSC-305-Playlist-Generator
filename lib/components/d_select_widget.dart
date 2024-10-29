import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'd_select_model.dart';
export 'd_select_model.dart';

class DSelectWidget extends StatefulWidget {
  const DSelectWidget({super.key});

  @override
  State<DSelectWidget> createState() => _DSelectWidgetState();
}

class _DSelectWidgetState extends State<DSelectWidget> {
  late DSelectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DSelectModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 408.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(
              0.0,
              -3.0,
            ),
          )
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://picsum.photos/seed/727/600',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                'Playlist Name',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: FFButtonWidget(
                onPressed: () {
                  print('OpenPlaylist pressed ...');
                },
                text: 'Open Playlist',
                options: FFButtonOptions(
                  width: 310.0,
                  height: 55.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
          ],
        ),
      ),
    );
  }
}
