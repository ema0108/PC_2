import '/flutter_flow/flutter_flow_util.dart';
import 'home_u_s_widget.dart' show HomeUSWidget;
import 'package:flutter/material.dart';

class HomeUSModel extends FlutterFlowModel<HomeUSWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
