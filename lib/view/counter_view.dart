import 'package:flutter/material.dart';
import 'package:flutter_application_3/viewmodel/counter_viewmodel.dart';
import 'package:provider/provider.dart';
class CounterView extends StatelessWidget {
  const CounterView({super.key});

@override
Widget build(BuildContext context) {
  final counterViewModel = Provider.of<CounterViewModel>(context);
  return Scaffold(
    appBar: AppBar(title: Text('Contador Con MVVM'),
    ),
    body: Center( 
      child: Column(
      children: <Widget>[
        Text("contador:${counterViewModel.count}"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
          onPressed:() {  
            counterViewModel.incremented();
        },
        child:Icon(Icons.add),
        ), 
            ElevatedButton(onPressed:() {
          counterViewModel.decremented();
        },
        child:Icon(Icons.remove),
        ),
          ],
        )
        
      ],
    )
    )
  );
}
}