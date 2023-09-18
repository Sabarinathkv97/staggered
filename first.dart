import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class straggled extends StatefulWidget {
  const straggled({super.key});

  @override
  State<straggled> createState() => _straggledState();
}

class _straggledState extends State<straggled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.builder(
        itemCount: 4,
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(4),
          child: Image.asset("img/img" + (index + 1).toString() + ".png"),
        ),
      ),
    );
  }
}
