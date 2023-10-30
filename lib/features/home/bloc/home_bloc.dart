import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeFoodDeliveryCardClickedEvent>(homeFoodDeliveryCardClickedEvent);
    on<HomeInstamartCardClickedEvent>(homeInstamartCardClickedEvent);
    on<HomeDineoutCardClickedEvent>(homeDineoutCardClickedEvent);
    on<HomeGenieCardClickedEvent>(homeGenieCardClickedEvent);
    on<HomeMinisCardClickedEvent>(homeMinisCardClickedEvent);
  }

  FutureOr<void> homeFoodDeliveryCardClickedEvent(
      HomeFoodDeliveryCardClickedEvent event, Emitter<HomeState> emit) {
        print("I am clicked");
        emit(HomeNavigateToFoodDeliveryPageActionState());
  }

  FutureOr<void> homeInstamartCardClickedEvent(
      HomeInstamartCardClickedEvent event, Emitter<HomeState> emit) {
        emit(HomeNavigateToInstamartPageActionState());
      }

  FutureOr<void> homeDineoutCardClickedEvent(
      HomeDineoutCardClickedEvent event, Emitter<HomeState> emit) {
        emit(HomeNavigateToDineoutPageActionState());
      }

  FutureOr<void> homeGenieCardClickedEvent(
      HomeGenieCardClickedEvent event, Emitter<HomeState> emit) {
        emit(HomeNavigateToGeniePageActionState());
      }

  FutureOr<void> homeMinisCardClickedEvent(
      HomeMinisCardClickedEvent event, Emitter<HomeState> emit) {
        emit(HomeNavigateToMinisPageActionState());
      }
}
