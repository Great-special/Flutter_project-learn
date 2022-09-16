import 'package:booking_app/util/_styles.dart';
import 'package:flutter/material.dart';

class ImageWithContent extends StatelessWidget {
  const ImageWithContent({super.key, required this.hotel});
  final Map hotel; 
  
  @override
  Widget build(BuildContext context) {
    // print(hotel);
    final size = AppLayout.getsize(context);
    return Container(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: size.width * 0.6,
        height: size.height * 0.5,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.blue.shade600,
          boxShadow: [
            BoxShadow(color: Colors.red.shade400, blurStyle: BlurStyle.normal),
            const BoxShadow(blurRadius: 1, spreadRadius: 1,),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Container
            Container(
              margin: const EdgeInsets.only(top: 8),
              height: size.height * 0.25,
              decoration: BoxDecoration(
                  // color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/${hotel["image"]}"),// accessing the image from the map
                    fit: BoxFit.fill,
                  ),
                ),
              ),
    
            // Content Container
            Container(
              margin: const EdgeInsets.only(top: 8),
              // color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // accessing the values from the map
                    Text("${hotel["place"]}", style: Styles.headLine_2.copyWith(color: Colors.grey.shade500),),
                    Text("${hotel["destination"]}", style: Styles.textStyle.copyWith(color: Colors.white),),
                    Text("\$${hotel["price"]}/night", style: Styles.headLine_2.copyWith(color: Colors.grey.shade500),),
                  ],
                ),
            ),
            ],
          ),
      ),
    );
  }
}
