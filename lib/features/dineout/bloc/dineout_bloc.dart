import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dineout_event.dart';
part 'dineout_state.dart';

class DineoutBloc extends Bloc<DineoutEvent, DineoutState> {
  DineoutBloc() : super(DineoutInitial()) {
    on<DineoutEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
