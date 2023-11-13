import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/app/locator.dart';
import 'package:flutter_bloc_test/exercise/cubit/equipment_cubit.dart';
import 'package:flutter_bloc_test/exercise/presentation/equipment_view.dart';

void main() {
  setupServiceLocator(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Cubits',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => EquipmentCubit(),
        child: EquipmentView(),
      ),
    );
  }
}
