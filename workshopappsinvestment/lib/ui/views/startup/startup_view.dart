import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workshopappsinvestment/ui/views/startup/startup_viewmodel.dart';


//We use consumerWidget when it is a statelessWidget
//We use ConsumerStatefull widget when it is a statefullWidget.

class StatartupView extends ConsumerWidget {
  const StatartupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(startupViewmodelProvider);
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(provider.startupText), Text('${provider.counter}')],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
