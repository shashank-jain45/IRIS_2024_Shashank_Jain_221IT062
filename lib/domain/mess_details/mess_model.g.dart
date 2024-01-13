// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mess_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessImpl _$$MessImplFromJson(Map<String, dynamic> json) => _$MessImpl(
      messName: json['messName'] as String,
      totalSeats: json['totalSeats'] as int,
      messCharge: (json['messCharge'] as num).toDouble(),
      menuDetails: Menu.fromJson(json['menuDetails'] as Map<String, dynamic>),
      noOfUsersRegistered: json['noOfUsersRegistered'] as int? ?? 0,
    );

Map<String, dynamic> _$$MessImplToJson(_$MessImpl instance) =>
    <String, dynamic>{
      'messName': instance.messName,
      'totalSeats': instance.totalSeats,
      'messCharge': instance.messCharge,
      'menuDetails': instance.menuDetails.toJson(),
      'noOfUsersRegistered': instance.noOfUsersRegistered,
    };
