part of 'homescreenbloc_bloc.dart';

@immutable
abstract class HomescreenblocState {}

class HomescreenblocInitial extends HomescreenblocState {}

class FloatingActionButtonPressedState extends HomescreenblocState{}

class ContainerVisibleOnFloatingActionButtonPressedState extends HomescreenblocState{}

class ContainerHideOnFloatingActionButtonPressedState extends HomescreenblocState{}

class TextInContainerShownWhenContainerVisibleState extends HomescreenblocState{}

class TextInContainerHideWhenContainerHideState extends HomescreenblocState{}
