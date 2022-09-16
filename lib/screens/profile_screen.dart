import 'package:booking_app/util/_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/img_1.png")),
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLine_1,
                  ),
                  Text("New-York", style: Styles.headLine_4),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.white70,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black87,
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 13,
                          ),
                        ),
                        const Gap(3),
                        Text(
                          "Premium Status",
                          style: Styles.headLine_3.copyWith(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                  onTap: () => print('You are tapped'),
                  child: Text(
                    'Edit',
                    style: Styles.headLine_4.copyWith(fontSize: 16),
                  )),
            ],
          ),
          const Gap(25),
          Divider(
            color: Colors.grey.shade500,
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Styles.primaryColor,
                ),
              ),
              Positioned(
                top: -45,
                right: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                      width: 15,
                      color: Colors.blueAccent.shade700,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          size: 27,
                          color: Styles.primaryColor,
                        ),
                      ),
                      const Gap(15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You got a new award!',
                            style: Styles.headLine_3.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.white),
                          ),
                          Text(
                            'you have 150 flights in a year',
                            style: Styles.textStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
          const Gap(15),
          Text(
            'Accumulated miles',
            style: Styles.headLine_1,
          ),
          const Gap(25),
          Center(
              child: Text(
            '199255',
            style: Styles.headLine_1.copyWith(fontSize: 30),
          )),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Miles accurued',
                  style: Styles.headLine_4.copyWith(fontSize: 18)),
              Text('28 May, 2022',
                  style: Styles.headLine_4.copyWith(fontSize: 18)),
            ],
          ),
          const Gap(15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "23 042",
                style: Styles.textStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Miles',
                style: Styles.headLine_4,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "23 042",
                style: Styles.textStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Miles',
                style: Styles.headLine_4,
              )
            ],
          ),
          ],),

          const Gap(15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "23 042",
                style: Styles.textStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Miles',
                style: Styles.headLine_4,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "23 042",
                style: Styles.textStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Miles',
                style: Styles.headLine_4,
              )
            ],
          ),
          ],),

          const Gap(15),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "23 042",
                style: Styles.textStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Miles',
                style: Styles.headLine_4,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "23 042",
                style: Styles.textStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Miles',
                style: Styles.headLine_4,
              )
            ],
          ),
          ],),
        ],
      ),
    );
  }
}
