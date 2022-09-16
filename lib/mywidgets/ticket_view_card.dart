import 'package:booking_app/util/_styles.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketDetails;
  Color? colorDw;
  Color? colorUp;
  Color? textColor;
  // const TicketView({Key? key, required this.ticketDetails, this.iswhite}):super(key:key);
  TicketView({super.key, required this.ticketDetails, this.colorDw, this.colorUp, this.textColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);

    return Container(
      padding: const EdgeInsets.all(1),
      child: SizedBox(
        width: size.width * 0.9,
        height: 200,
        child: Container(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            children: [
              // Container for Blue Part 
              Container(
                // Container for the Blue part of the card
                height: 80,
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                decoration: BoxDecoration(
                  color: colorUp ?? Colors.blue.shade700,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        // column for the FROM location in the blue part of the card
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${ticketDetails['from']['code']}",
                            style: Styles.headLine_4.copyWith(color: textColor ??Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            "${ticketDetails['from']['name']}",
                            style: Styles.textStyle
                                .copyWith(color: textColor ?? Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 14,
                                width: 14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                      Border.all(width: 2.5, color: textColor ?? Colors.white),
                                  color: Colors.transparent,
                                ),
                              ),
                              // Icon plus shape and dash
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Center(
                                    child: SizedBox(
                                      width: size.width * 0.3,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Gap(5),
                                        Text(
                                          "-",
                                          style: Styles.textStyle
                                              .copyWith(color:  textColor ??Colors.white),
                                        ),
                                        const Gap(5),
                                        Text(
                                          "-",
                                          style: Styles.textStyle
                                              .copyWith(color: textColor ?? Colors.white),
                                        ),
                                        const Gap(5),
                                        Text(
                                          "-",
                                          style: Styles.textStyle
                                              .copyWith(color: textColor ?? Colors.white),
                                        ),
                                        const Gap(5),
                                        Text(
                                          "-",
                                          style: Styles.textStyle
                                              .copyWith(color: textColor ?? Colors.white),
                                        ),
                                        const Gap(5),
                                      ],
                                ),
                                    ),
                                  ),
                                Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.airplanemode_active_rounded,
                                    color: textColor ?? Colors.white),
                              ),
                                ],
                              ),
                              
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border:
                                      Border.all(width: 2.5, color:  textColor ?? Colors.white),
                                  color: Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                          // Flying_time
                          const Gap(5),
                          Text(
                            ticketDetails['flying_time'],
                            style: Styles.textStyle
                                .copyWith(color: textColor ?? Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                      Column(
                        // column for the TO location in the blue part of the card
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticketDetails['to']['code']}",
                            style: Styles.headLine_4.copyWith(color:  textColor ?? Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            "${ticketDetails['to']['name']}",
                            style: Styles.textStyle
                                .copyWith(color:  textColor ??Colors.white, fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
              // Container for Red Part 
              Container(
                // Container for the Red part of the card
                height: 120,
                decoration: BoxDecoration(
                  color: colorDw ?? Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: colorDw == null? const Radius.circular(20): Radius.zero,
                    bottomRight: colorDw == null? const Radius.circular(20): Radius.zero,
                  ),
                ),
                child: Column( // Main column holding the items of the red part of the card
                  children: [
                    const Gap(7.5),
                    Row(
                      // circular dash design
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 15,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            color:  textColor ??Colors.white,
                          ),
                        ),
                        // dashes
                        SizedBox( // dashes
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Gap(10),
                                Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color: textColor ?? Colors.white),
                                ),
                                const Gap(10),
                                Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color:  textColor ??Colors.white),
                                ),
                                const Gap(10),
                                Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color: textColor ?? Colors.white),
                                ),
                                const Gap(10),
                                Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color:  textColor ??Colors.white),
                                ),
                                const Gap(10),
                                Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color: textColor ?? Colors.white),
                                ),
                                const Gap(10),
                                Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color: textColor ?? Colors.white),
                                ),
                                const Gap(15),
                                Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color: textColor ?? Colors.white),
                                ),
                                const Gap(15),
                                Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color: textColor ?? Colors.white),
                                ),
                                const Gap(15),
                                 Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color:  textColor ??Colors.white),
                                ),
                                const Gap(15),
                                 Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color:  textColor ??Colors.white),
                                ),
                                const Gap(15),
                                 Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color:  textColor ??Colors.white),
                                ),
                                const Gap(15),
                                 Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color:  textColor ??Colors.white),
                                ),
                                const Gap(15),
                                Text(
                                  "-",
                                  style: Styles.textStyle
                                      .copyWith(color:  textColor ??Colors.white),
                                ),
                                const Gap(10),
                              ],
                            ),
                        ),
                        Container(
                          width: 15,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            color:  textColor ??Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(// main row holding the text details in three column
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ticketDetails['date'],
                                style: Styles.headLine_4.copyWith(color: textColor ?? Colors.white),
                              ),
                              Text(
                                "Date",
                                style: Styles.textStyle.copyWith(color: textColor ?? Colors.white, fontSize: 14,),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                ticketDetails["departure"],
                                style: Styles.headLine_4.copyWith(color: textColor ?? Colors.white),
                              ),
                              Text(
                                "Departure Time",
                                style: Styles.textStyle.copyWith(color: textColor ?? Colors.white, fontSize: 14,),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "${ticketDetails["seat_number"]}",
                                style: Styles.headLine_4.copyWith(color: textColor ?? Colors.white),
                              ),
                              Text(
                                "Number",
                                style: Styles.textStyle.copyWith(color: textColor ?? Colors.white, fontSize: 14,),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
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
