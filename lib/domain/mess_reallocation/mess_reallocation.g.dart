// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mess_reallocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessReallocationModelImpl _$$MessReallocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessReallocationModelImpl(
      isPending: json['isPending'] as bool? ?? true,
      isApproved: json['isApproved'] as bool? ?? false,
      requestedMess: json['requestedMess'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$MessReallocationModelImplToJson(
        _$MessReallocationModelImpl instance) =>
    <String, dynamic>{
      'isPending': instance.isPending,
      'isApproved': instance.isApproved,
      'requestedMess': instance.requestedMess,
      'date': instance.date.toIso8601String(),
    };
