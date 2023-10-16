import 'package:brinch_with_bloc/core/extension/enums/error_status_enum.dart';
import 'package:brinch_with_bloc/core/helper/info_handler_widget.dart';
import 'package:brinch_with_bloc/core/utils/routes.dart';
import 'package:dio/dio.dart';

InterceptorsWrapper dioMainInterceptor() {
  return InterceptorsWrapper(onRequest: (requestOptions, handler) {
    return handler.next(requestOptions);
  }, onResponse: (response, handler) {
    return handler.next(response);
  }, onError: (DioException e, handler) {
    // ResponseMain response = ResponseMain.fromJson(e.response?.data);
    infoHandlerWidget(globalCtx, '{HATA}', '', ErrorStatusEnum.ERROR);
    return handler.next(e);
  });
}
