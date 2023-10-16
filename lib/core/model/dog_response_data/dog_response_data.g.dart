// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DogResponseDataImpl _$$DogResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DogResponseDataImpl(
      message:
          (json['message'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$DogResponseDataImplToJson(
        _$DogResponseDataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };
