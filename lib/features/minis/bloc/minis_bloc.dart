import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'minis_event.dart';
part 'minis_state.dart';

class MinisBloc extends Bloc<MinisEvent, MinisState> {
  MinisBloc() : super(MinisInitial()) {
    on<MinisEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
