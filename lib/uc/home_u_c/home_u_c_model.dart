import '/flutter_flow/flutter_flow_util.dart';
import 'home_u_c_widget.dart' show HomeUCWidget;
import 'package:flutter/material.dart';

class HomeUCModel extends FlutterFlowModel<HomeUCWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
