part of 'homescreenbloc_bloc.dart';

@immutable
abstract class HomescreenblocEvent {}

class FloatingActionButtonPressedEvent extends HomescreenblocEvent{}

class ContainerVisibileOnFloatingActionButtonPressedEvent extends HomescreenblocEvent{}

class ContainerHideOnFloatingActionButtonPressedEvent extends HomescreenblocEvent{}

class TextInContainerShownWhenContainerVisibleEvent extends HomescreenblocEvent{}

class TextInContainerHideWhenContainerHide extends HomescreenblocEvent{}