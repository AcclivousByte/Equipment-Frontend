import 'package:flutter_bloc_test/exercise/model/equipment.dart';

abstract class EquipmentRepositoryHelper{

  Future<void> saveSelectedEquipments(List<Equipment> selectedEquipments);
  Future<List<Equipment>> loadEquipments();
}
