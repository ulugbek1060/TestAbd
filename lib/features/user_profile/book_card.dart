import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String name;
  final String author;
  final double rating; // 0.0 - 5.0
  final String coverImage;
  final VoidCallback? onTap;

  const BookCard({
    super.key,
    required this.name,
    required this.author,
    required this.rating,
    required this.coverImage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              /// Cover image (fills card)
              Image.network(
                coverImage,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  color: Colors.white.withOpacity(0.05),
                  child: const Icon(Icons.book, color: Colors.white54, size: 40),
                ),
              ),

              /// Dark gradient overlay
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.85),
                    ],
                  ),
                ),
              ),

              // Bottom content
              Positioned(
                left: 16,
                right: 16,
                bottom: 14,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      author,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        _RatingStars(rating: rating),
                        const SizedBox(width: 6),
                        Text(
                          rating.toStringAsFixed(1),
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------- SUPPORTING WIDGETS ----------------

class _RatingStars extends StatelessWidget {
  final double rating;

  const _RatingStars({required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        final filled = rating >= index + 1;
        final halfFilled = rating > index && rating < index + 1;

        return Icon(
          filled
              ? Icons.star_rounded
              : halfFilled
              ? Icons.star_half_rounded
              : Icons.star_border_rounded,
          size: 18,
          color: const Color(0xFFFFC107),
        );
      }),
    );
  }
}
