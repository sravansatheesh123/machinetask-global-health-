import 'package:flutter/material.dart';

class Drlist extends StatelessWidget {
  const Drlist({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(18.0),
      children: [
        buildDoctorCard(
          context,
          image: 'assets/images/download.jpg',
          name: 'Dr. Sree Santhwana',
          department: 'Cardiology',
        ),
        buildDoctorCard(
          context,
          image: 'assets/images/download.jpg',
          name: 'Dr. John Doe',
          department: 'Neurology',
        ),
        buildDoctorCard(
          context,
          image: 'assets/images/download.jpg',
          name: 'Dr. Jane Smith',
          department: 'Orthopedics',
        ),
        buildDoctorCard(
          context,
          image: 'assets/images/download.jpg',
          name: 'Dr. Michael Brown',
          department: 'Pediatrics',
        ),
        buildDoctorCard(
          context,
          image: 'assets/images/download.jpg',
          name: 'Dr. Emily White',
          department: 'Dermatology',
        ),
        buildDoctorCard(
          context,
          image: 'assets/images/download.jpg',
          name: 'Dr. Daniel Green',
          department: 'Psychiatry',
        ),
      ],
    );
  }

  Widget buildDoctorCard(
      BuildContext context, {
        required String image,
        required String name,
        required String department,
      }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height; // Fetch screen height here

    return Container(
      height: screenHeight * 0.2, // Use dynamic height (20% of screen height)
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 18.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left side with image
          Expanded(
            flex: screenWidth > 600 ? 1 : 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: double.infinity,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Text("Image not found"),
                  );
                },
              ),
            ),
          ),

          Expanded(
            flex: screenWidth > 600 ? 2 : 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: screenWidth > 600 ? 18 : 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        color: Colors.red,
                        onPressed: () {
                          debugPrint("Favorite button pressed for $name");
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Department
                  Text(
                    'Department: $department',
                    style: TextStyle(
                      fontSize: screenWidth > 600 ? 16 : 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Rating with stars
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        index < 4 ? Icons.star : Icons.star_border,
                        color: Colors.amber,
                        size: screenWidth > 600 ? 20 : 18,
                      );
                    }),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Booking Status: Available',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
