
import 'package:e_commerce_project/feature/details_screen/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterStatesInit());

  static CounterCubit of(context) => BlocProvider.of(context);

  int counter = 1;

  void add(){
     counter++;
     emit(AddCounting());
  }

  void minus(){
    if(counter>1){
      counter--;
      emit(MinusCounting());
    }


  }
}