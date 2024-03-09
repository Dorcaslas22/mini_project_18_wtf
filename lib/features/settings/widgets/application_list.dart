import 'package:flutter/material.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({
    super.key, required this.image,
    required this.text1,
    this.text2 = 'UI/UX Designer',
    this.text3 = 'New York, USA',
    this.lastText = '\$12000 Monthly',
    required this.buttonText,
    required this.buttonColor,
    required this.btnTextColor,
    required this.textColor,
  });

  final Widget image;
  final String text1;
  final String text2;
  final String text3;
  final String lastText;
  final Color  textColor;
  final String buttonText;
  final Color buttonColor;
  final Color btnTextColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical:8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                        fontSize: 16,
                    ),
                  ),
                  Text(text2,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                  Text(text3,
                    style: const TextStyle(
                        fontSize: 16
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed:(){},
                  icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          const SizedBox(height:5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: btnTextColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                    ),
                ),
                child: Text(buttonText,
                  style: const TextStyle(
                      fontSize: 16,
                  ),
                ),
              ),
              Text(lastText,
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),)
            ],
          )
        ],
      ),
    );
  }
}
