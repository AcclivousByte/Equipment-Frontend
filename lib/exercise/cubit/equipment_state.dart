import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_test/exercise/model/equipment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'equipment_state.freezed.dart';

@freezed
abstract class EquipmentState with _$EquipmentState {
  const factory EquipmentState({
    required List<Equipment> selectedEquipments,
    required bool isLoading,
  }) = _EquipmentState;

  factory EquipmentState.initial() =>
      const EquipmentState(selectedEquipments: [], isLoading: false);
}
