import 'package:flutter_bloc_test/exercise/model/equipment.dart';
import 'package:flutter_bloc_test/exercise/repositories/equipment_repository_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EquipmentRepository implements EquipmentRepositoryHelper {
  String key = 'selectedEquipments';

  List<Equipment> availableEquipments = [
    const Equipment(id: '1', name: 'Bodyweight'),
    const Equipment(id: '2', name: 'Dumbbells'),
    const Equipment(id: '3', name: 'Bands'),
    const Equipment(id: '4', name: 'Treadmils'),
    const Equipment(id: '5', name: 'Ropes'),
    const Equipment(id: '6', name: 'Barbells'),
  ];

  @override
  Future<void> saveSelectedEquipments(
      List<Equipment> selectedEquipments) async {
    final selectedIds =
        selectedEquipments.where((e) => e.isSelected).map((e) => e.id).toList();
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(key, selectedIds);
      // ignore: empty_catches
    } catch (e) {}
  }

  @override
  Future<List<Equipment>> loadEquipments() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final selectedIds = prefs.getStringList(key);
      if (selectedIds == null) {
        return availableEquipments
            .map((equipment) => equipment.copyWith(isSelected: false))
            .toList();
      }

      final updatedEquipments = availableEquipments.map((equipment) {
        final isSelected = selectedIds.contains(equipment.id);
        return equipment.copyWith(isSelected: isSelected);
      }).toList();

      return updatedEquipments;
    } catch (e) {
      return availableEquipments;
    }
  }
}
