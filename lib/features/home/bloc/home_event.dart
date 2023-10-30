part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeFoodDeliveryCardClickedEvent extends HomeEvent {}

class HomeInstamartCardClickedEvent extends HomeEvent {}

class HomeDineoutCardClickedEvent extends HomeEvent {}

class HomeGenieCardClickedEvent extends HomeEvent {}

class HomeMinisCardClickedEvent extends HomeEvent {}