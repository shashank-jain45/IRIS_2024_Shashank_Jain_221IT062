// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuImpl _$$MenuImplFromJson(Map<String, dynamic> json) => _$MenuImpl(
      breakfast: json['breakfast'] as String,
      lunch: json['lunch'] as String,
      snacks: json['snacks'] as String,
      dinner: json['dinner'] as String,
    );

Map<String, dynamic> _$$MenuImplToJson(_$MenuImpl instance) =>
    <String, dynamic>{
      'breakfast': instance.breakfast,
      'lunch': instance.lunch,
      'snacks': instance.snacks,
      'dinner': instance.dinner,
    };

_$DayMenuImpl _$$DayMenuImplFromJson(Map<String, dynamic> json) =>
    _$DayMenuImpl(
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      mealName:
          (json['mealName'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DayMenuImplToJson(_$DayMenuImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'time': instance.time,
      'mealName': instance.mealName,
    };
