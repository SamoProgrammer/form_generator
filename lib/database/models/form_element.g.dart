// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_element.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FormElementAdapter extends TypeAdapter<FormElement> {
  @override
  final int typeId = 1;

  @override
  FormElement read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FormElement(
      label: fields[0] as String,
      type: fields[1] as Type,
    );
  }

  @override
  void write(BinaryWriter writer, FormElement obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.label)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormElementAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}