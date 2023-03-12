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

  bool mobile = false;

  @override
  Widget build(BuildContext context) {
    mobile = MediaQuery.of(context).size.width > 1200 ? false : true;
    final mobile1200 = MediaQuery.of(context).size.width > 1200 ? false : true;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: mobile
              ? const EdgeInsets.only(left: 0)
              : const EdgeInsets.only(left: 80, top: 20, bottom: 10, right: 80),
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
              if (mobile)
                const Text("")
              else
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      navItems,
                      if (!mobile)
                        Row(
                          children: const [
                            Text("LOGIN / REGISTER"),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward_sharp),
                          ],
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),
        //actions: mobile ? null : loginRegister,
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
                padding: EdgeInsets.only(
                  top:
                      MediaQuery.of(context).size.shortestSide < 600 ? 50 : 150,
                  left:
                      MediaQuery.of(context).size.shortestSide < 600 ? 33 : 100,
                  bottom:
                      MediaQuery.of(context).size.shortestSide < 600 ? 50 : 150,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        double fontSize = constraints.maxWidth > 600 ? 65 : 30;
                        return Text(
                          "Millions Tasks\nin MonoTasks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                            fontWeight: FontWeight.w900,
                          ),
                        );
                      },
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

            /* SECTION 2 */
            Container(
              color: bgColor,
              child: Padding(
                padding: mobile1200
                    ? const EdgeInsets.all(30)
                    : const EdgeInsets.only(top: 80, left: 100),
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
                    if (mobile1200)
                      const SizedBox(height: 45)
                    else
                      const SizedBox(height: 80),
                    /* SECTION CLIENTS */
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        double maxWidth = constraints.maxWidth;
                        if (maxWidth < 1200) {
                          return Column(
                            children: [
                              Image.asset(
                                'assets/feedly.png',
                                width: 100,
                              ),
                              const SizedBox(height: 36),
                              Image.asset(
                                'assets/embedly.png',
                                width: 110,
                              ),
                              const SizedBox(height: 35),
                              Image.asset(
                                'assets/basekit.png',
                                width: 110,
                              ),
                            ],
                          );
                        } else {
                          return Row(
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
                          );
                        }
                      },
                    ),
                    /*FIN SECTION CLIENTS */
                    const SizedBox(height: 100),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        if (constraints.maxWidth < 1200) {
                          // taille de l'écran pour mobile
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Organize\neverything\nin live",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                    "Get reminded anytime, anywhere",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff1A4A57),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 55,
                              ),
                              //task date and hour mobile
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
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
                                          Text(
                                            "Add task",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        width: 55,
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff1A4A57),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Text(
                                              "MON",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "07/12",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Text(
                                            "TUE",
                                            style: TextStyle(
                                              color: Color(0xff1A4A57),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "08/12",
                                            style: TextStyle(
                                              color: Color(0xff1A4A57),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Text(
                                            "WED",
                                            style: TextStyle(
                                              color: Color(0xff1A4A57),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "10/12",
                                            style: TextStyle(
                                              color: Color(0xff1A4A57),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Text(
                                            "THU",
                                            style: TextStyle(
                                              color: Color(0xff1A4A57),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "12/12",
                                            style: TextStyle(
                                              color: Color(0xff1A4A57),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Text(
                                            "FRI",
                                            style: TextStyle(
                                              color: Color(0xff1A4A57),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            "13/12",
                                            style: TextStyle(
                                              color: Color(0xff1A4A57),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE3E9EB),
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "08:00",
                                              style: TextStyle(
                                                color: Color(0xff1A4A57),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            const Text(
                                              "Finish to build App",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                color: const Color(0xff1A4A57),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: const Icon(
                                                Icons.check,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Text(
                                          "Complete the flow of\nadd book and payments\nusing local banks",
                                          style: TextStyle(
                                            color: Color(0xff1A4A57),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE3E9EB),
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "09:30",
                                          style: TextStyle(
                                            color: Color(0xff1A4A57),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        const Text(
                                          "Continous exploration",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                        const SizedBox(width: 60),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff1A4A57),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: const Icon(
                                            Icons.check,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffD7E7A0),
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "10:00",
                                          style: TextStyle(
                                            color: Color(0xff1A4A57),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          "Workout",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffD7E7A0),
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "11:00",
                                          style: TextStyle(
                                            color: Color(0xff1A4A57),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          "Read Book",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ); // fin affichage pour mobile
                        } else {
                          // affichage pour grand écran
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        ((MediaQuery.of(context).size.width) /
                                                2) -
                                            50,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(15),
                                              width: 350,
                                              //height: 900,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(1),
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "Task",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: const [
                                                          Icon(
                                                            Icons.add,
                                                            size: 15,
                                                          ),
                                                          Text(
                                                            "Add task",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(height: 15),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        width: 55,
                                                        height: 55,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color(
                                                              0xff1A4A57),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              "MON",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text(
                                                              "07/12",
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            "TUE",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff1A4A57),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                            ),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Text(
                                                            "08/12",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff1A4A57),
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            "WED",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff1A4A57),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                            ),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Text(
                                                            "10/12",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff1A4A57),
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            "THU",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff1A4A57),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                            ),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Text(
                                                            "12/12",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff1A4A57),
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            "FRI",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff1A4A57),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                            ),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Text(
                                                            "13/12",
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff1A4A57),
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 15),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffE3E9EB),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1),
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "08:00",
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff1A4A57),
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 25),
                                                            const Text(
                                                              "Finish to build App",
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 15,
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 80),
                                                            Container(
                                                              height: 20,
                                                              width: 20,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xff1A4A57),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                              ),
                                                              child: const Icon(
                                                                Icons.check,
                                                                size: 15,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            height: 15),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                        const Text(
                                                          "Complete the flow of\nadd book and payments\nusing local banks",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff1A4A57),
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 15),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffE3E9EB),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        const Text(
                                                          "09:30",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff1A4A57),
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 20),
                                                        const Text(
                                                          "Continous exploration",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 15,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 60),
                                                        Container(
                                                          height: 20,
                                                          width: 20,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xff1A4A57),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                          ),
                                                          child: const Icon(
                                                            Icons.check,
                                                            size: 15,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 15),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffD7E7A0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1),
                                                    ),
                                                    child: Row(
                                                      children: const [
                                                        Text(
                                                          "10:00",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff1A4A57),
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                                        ),
                                                        SizedBox(width: 20),
                                                        Text(
                                                          "Workout",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 15,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Image.asset(
                                              "assets/fleche.png",
                                              width: 200,
                                              height: 400,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  /** bloc begin */

                                  Container(
                                    width:
                                        ((MediaQuery.of(context).size.width) /
                                                2) -
                                            200,
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffD7E7A0),
                                            borderRadius:
                                                BorderRadius.circular(1),
                                          ),
                                          child: Row(
                                            children: const [
                                              Text(
                                                "11:00",
                                                style: TextStyle(
                                                  color: Color(0xff1A4A57),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Text(
                                                "Read Book",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  /** bloc end */
                                ],
                              ),
                              SizedBox(
                                width:
                                    ((MediaQuery.of(context).size.width) / 2) -
                                        50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    LayoutBuilder(
                                      builder: (BuildContext context,
                                          BoxConstraints constraints) {
                                        double titleFontSize =
                                            constraints.maxWidth > 600
                                                ? 80
                                                : 40;
                                        return Text(
                                          "Organize\neverything\nin live",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: titleFontSize,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        );
                                      },
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
                          );
                        }
                      },
                    ),
                    /**FIN SECTION TASK */
                    const SizedBox(
                      height: 50,
                    ),
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
