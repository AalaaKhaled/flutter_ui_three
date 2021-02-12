import 'package:flutter/material.dart';
import 'package:flutter_ui_three/models/place.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  PlaceCard({@required this.place});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
      child: SizedBox(
        width: 150,
        child: GestureDetector(
          onTap: () {},
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  place.image,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 150,
                height: 200,
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14, shadows: [
                    Shadow(
                        color: Colors.black,
                        blurRadius: 6.0,
                        offset: Offset(0, 3.0))
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
