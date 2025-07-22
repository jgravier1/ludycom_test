import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

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
                'https://placekitten.com/400/300',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(Icons.image_not_supported, size: 50),
                  );
                },
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Contenido desplazable
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Descripción
                    const Text(
                      'Descripción',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Eu cillum aute aute consectetur magna occaecat cillum. Do consectetur laboris excepteur proident fugiat in. Reprehenderit reprehenderit id sit dolor anim. Eiusmod proident Lorem eu consequat consectetur qui magna laboris mollit. Non velit tempor magna deserunt esse proident magna.Dolor sit minim cupidatat quis dolor est. Ullamco quis mollit consequat nostrud nostrud dolor adipisicing sunt. ',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // Detalles de la raza
                    _buildDetailRow('Nombre del País', 'Desconocido'),
                    const SizedBox(height: 12),
                    _buildDetailRow('Inteligencia', 'Alta'),
                    const SizedBox(height: 12),
                    _buildDetailRow('Adaptabilidad', 'Media'),
                    const SizedBox(height: 12),
                    _buildDetailRow('Tiempo de vida', '12-15 años'),
                    const SizedBox(height: 12),
                    _buildDetailRow('Temperamento', 'Juguetón, amigable'),
                    const SizedBox(height: 12),
                    _buildDetailRow('Peso promedio', '3-5 kg'),
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
        Flexible(child: Text(value)),
      ],
    );
  }
}