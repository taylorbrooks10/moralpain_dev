import 'package:bloc/bloc.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class ThermometerCubit extends Cubit<int> {
  /// {@macro counter_cubit}
  ThermometerCubit() : super(0);

  void set(int val) => emit(val);
}
