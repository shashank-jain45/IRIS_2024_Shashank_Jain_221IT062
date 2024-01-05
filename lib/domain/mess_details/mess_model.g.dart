// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mess_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessImpl _$$MessImplFromJson(Map<String, dynamic> json) => _$MessImpl(
      messName: json['messName'] as String,
      totalSeats: json['totalSeats'] as int,
      noOfUsersRegistered: json['noOfUsersRegistered'] as int? ?? 0,
    );

Map<String, dynamic> _$$MessImplToJson(_$MessImpl instance) =>
    <String, dynamic>{
      'messName': instance.messName,
      'totalSeats': instance.totalSeats,
      'noOfUsersRegistered': instance.noOfUsersRegistered,
    };
