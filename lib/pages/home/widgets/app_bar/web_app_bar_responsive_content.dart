import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          print(
              'biggest ${constraints.biggest} smallest ${constraints.smallest}');
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
                      IconButton(
                          color: Colors.grey[500],
                          onPressed: () {},
                          icon: const Icon(Icons.search)),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Pesquise alguma coisa aqui",
                              isCollapsed: true),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                const SizedBox(
                  width: 32,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Aprender',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(
                  height: 8,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Flutter',
                      style: TextStyle(color: Colors.white),
                    ))
              ]
            ],
          );
        },
      ),
    );
  }
}
