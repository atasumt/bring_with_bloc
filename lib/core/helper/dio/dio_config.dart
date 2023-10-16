import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

String kProdUrl = "https://api.deneme.com/api/v1";

String kTestUrl = "https://dog.ceo/api";

String kBaseUrl = kDebugMode ? kTestUrl : kProdUrl;

BaseOptions dioOptions = BaseOptions(
  baseUrl: kBaseUrl,
  responseType: ResponseType.json,
  headers: {'accept': '/', 'Content-Type': 'application/json'},
);
