import 'package:flutter/material.dart';
import 'package:flutter_application_3/viewmodel/counter_viewmodel.dart';
import 'package:provider/provider.dart';

class CounterViewTwo extends StatelessWidget {
  const CounterViewTwo({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterViewModel(),
      child: const _CounterViewBody(), 
    );
  }
}

class _CounterViewBody extends StatelessWidget {
  const _CounterViewBody({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    final counterViewModel = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Con MVVM'),
        backgroundColor: const Color.fromARGB(255, 243, 77, 229),
      ),
      backgroundColor: const Color.fromARGB(255, 213, 177, 210),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Contador de usuarios: ${counterViewModel.count}",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterViewModel.incremented();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 151, 55, 189),
                  ),
                  child: const Icon(Icons.add, color: Colors.white),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterViewModel.decremented();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 151, 55, 189),
                  ),
                  child: const Icon(Icons.remove, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counterViewModel.reset();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                "Reseteo",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
