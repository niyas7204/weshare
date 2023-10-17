// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrentUserModelAdapter extends TypeAdapter<CurrentUserModel> {
  @override
  final int typeId = 1;

  @override
  CurrentUserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentUserModel(
      uid: fields[0] as String,
      userName: fields[1] as String,
      email: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CurrentUserModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.uid)
      ..writeByte(1)
      ..write(obj.userName)
      ..writeByte(3)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentUserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
