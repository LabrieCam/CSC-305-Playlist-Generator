import '/flutter_flow/flutter_flow_util.dart';
import 'p_create_widget.dart' show PCreateWidget;
import 'package:flutter/material.dart';

class PCreateModel extends FlutterFlowModel<PCreateWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for PlaylistName widget.
  FocusNode? playlistNameFocusNode;
  TextEditingController? playlistNameTextController;
  String? Function(BuildContext, String?)? playlistNameTextControllerValidator;
  String? _playlistNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is Required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    playlistNameTextControllerValidator = _playlistNameTextControllerValidator;
  }

  @override
  void dispose() {
    playlistNameFocusNode?.dispose();
    playlistNameTextController?.dispose();
  }
}
