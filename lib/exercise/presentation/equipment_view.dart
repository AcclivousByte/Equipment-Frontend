import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/exercise/cubit/equipment_cubit.dart';
import 'package:flutter_bloc_test/exercise/cubit/equipment_state.dart';
import 'package:flutter_bloc_test/exercise/presentation/exercise_tile.dart';

class EquipmentView extends StatelessWidget {
  const EquipmentView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<EquipmentCubit>().initialize();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Equipment Selector'),
        ),
        backgroundColor: const Color(0xFF27282A),
        body: SafeArea(
          child: Column(
            children: [
              const Spacer(),
              BlocBuilder<EquipmentCubit, EquipmentState>(
                builder: (context, state) {
                  return Center(
                    child: state.isLoading
                        ? const CircularProgressIndicator()
                        : Wrap(
                            spacing:
                                12,
                            children: state.selectedEquipments.map((equipment) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: ExerciseTile(
                                  name: equipment.name,
                                  isChecked: equipment.isSelected,
                                  onChange: () => context
                                      .read<EquipmentCubit>()
                                      .toggleEquipment(equipment),
                                ),
                              );
                            }).toList(),
                          ),
                  );
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          context.read<EquipmentCubit>().showSnackBar(context);
                        },
                        child: const Text('Show SnackBar')),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        context.read<EquipmentCubit>().toggleLoading();
                      },
                      child: context.watch<EquipmentCubit>().state.isLoading
                          ? const Text('Hide Loading')
                          : const Text('Show Loading'),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
