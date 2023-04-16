import 'package:flutter/material.dart';

main() {
  runApp(const PersonalPortfolioApp());
}

class PersonalPortfolioApp extends StatelessWidget {
  const PersonalPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
                    image: NetworkImage('https://github.com/account')),
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
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
