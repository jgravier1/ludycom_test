import 'package:flutter/material.dart';
import 'package:ludycom_test/domain/entities/cat_entity.dart';

class DetailView extends StatefulWidget {
  final CatEntity catEntity;
  const DetailView({super.key, required this.catEntity});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.network(
                widget.catEntity.imageUrl ?? 'https://placekitten.com/400/300',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(Icons.image_not_supported, size: 50),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Descripción',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.catEntity.description ?? 'No hay descripción disponible',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Detalles de la raza
                    _buildDetailRow('Nombre del País', widget.catEntity.origin),
                    const SizedBox(height: 12),
                    _buildDetailRow('Inteligencia', '${widget.catEntity.intelligence}'),
                    const SizedBox(height: 12),
                    _buildDetailRow('Adaptabilidad', '${widget.catEntity.adaptability}'),
                    const SizedBox(height: 12),
                    _buildDetailRow('Tiempo de vida', '${widget.catEntity.lifeSpan} años'),
                    const SizedBox(height: 12),
                    _buildDetailRow('Temperamento', widget.catEntity.temperament),
                    const SizedBox(height: 12),
                    _buildDetailRow('Peso promedio', '${widget.catEntity.weight} kg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      children: [
        Text(
          '$label: ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Flexible(child: Text(value,)),
      ],
    );
  }
}