import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_report_widget.dart' show CreateReportWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateReportModel extends FlutterFlowModel<CreateReportWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for clientName widget.
  FocusNode? clientNameFocusNode;
  TextEditingController? clientNameTextController;
  String? Function(BuildContext, String?)? clientNameTextControllerValidator;
  // State field(s) for clientID widget.
  FocusNode? clientIDFocusNode;
  TextEditingController? clientIDTextController;
  String? Function(BuildContext, String?)? clientIDTextControllerValidator;
  // State field(s) for issue widget.
  FocusNode? issueFocusNode;
  TextEditingController? issueTextController;
  String? Function(BuildContext, String?)? issueTextControllerValidator;
  // State field(s) for duration widget.
  String? durationValue;
  FormFieldController<String>? durationValueController;
  DateTime? datePicked;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    clientNameFocusNode?.dispose();
    clientNameTextController?.dispose();

    clientIDFocusNode?.dispose();
    clientIDTextController?.dispose();

    issueFocusNode?.dispose();
    issueTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
