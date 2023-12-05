import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? title;
  const CustomCardType2({Key? key, required this.imageUrl, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 20,
        child: Column(
          children: [
            FadeInImage(
                image: NetworkImage(
                  imageUrl,
                ),
                placeholder: const AssetImage("assets/images/loading.gif") ,
                width: double.infinity,
                height: 230,
                fit: BoxFit.cover,
                fadeInDuration: const  Duration(milliseconds: 200)),
            if (title != null)
              Container(
                alignment: Alignment.centerRight,
                padding:
                    const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                child: Column(children: [
                  Text(title!),
                  TextButton(
                      onPressed: () {}, child: Text("Ver más")) //TODO: Ver más
                ]),
              )
          ],
        ));
  }
}
