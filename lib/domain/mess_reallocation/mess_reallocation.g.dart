// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mess_reallocation.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class notif extends TypeAdapter<_$MessReallocationModelImpl> {
  @override
  final int typeId = 6;

  @override
  _$MessReallocationModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MessReallocationModelImpl(
      isPending: fields[0] as bool?,
      isApproved: fields[1] as bool?,
      requestedMess: fields[2] as String,
      date: fields[3] as DateTime,
      messCharge: fields[4] as double,
      menu: fields[5] as Menu,
    );
  }

  @override
  void write(BinaryWriter writer, _$MessReallocationModelImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.isPending)
      ..writeByte(1)
      ..write(obj.isApproved)
      ..writeByte(2)
      ..write(obj.requestedMess)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.messCharge)
      ..writeByte(5)
      ..write(obj.menu);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is notif &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      messCharge: (json['messCharge'] as num).toDouble(),
      menu: Menu.fromJson(json['menu'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessReallocationModelImplToJson(
        _$MessReallocationModelImpl instance) =>
    <String, dynamic>{
      'isPending': instance.isPending,
      'isApproved': instance.isApproved,
      'requestedMess': instance.requestedMess,
      'date': instance.date.toIso8601String(),
      'messCharge': instance.messCharge,
      'menu': instance.menu.toJson(),
    };
