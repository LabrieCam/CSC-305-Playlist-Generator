import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ForgotPass-Emaill widget.
  FocusNode? forgotPassEmaillFocusNode;
  TextEditingController? forgotPassEmaillTextController;
  String? Function(BuildContext, String?)?
      forgotPassEmaillTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    forgotPassEmaillFocusNode?.dispose();
    forgotPassEmaillTextController?.dispose();
  }
}
