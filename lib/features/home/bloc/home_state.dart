part of 'home_bloc.dart';

@immutable
abstract class HomeState {}
abstract class HomeActionState extends HomeState{}

final class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadSuccessState extends HomeState {}

class HomeLoadErrorState extends HomeState {}

class HomeNavigateToFoodDeliveryPageActionState extends HomeActionState {}

class HomeNavigateToInstamartPageActionState extends HomeActionState {}

class HomeNavigateToDineoutPageActionState extends HomeActionState {}

class HomeNavigateToGeniePageActionState extends HomeActionState {}

class HomeNavigateToMinisPageActionState extends HomeActionState {}