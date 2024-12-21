import 'package:flutter/material.dart';

class AwarenessRoute extends StatelessWidget {
  const AwarenessRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/home/caro1.jpg'),
                  const Text(
                    "What is the menstrual cycle?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 130,
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 126, 2, 2),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 239, 72, 128),
                          Color.fromARGB(255, 235, 133, 167)
                        ]),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0))
                        ]),
                    child: const Text(
                      "A menstrual cycle is measured from the first day of your period to the day before your next period. The average length of a menstrual cycle is 28 days, but everyone's cycle is different. ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Phases of the menstrual cycle",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Center(
                      child: Image.asset('assets/home/awareness.png',
                          height: 200)),
                  const SizedBox(height: 20),
                  // Menstrual Phase Information
                  const Text("1. Menstrual Phase",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 79, 2, 2))),
                  Container(
                    height: 140,
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(
                          color: const Color.fromARGB(255, 126, 2, 2),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(colors: [
                          const Color.fromARGB(255, 245, 95, 95)
                              .withOpacity(0.8),
                          const Color.fromARGB(255, 242, 138, 138)
                              .withOpacity(0.8)
                        ]),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0))
                        ]),
                    child: const Column(children: [
                      Text(
                        "When you have a period, your uterus lining sheds and flows out of your vagina. Your period contains blood, mucus and some cells from the lining of your uterus.Average length : 3 to 7 days..",
                        style: TextStyle(fontSize: 16),
                      ),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  // Follicular Phase Information
                  const Text(
                    "2. Follicular Phase",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 37, 21, 1)),
                  ),
                  Container(
                    height: 145,
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(
                          color: const Color.fromARGB(255, 126, 2, 2),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(colors: [
                          const Color.fromARGB(255, 248, 145, 94)
                              .withOpacity(0.7),
                          const Color.fromARGB(255, 247, 162, 116)
                              .withOpacity(0.7)
                        ]),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0))
                        ]),
                    child: const Column(
                      children: [
                        Text(
                          "This phase starts on first day of period. Changing hormone levels cause the lining of uterus to thicken and follicles to grow on surface of ovaries.Average length: 13 to 14 days.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  const Text(
                    "3. Ovulation Phase",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  Container(
                    height: 130,
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(
                          color: const Color.fromARGB(255, 126, 2, 2),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(colors: [
                          const Color.fromARGB(255, 232, 236, 26)
                              .withOpacity(0.6),
                          const Color.fromARGB(255, 250, 217, 139)
                              .withOpacity(0.6)
                        ]),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0))
                        ]),
                    child: const Column(
                      children: [
                        Text(
                          "A mature egg is released from ovary. This usually about 2 weeks before next period.You're most likely to get pregnant if you have unprotected sex during ovulation.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Luteal Phase Information
                  const Text(
                    "4. Luteal Phase",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  Container(
                    height: 130,
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(
                          color: const Color.fromARGB(255, 126, 2, 2),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(colors: [
                          const Color.fromARGB(255, 249, 78, 78)
                              .withOpacity(0.5),
                          const Color.fromARGB(255, 239, 105, 105)
                              .withOpacity(0.5)
                        ]),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0))
                        ]),
                    child: const Column(
                      children: [
                        Text(
                          "The body prepares for a possible pregnancy, or the cycle will restart with menstruation.After ovulation, the egg travels through the fallopian tubes to uterus.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Image.network(
                          "https://img.freepik.com/premium-vector/menstrual-cycle-diagram-doctor-lab-womens-health-concept-menstruation-phases_206049-86.jpg?w=360",
                          width: 200,
                        ),
                      ),
                      const Column(
                        children: [
                          Text(
                            "When to see your doctor",
                            style: TextStyle(
                              color: Color.fromARGB(255, 18, 16, 16),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Text(
                      "Talk to your doctor if you are worried about your periods. For example, if:"),
                  const Text("1.your period patterns change"),
                  const Text(
                      "2.your periods are getting heavier (i.e. you need to change your pad or tampon more often than every 2 hours)"),
                  const Text("3.your periods last more than 8 days"),
                  const Text("4.your periods come less than 21 days apart"),
                  const Text(
                      "5.your periods come more than 2 to 3 months apart"),
                  const Text(
                      "6.your symptoms are so painful they affect your quality of life"),
                  const Text("7.you bleed between periods"),
                  const Text("8.you bleed after sexual intercourse.")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
