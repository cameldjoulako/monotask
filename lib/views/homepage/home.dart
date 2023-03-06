import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color primaryColor = const Color(0xff1A4A57);
  Color bgColor = const Color(0xffEBF0F0);
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
              : const EdgeInsets.only(left: 80, top: 20, bottom: 10),
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
                child: ListView(children: mobileNav),
              ),
            )
          : null,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: primaryColor,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 150, left: 100, bottom: 150),
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
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Icon(
                                Icons.check,
                                size: 15,
                                color: Color(0xff1A4A57),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Schedule",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Icon(
                                Icons.check,
                                size: 15,
                                color: Color(0xff1A4A57),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Schedule",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Icon(
                                Icons.check,
                                size: 15,
                                color: Color(0xff1A4A57),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Schedule",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: const Color(0xff1A4A57),
                            elevation: 2,
                            backgroundColor: const Color(0xffDDECA2),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                              top: 13,
                              bottom: 13,
                              left: 25,
                              right: 25,
                            ),
                            child: Text(
                              "GET STARTED",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 40),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            elevation: 2,
                            backgroundColor: const Color(0xff1A4A57),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                              top: 13,
                              bottom: 13,
                              left: 25,
                              right: 25,
                            ),
                            child: Text(
                              "DOWNLOAD APP",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            //deuxieme section
            Container(
              color: bgColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 80, left: 100),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Trusted by over",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xff1A4A57),
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "200k client",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1A4A57),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80),
                    Row(
                      children: [
                        Image.asset(
                          'assets/feedly.png',
                          width: 220,
                        ),
                        const SizedBox(width: 36),
                        Image.asset(
                          'assets/embedly.png',
                          width: 220,
                        ),
                        const SizedBox(width: 35),
                        Image.asset(
                          'assets/basekit.png',
                          width: 220,
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: ((MediaQuery.of(context).size.width) / 2) - 50,
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(15),
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(1),
                                ),
                                child: Column(children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Task",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.add,
                                            size: 15,
                                          ),
                                          Text("Add task"),
                                        ],
                                      )
                                    ],
                                  )
                                ]),
                              ),
                              Image.asset(
                                "assets/fleche.png",
                                width: 200,
                                height: 400,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: ((MediaQuery.of(context).size.width) / 2) - 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Organize\neverything\nin live",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 80,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                "Whether there is a work-related task or a personal\ngoal, Mono-Task is here to help you manage all our\nto-dos",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          size: 15,
                                          color: Color(0xff1A4A57),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        "Get reminded anytime, anywhere",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff1A4A57),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          size: 15,
                                          color: Color(0xff1A4A57),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        "Get reminded anytime, anywhere",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff1A4A57),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          size: 15,
                                          color: Color(0xff1A4A57),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        "Get reminded anytime, anywhere",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff1A4A57),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
