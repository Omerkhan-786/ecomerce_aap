import 'package:e_commorce/intropage.dart' show Intropage;
import 'package:e_commorce/modeles/card.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(myaap());
}

class myaap extends StatelessWidget {
  const myaap({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => card(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intropage(),
      ),
    );
  }
}
