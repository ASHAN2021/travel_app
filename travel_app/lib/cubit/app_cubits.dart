import 'package:bloc/bloc.dart';
import 'package:travel_app/cubit/app_cubit_state.dart';

class Appcubits extends Cubit<CubitStates> {
  Appcubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
