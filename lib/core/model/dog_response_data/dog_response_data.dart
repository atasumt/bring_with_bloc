import 'package:freezed_annotation/freezed_annotation.dart';

part 'dog_response_data.freezed.dart';
part 'dog_response_data.g.dart';

@freezed
class DogResponseData with _$DogResponseData {
  factory DogResponseData({
    List<String>? message,
    String? status,
  }) = _DogResponseData;

  factory DogResponseData.fromJson(Map<String, dynamic> json) =>
      _$DogResponseDataFromJson(json);
}
