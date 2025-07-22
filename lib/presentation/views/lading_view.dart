import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LadingView extends StatefulWidget {
  const LadingView({super.key});

  @override
  State<LadingView> createState() => _LadingViewState();
}

class _LadingViewState extends State<LadingView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: [
          SearchBar(
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            elevation: WidgetStatePropertyAll(0),
            side: WidgetStatePropertyAll(
              BorderSide(color: Colors.grey.shade400, width: 1.5),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            trailing: [Icon(Icons.search)],
          ),
          // ...existing code...
          Expanded(
            child: ListView.builder(
              
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      context.push('/details');
                    },
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Nombre Raza',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Más...',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Center(
                              child: Image.network(
                                'https://placekitten.com/200/200',
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    height: 150,
                                    width: 150,
                                    color: Colors.grey.shade200,
                                    child: const Icon(Icons.image_not_supported),
                                  );
                                },
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'País de origen: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text('Desconocido'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Inteligencia: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text('Alta'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
