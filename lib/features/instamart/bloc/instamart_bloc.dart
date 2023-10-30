import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'instamart_event.dart';
part 'instamart_state.dart';

class InstamartBloc extends Bloc<InstamartEvent, InstamartState> {
  InstamartBloc() : super(InstamartInitial()) {
    on<InstamartEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
