import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/app/locator.dart';
import 'package:flutter_bloc_test/exercise/cubit/equipment_state.dart';
import 'package:flutter_bloc_test/exercise/model/equipment.dart';
import 'package:flutter_bloc_test/exercise/repositories/equipment_repository.dart';
import 'package:flutter_bloc_test/utils/snackbar_service.dart';

class EquipmentCubit extends Cubit<EquipmentState> {
  EquipmentCubit() : super(EquipmentState.initial());
  final EquipmentRepository _repository = EquipmentRepository();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  Future<void> toggleEquipment(Equipment equipment) async {
    if (state.selectedEquipments.where((e) => e.isSelected).length < 3 ||
        equipment.isSelected) {
      final updatedEquipments = state.selectedEquipments.map((e) {
        if (e == equipment) {
          return e.copyWith(isSelected: !e.isSelected);
        } else {
          return e;
        }
      }).toList();
      emit(state.copyWith(selectedEquipments: updatedEquipments));
      await _repository.saveSelectedEquipments(updatedEquipments);
    } else {
      emit(state.copyWith(selectedEquipments: state.selectedEquipments));
    }
  }

  Future<void> initialize() async {
    final selectedEquipments = await _repository.loadEquipments();
    emit(state.copyWith(selectedEquipments: selectedEquipments));
  }

  void showSnackBar(BuildContext context) {
    _snackbarService.showSnackbar('This is flutter Bloc', context);
  }

  void toggleLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }
}
