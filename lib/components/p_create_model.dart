import '/flutter_flow/flutter_flow_util.dart';
import 'p_create_widget.dart' show PCreateWidget;
import 'package:flutter/material.dart';

class PCreateModel extends FlutterFlowModel<PCreateWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for PlaylistName widget.
  FocusNode? playlistNameFocusNode;
  TextEditingController? playlistNameTextController;
  String? Function(BuildContext, String?)? playlistNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    playlistNameFocusNode?.dispose();
    playlistNameTextController?.dispose();
  }
}
