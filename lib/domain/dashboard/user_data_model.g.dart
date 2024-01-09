// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserClassImpl _$$UserClassImplFromJson(Map<String, dynamic> json) =>
    _$UserClassImpl(
      name: json['name'] as String,
      id: json['id'] as String?,
      rollNumber: json['rollNumber'] as String,
      email: json['email'] as String,
      messName: json['messName'] as String? ?? "N/A",
      messBalance: (json['messBalance'] as num?)?.toDouble() ?? 0,
      messReallocationModel: json['messReallocationModel'] == null
          ? null
          : MessReallocationModel.fromJson(
              json['messReallocationModel'] as Map<String, dynamic>),
      isAdmin: json['isAdmin'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserClassImplToJson(_$UserClassImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'rollNumber': instance.rollNumber,
      'email': instance.email,
      'messName': instance.messName,
      'messBalance': instance.messBalance,
      'messReallocationModel': instance.messReallocationModel?.toJson(),
      'isAdmin': instance.isAdmin,
    };
