import 'package:bloc/bloc.dart';

import 'first_event.dart';
import 'first_state.dart';

class FirstBloc extends Bloc<FirstEvent, FirstState> {

  int sum=0;

  FirstBloc() : super(FirstState().init()) {
    on<InitEvent>(_init);

    on<sum_event>((event, emit) {
      sum=int.parse(event.a)+int.parse(event.b);
      emit(sum_state(sum));
    },);

    on<sub_event>((event, emit) {
      sum=int.parse(event.a)-int.parse(event.b);
      emit(sub_state(sum));
    },);

  }

  void _init(InitEvent event, Emitter<FirstState> emit) async {
    emit(state.clone());
  }
}
