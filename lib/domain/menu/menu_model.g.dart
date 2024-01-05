// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EachMealMenuImpl _$$EachMealMenuImplFromJson(Map<String, dynamic> json) =>
    _$EachMealMenuImpl(
      name: json['name'] as String,
      timings: json['timings'] as String,
      items: json['items'] as String,
    );

Map<String, dynamic> _$$EachMealMenuImplToJson(_$EachMealMenuImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'timings': instance.timings,
      'items': instance.items,
    };

_$DayMenuImpl _$$DayMenuImplFromJson(Map<String, dynamic> json) =>
    _$DayMenuImpl(
      dayMenu: (json['dayMenu'] as List<dynamic>)
          .map((e) => EachMealMenu.fromJson(e as Map<String, dynamic>))
          .toList(),
      index: json['index'] as int,
    );

Map<String, dynamic> _$$DayMenuImplToJson(_$DayMenuImpl instance) =>
    <String, dynamic>{
      'dayMenu': instance.dayMenu,
      'index': instance.index,
    };
