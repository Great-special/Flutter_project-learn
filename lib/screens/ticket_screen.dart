import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking_app/mywidgets/my_main_widgets.dart';
import 'package:booking_app/util/_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../mywidgets/ticket_view_card.dart';
import '../util/app_info_list.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          children: [
            const Gap(15),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Tickets",
                style: Styles.headLine_1.copyWith(
                  fontSize: 28,
                ),
              ),
            ),
            const Gap(10),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.07,
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: [
                  Container(
                    width: (size.width * 0.9) / 2,
                    height: size.height * 0.08,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      "Upcoming",
                      style: Styles.textStyle,
                    )),
                  ),
                  Container(
                    width: (size.width * 0.9) / 2,
                    height: size.height * 0.08,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      color: Colors.grey.shade300,
                    ),
                    child: Center(
                      child: Text(
                        'Previous',
                        style: Styles.textStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: TicketView(
                ticketDetails: flightsDetails[0],
                colorUp: Colors.white,
                textColor: Colors.black,
                colorDw: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumLayoutText(
                        headText: "Flutter Dash",
                        subText: "Passenger",
                        alignment: CrossAxisAlignment.start),
                    ColumLayoutText(
                        headText: '5221 478566',
                        subText: 'Passport',
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 1,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumLayoutText(
                        headText: "0055 444 77147",
                        subText: "Number or E-tictet",
                        alignment: CrossAxisAlignment.start),
                    ColumLayoutText(
                        headText: 'B2SG28',
                        subText: 'Booking code',
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 1,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const Image(image: AssetImage('assets/images/visa.png'), height: 40, width: 45,),
                        Row(
                          children: [
                            Image.asset('assets/images/visa.png', scale: 10),
                            Text(
                              '***2462',
                              style: Styles.textStyle
                                  .copyWith(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Text(
                          'Payment method',
                          style: Styles.headLine_4,
                        )
                      ],
                    ),
                    ColumLayoutText(
                        headText: '\$249.99',
                        subText: 'Price',
                        alignment: CrossAxisAlignment.end),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 1,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),

              padding: const EdgeInsets.only(top: 20, bottom: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
            
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: "https//github.com/",
                    drawText: false,
                    height: 70,
                    width: double.infinity,
                    color: Styles.textColor,
                  )),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TicketView(ticketDetails: flightsDetails[0]),
            )
          ],
        ),
        Positioned(
          top: 256,
          left: 7,
          child: Container(
            padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 5, color: Styles.textColor)
          ),
          child: CircleAvatar(maxRadius: 5, backgroundColor: Styles.textColor),
        )),
        Positioned(
          top: 256,
          right: 10,
          child: Container(
            padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 5, color: Styles.textColor)
          ),
          child: CircleAvatar(maxRadius: 5, backgroundColor: Styles.textColor),
        ))
      ]),
    );
  }
}
