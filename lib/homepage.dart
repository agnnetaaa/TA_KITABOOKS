import 'package:flutter/material.dart';
import 'dart:ui';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 66, 75),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 36),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 13),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 39,
                                width: 39,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(19),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nenenew',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      Text('Premium fans',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          )
                          ),
                      ),
                      SizedBox(height: 24,),
                        Padding(
                         padding: EdgeInsets.only(right: 9),
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: 'Search',
                             hintStyle: TextStyle(
                               color: Colors.grey,
                             ),
                             prefixIcon: Icon(
                               Icons.search,
                               color: Colors.grey,
                             ),
                             filled: true,
                             fillColor: Colors.white,
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide.none,
                             ),
                           ),
                         ),
                         ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset('assets/banner1.png'),
                ),
                ),
            ],
          ),
        ),
      );
  }
}
