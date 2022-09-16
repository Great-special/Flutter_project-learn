import 'package:booking_app/mywidgets/my_main_widgets.dart';
import 'package:booking_app/mywidgets/ticket_view_card.dart';
import 'package:booking_app/util/_styles.dart';
import 'package:booking_app/util/app_info_list.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:gap/gap.dart';

import '../mywidgets/content_image_details.dart';
import '../util/_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(//Creates a scrollable, linear array of widgets
          children: [
        Container(
          // margin: const EdgeInsets.only(top: 25.0),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: Styles.headLine_3,
                      ),
                      // const SizedBox(height: 5,),
                      const Gap(5),
                      Text(
                        'Book Tickets',
                        style: Styles.headLine_1,
                      )
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.png'),
                      ),
                    ),
                    // child: Image.asset('assets/images/img_1.png'),
                  )
                ],
              ),
              const Gap(20), // Gap above the search container
              Container(
                height: 50,
                width: double.infinity * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Gap(5),
                    Icon(Icons.search, color: Colors.grey.shade500),
                    const Gap(5),
                    Text(
                      "Search",
                      style: Styles.textStyle
                          .copyWith(color: Colors.grey.shade500),
                    )
                  ],
                ),
              ),
              const Gap(15),
              DoubleTitle(
                first_text: "Upcoming Flights",
                second_text: "View all",
              ),
              const Gap(15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  // working with list of maps
                  children: flightsDetails.map((pair) => TicketView(ticketDetails: pair)).toList()
                ),
              ),
              const Gap(20),
              DoubleTitle(first_text: "Hotels", second_text: "View all"),
              const Gap(15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(5),
                child: Row(
                  /*
                  the hotelList.map takes a function thats takes one element, 
                  and loops through the map and returns each key value pair, 
                  stored in the element and it loops through the whole list once.
                  */
                  children: hotelList.map(
                        (item) => ImageWithContent(hotel: item),
                      ).toList(),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
