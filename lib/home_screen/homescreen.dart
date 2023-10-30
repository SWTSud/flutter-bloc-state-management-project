import 'package:blocstatemanagementtimespan/bloc/homescreenbloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import the Flutter Bloc package

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Bloc State Management"),
          centerTitle: true,
          elevation: 4.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Use BlocProvider to access the Bloc and trigger the event
            context.read<HomescreenblocBloc>().add(FloatingActionButtonPressedEvent());
            final isContainerVisible = context.read<HomescreenblocBloc>().isContainerVisible;

            // Show Snackbar based on container visibility
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(isContainerVisible
                    ? "Container is hidden"
                    : "Container is visible"),
              ),
            );
          },
          child: const Icon(Icons.visibility),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: BlocBuilder<HomescreenblocBloc, HomescreenblocState>(
                builder: (context, state) {
                  if (state is ContainerVisibleOnFloatingActionButtonPressedState) {
                    return Container(
                      height: 450,
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.purple.shade100,
                      ),
                      child: Center(
                        child: Text(
                          "SWT Technologies",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.deepPurpleAccent.shade700,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Container(); // Hide the container
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

