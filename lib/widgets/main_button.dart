import 'package:flutter/material.dart';
import 'my_button.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Center se encargará de mantener el contenido centrado
        child: Container(
          width: 300.0,
          height: 200.0,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: MyButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
