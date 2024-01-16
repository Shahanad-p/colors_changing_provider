import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_colors_list/controller/controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ColorsListProvider>(context, listen: false);
    return Consumer<ColorsListProvider>(
      builder: (context, value, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Colors changing provider'),
              centerTitle: true,
            ),
            backgroundColor: value.colors.elementAt(value.colorsTheme),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        prov.changeColors();
                      },
                      child: const Text('Click')),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
