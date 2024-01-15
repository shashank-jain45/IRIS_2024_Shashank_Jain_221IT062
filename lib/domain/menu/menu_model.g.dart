// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class men extends TypeAdapter<_$MenuImpl> {
  @override
  final int typeId = 1;

  @override
  _$MenuImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MenuImpl(
      breakfast: fields[0] as String,
      lunch: fields[1] as String,
      snacks: fields[2] as String,
      dinner: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$MenuImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.breakfast)
      ..writeByte(1)
      ..write(obj.lunch)
      ..writeByte(2)
      ..write(obj.snacks)
      ..writeByte(3)
      ..write(obj.dinner);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is men &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
