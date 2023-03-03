import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color primaryColor = Color(0xff1A4A57);
  //Color secondaryColor = Color(0xffDDECA2);
  Color textColor = const Color(0xff32637A);
  Widget navItems = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: const [
          Text(
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            "Home",
          ),
          SizedBox(width: 30),
          Text(
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 113, 199, 238),
            ),
            "Why Monao-Task?",
          ),
          SizedBox(width: 30),
          Text(
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 113, 199, 238),
              ),
              "Features"),
          SizedBox(width: 30),
          Text(
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 113, 199, 238),
              ),
              "Enterprise"),
          SizedBox(width: 30),
          Text(
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 113, 199, 238),
              ),
              "Pricing"),
          SizedBox(width: 30),
          Text(
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 113, 199, 238),
              ),
              "About us"),
        ],
      ),
    ],
  );

  List<Widget> mobileNav = [
    const SizedBox(height: 8),
    Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            side: BorderSide.none,
          ),
          textStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
        child: const Text(style: TextStyle(fontSize: 15), 'Home'),
      ),
    ),
    Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            side: BorderSide.none,
          ),
          textStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
        child: const Text('Why Monao-Task?'),
      ),
    ),
    Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            side: BorderSide.none,
          ),
          textStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
        child: const Text('Features'),
      ),
    ),
    Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            side: BorderSide.none,
          ),
          textStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
        child: const Text('Enterprise'),
      ),
    ),
    Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            side: BorderSide.none,
          ),
          textStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
        child: const Text('Pricing'),
      ),
    ),
    Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            side: BorderSide.none,
          ),
          textStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
        child: const Text('About us'),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 12, top: 18),
      child: Row(children: const [
        Text(
          "LOGIN / REGISTER",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(width: 5),
        Icon(Icons.arrow_forward_sharp),
      ]),
    )
  ];

  List<Widget> loginRegister = [
    Padding(
      padding: const EdgeInsets.only(right: 50.0),
      child: Row(
        children: const [
          Text("LOGIN / REGISTER"),
          SizedBox(width: 8),
          Icon(Icons.arrow_forward_sharp),
        ],
      ),
    ),
  ];

  bool mobile = false;

  @override
  Widget build(BuildContext context) {
    mobile = MediaQuery.of(context).size.width > 600 ? false : true;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: mobile
              ? const EdgeInsets.only(left: 0)
              : const EdgeInsets.only(left: 80),
          child: Row(
            children: [
              Image.asset(
                'logo.png',
                width: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
              const Text("Mono Task"),
              if (mobile) const Text("") else const SizedBox(width: 50),
              if (mobile) const Text("") else navItems,
            ],
          ),
        ),
        actions: mobile ? null : loginRegister,
      ),
      drawer: mobile
          ? Drawer(
              backgroundColor: primaryColor,
              child: Align(
                  alignment: Alignment.topLeft,
                  child: ListView(children: mobileNav)))
          : null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 150, left: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Millions Tasks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 65,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "in MonoTasks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 65,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Regain clarity calmness by getting all those tasks out of \nyour head and onto your to-do list (no matter where you are \nor what device you use).",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
