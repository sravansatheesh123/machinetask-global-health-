import 'package:flutter/material.dart';

import 'drlist.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 239, 243, 250),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Our service ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              color: Colors.white,
                              height: 60,
                              width: 160,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Colors.blue,
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'assets/images/pngtree-medical-logo-vector-png-image_6713322.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 15,
                                      left: 60,
                                      child: Text(
                                        'Clinic Appoiment ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff727271),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              color: Colors.white,
                              height: 60,
                              width: 160,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Colors.blue,
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'assets/images/online.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 15,
                                      left: 60,
                                      child: Text(
                                        'Online Appoiment',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff727271),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1),

                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ensures text is aligned on opposite sides
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Offer  ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {

                          },
                          child: const Text(
                            "View All",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        height: 150,
                        color: Colors.white,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/images/CENTER.jpg",height: 300,width: 200,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Categories  ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Add your "View All" logic here
                          },
                          child: const Text(
                            "View All",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              color: Colors.white,
                              height: 60,
                              width: 160,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Colors.blue,
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'assets/images/pngtree-medical-logo-vector-png-image_6713322.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 15,
                                      left: 60,
                                      child: Text(
                                        'Cardiology ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff727271),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              color: Colors.white,
                              height: 60,
                              width: 160,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Colors.blue,
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'assets/images/online.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 15,
                                      left: 60,
                                      child: Text(
                                        'Neurology ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff727271),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),


              SizedBox(width: 1),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: Colors.white,
                    height: 60,
                    width: 160,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              color: Colors.blue,
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                'assets/images/md.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 15,
                            left: 60,
                            child: Text(
                              'Dermatology ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff727271),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              )
                )
              )
                      ],

                    ),
                  ),
                  SizedBox(height: 5),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              color: Colors.white,
                              height: 60,
                              width: 160,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Colors.blue,
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'assets/images/2nd.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 15,
                                      left: 60,
                                      child: Text(
                                        'Pulmonology  ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff727271),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              color: Colors.white,
                              height: 60,
                              width: 160,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Colors.blue,
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'assets/images/3rd.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 15,
                                      left: 60,
                                      child: Text(
                                        'Surgery ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff727271),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Container(
                                  color: Colors.white,
                                  height: 60,
                                  width: 160,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Container(
                                            color: Colors.blue,
                                            height: 50,
                                            width: 50,
                                            child: Image.asset(
                                              'assets/images/4th.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 15,
                                          left: 60,
                                          child: Text(
                                            'Nephrology ',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff727271),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            )
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Drlist(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
