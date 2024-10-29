import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_pass_email_verify_widget.dart' show ForgotPassEmailVerifyWidget;
import 'package:flutter/material.dart';

class ForgotPassEmailVerifyModel
    extends FlutterFlowModel<ForgotPassEmailVerifyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  String? Function(BuildContext, String?)? codeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codeFocusNode?.dispose();
    codeTextController?.dispose();
  }
}
