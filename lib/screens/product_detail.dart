import 'package:flutter/material.dart';
import 'package:radkicks/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final categoryLabel = product.category.isEmpty
        ? 'unknown'
        : product.category;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        backgroundColor: Colors.red[800],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildThumbnail(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (product.isFeatured)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 6.0,
                      ),
                      margin: const EdgeInsets.only(bottom: 12.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        'Featured',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 12,
                    runSpacing: 8,
                    children: [
                      _Chip(label: categoryLabel.toUpperCase()),
                      _Chip(label: 'Brand: ${product.brand}'),
                      _Chip(label: 'Size: ${product.size}'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.sell, size: 20, color: Colors.redAccent),
                      const SizedBox(width: 8),
                      Text(
                        'Rp${product.price}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.inventory_2,
                        size: 18,
                        color: Colors.blueGrey,
                      ),
                      const SizedBox(width: 6),
                      Text('Stock: ${product.stock}'),
                      const SizedBox(width: 16),
                      const Icon(Icons.star, size: 18, color: Colors.amber),
                      const SizedBox(width: 6),
                      Text(product.rating.toStringAsFixed(1)),
                    ],
                  ),
                  const Divider(height: 32),
                  Text(
                    product.description,
                    style: const TextStyle(fontSize: 16.0, height: 1.6),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThumbnail() {
    final thumbnailUrl = product.thumbnail;
    if (thumbnailUrl == null || thumbnailUrl.isEmpty) {
      return Container(
        width: double.infinity,
        height: 250,
        color: Colors.grey[200],
        child: const Center(child: Icon(Icons.image_not_supported, size: 50)),
      );
    }

    return Image.network(
      'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(thumbnailUrl)}',
      width: double.infinity,
      height: 250,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => Container(
        height: 250,
        color: Colors.grey[300],
        child: const Center(child: Icon(Icons.broken_image, size: 50)),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  final String label;

  const _Chip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.indigo.shade100,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.indigo.shade700,
        ),
      ),
    );
  }
}
