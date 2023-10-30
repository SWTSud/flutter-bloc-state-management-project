// import 'dart:async';
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
//
// part 'homescreenbloc_event.dart';
// part 'homescreenbloc_state.dart';
//
// class HomescreenblocBloc extends Bloc<HomescreenblocEvent, HomescreenblocState> {
//   bool isContainerVisible = true;
//
//   HomescreenblocBloc() : super(HomescreenblocInitial()) {
//     on<HomescreenblocEvent>((event, emit) {
//       if (event is FloatingActionButtonPressedEvent) {
//         // Toggle the visibility of the container
//         isContainerVisible = !isContainerVisible;
//         // Emit the appropriate state based on visibility
//         if (isContainerVisible) {
//           emit(ContainerVisibleOnFloatingActionButtonPressedState());
//         } else {
//           emit(ContainerHideOnFloatingActionButtonPressedState());
//         }
//       }
//     });
//   }
// }

// import 'dart:async';
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
//
// part 'homescreenbloc_event.dart';
// part 'homescreenbloc_state.dart';
//
// class HomescreenblocBloc extends Bloc<HomescreenblocEvent, HomescreenblocState> {
//   bool isContainerVisible = true;
//
//   HomescreenblocBloc() : super(HomescreenblocInitial());
//
//   @override
//   Stream<HomescreenblocState> mapEventToState(HomescreenblocEvent event) async* {
//     if (event is FloatingActionButtonPressedEvent) {
//       // Toggle the visibility of the container
//       isContainerVisible = !isContainerVisible;
//
//       if (isContainerVisible) {
//         yield ContainerVisibleOnFloatingActionButtonPressedState();
//       } else {
//         yield ContainerHideOnFloatingActionButtonPressedState();
//       }
//     }
//   }
// }
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'homescreenbloc_event.dart';
part 'homescreenbloc_state.dart';

class HomescreenblocBloc extends Bloc<HomescreenblocEvent, HomescreenblocState> {
  bool isContainerVisible = true;

  HomescreenblocBloc() : super(HomescreenblocInitial()) {
    on<FloatingActionButtonPressedEvent>((event, emit) {
      // Toggle the visibility of the container
      isContainerVisible = !isContainerVisible;

      if (isContainerVisible) {
        emit(ContainerVisibleOnFloatingActionButtonPressedState());
      } else {
        emit(ContainerHideOnFloatingActionButtonPressedState());
      }
    });
  }
}
