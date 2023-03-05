import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_view_state.dart';

class WebViewCubit extends Cubit<WebViewState> {
  final String url;

  WebViewCubit({required this.url})
      : super(WebViewState(
            stage: WebViewStage.loading,
            url: url,
            controller: WebViewController())) {
    setUpController();
  }

  setUpController() {
    state.controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    state.controller.loadRequest(Uri.parse(state.url));

  }
}
