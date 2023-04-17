import 'package:flutter/material.dart';

main() {
  runApp(const PersonalPortfolioApp());
}

class PersonalPortfolioApp extends StatelessWidget {
  const PersonalPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: PersonalPortfolio(),
        ),
      ),
    );
  }
}

class PersonalPortfolio extends StatefulWidget {
  final Color appColor = Colors.blueAccent;

  @override
  State<PersonalPortfolio> createState() => _PersonalPortfolio();
}

class _PersonalPortfolio extends State<PersonalPortfolio>with TickerProviderStateMixin {
  late AnimationController ctrl;
void initState() {
  super.initState();
  ctrl = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2)
  )..repeat();
}

@override
void dispose() {
  ctrl.dispose();
  super.dispose();
}


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                image: const DecorationImage(
                    image: NetworkImage('data:image/jpeg;base64,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')),
                border: Border.all(color: Colors.blue, width: 1)),
          ),
          Text(
            'Herbert Owusu',
            style: TextStyle(
                color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text('Flutter GDE'),
          SizedBox(height: 10),
          TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 8),
                  Text(
                    'herbs@gmail.com',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
