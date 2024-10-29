import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Email-Signup widget.
  FocusNode? emailSignupFocusNode;
  TextEditingController? emailSignupTextController;
  String? Function(BuildContext, String?)? emailSignupTextControllerValidator;
  String? _emailSignupTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Password-Signup widget.
  FocusNode? passwordSignupFocusNode;
  TextEditingController? passwordSignupTextController;
  late bool passwordSignupVisibility;
  String? Function(BuildContext, String?)?
      passwordSignupTextControllerValidator;
  // State field(s) for ConfirmPass-Signup widget.
  FocusNode? confirmPassSignupFocusNode;
  TextEditingController? confirmPassSignupTextController;
  late bool confirmPassSignupVisibility;
  String? Function(BuildContext, String?)?
      confirmPassSignupTextControllerValidator;
  String? _confirmPassSignupTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailSignupTextControllerValidator = _emailSignupTextControllerValidator;
    passwordSignupVisibility = false;
    confirmPassSignupVisibility = false;
    confirmPassSignupTextControllerValidator =
        _confirmPassSignupTextControllerValidator;
  }

  @override
  void dispose() {
    emailSignupFocusNode?.dispose();
    emailSignupTextController?.dispose();

    passwordSignupFocusNode?.dispose();
    passwordSignupTextController?.dispose();

    confirmPassSignupFocusNode?.dispose();
    confirmPassSignupTextController?.dispose();
  }
}
