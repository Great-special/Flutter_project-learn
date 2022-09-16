import 'package:booking_app/util/_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../mywidgets/my_main_widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        children: [
          const Gap(25),
          Text(
            "What are \nyou looking for?",
            style: Styles.headLine_1
                .copyWith(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          const Gap(15),
          // Row holding the Airline Tickets and Hotels tabs
          Row(
            children: [
              Container(
                width: size.width * 0.9,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.shade300,
                ),
                child: Row(children: [
                  Container(
                    width: (size.width * 0.9) / 2,
                    height: size.height * 0.05,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Airline Tickets',
                        style: Styles.textStyle,
                      ),
                    ),
                  ),
                  Container(
                    width: (size.width * 0.9) / 2,
                    height: size.height * 0.05,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                    ),
                    child: Center(
                      child: Text(
                        'Hotels',
                        style: Styles.textStyle,
                      ),
                    ),
                  )
                ]),
              )
            ],
          ),
          const Gap(15),
          // Row holding the Departure input box
          Container(
            height: size.height * 0.07,
            width: size.width * 0.7,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const Icon(Icons.flight_takeoff),
                const Gap(5),
                Text(
                  'Departure',
                  style: Styles.textStyle,
                ),
              ],
            ),
          ),

          // Row holding the Departure input box
          const Gap(15),
          Container(
            height: size.height * 0.07,
            width: size.width * 0.7,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const Icon(Icons.flight_land),
                const Gap(5),
                Text(
                  'Arrival',
                  style: Styles.textStyle,
                ),
              ],
            ),
          ),
          const Gap(25),

          Container(
            height: size.height * 0.07,
            width: size.width * 0.7,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Styles.primaryColor,
            ),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          const Gap(30),
          // My custom made Widgets For placing two items on the screen
          DoubleTitle(
            first_text: "Upcoming Flights",
            second_text: "View all",
          ),
          const Gap(15),
          // the container holding the lower part of the screen
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * 0.6,
                    width: size.width * 0.4,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(children: [
                      Container(
                        height: size.height * 0.27,
                        width: size.width * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/sit.jpg'),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        height: size.height * 0.23,
                        width: size.width * 0.35,
                        margin: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          '20% discount \non business class \ntickets from Airline \nOn International',
                          style: Styles.textStyle,
                        ),
                      ),
                    ]),
                  ),
                  // The column holding the Green card and red card
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Stacking widget on top of each other using the stack widget
                      Stack(
                        children: [
                          Container(
                            width: size.width * 0.4,
                            height: size.height * 0.3,
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green.shade500,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discount\nfor survey',
                                  style: Styles.headLine_3.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Gap(5),
                                Text(
                                  'Take the survey\nabout our services\nand get a discount',
                                  style: Styles.textStyle.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          // Used to control the position of the stacked widgets
                          Positioned(
                            top: -65,
                            right: -30,
                            child: Container(
                              width: size.width * 0.2,
                              height: size.height * 0.25,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 15, color: Colors.green.shade900),
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Gap(5),
                      Container(
                        width: size.width * 0.4,
                        height: size.height * 0.3,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red.shade500,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Take Love',
                              style: Styles.headLine_3.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Gap(5),
                            RichText(text: const TextSpan(
                              children: [
                              TextSpan(
                                text: "Smiles",
                              ),
                
                              TextSpan(
                                text: "Love",
                                
                              )
                              ]
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
