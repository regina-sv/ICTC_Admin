import 'package:flutter/material.dart';
import 'package:ictc_admin/models/trainee.dart';

class TraineeViewMore extends StatefulWidget {
  final Trainee trainee;

  const TraineeViewMore({required this.trainee, super.key});

  @override
  State<TraineeViewMore> createState() => _TraineeViewMoreState();
}

class _TraineeViewMoreState extends State<TraineeViewMore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 33.5, right: 12),
      decoration: const BoxDecoration(
        // border: Border(bottom: BorderSide(width: 1)),
        // color: Color(0xfff1f5fb),
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          traineeHeader(),
          const SizedBox(height: 8),
          const Divider(thickness: 0.5, color: Colors.black87),
          const SizedBox(height: 8),
          buildCourses(),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget traineeHeader() {
    return Container(
      decoration: const BoxDecoration(
          // border: Border(bottom: BorderSide(width: 1)),
          // color: Color(0xfff1f5fb),
          // color: Color(0xff19306B),
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(24), topLeft: Radius.circular(24))),
      padding: const EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 200,
                height: 120,
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 247, 247, 247),
                    radius: 120,
                  ),
                ),
              ),
              const SizedBox(
                //spacing
                height: 12,
              ),
              Text(
                softWrap: true,
                //name
                widget.trainee.toString(),
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 35,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    softWrap: true,
                    //name
                    "Contact",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //email
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.mail_outline,
                            size: 24,
                            weight: 0.5,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Email",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(widget.trainee.emailAddress),
                            ],
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //contact number
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.phone_outlined,
                            size: 24,
                            weight: 0.5,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Phone",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(widget.trainee.contactNumber),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      // ],
      // ),
    );
  }

  Widget buildCourses() {
    return Flexible(
      flex: 8,
      child: Container(
        padding: const EdgeInsets.only(top: 0, left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            const Text(
              softWrap: true,
              //name
              "Courses",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            //courses
            Expanded(
                flex: 2,
                child: ListView(
                    padding: const EdgeInsets.only(left: 13),
                    children: [
                      traineeCourseCard(),
                      traineeCourseCard(),
                      traineeCourseCard(),
                      traineeCourseCard(),
                      traineeCourseCard(),
                      traineeCourseCard(),
                    ])),
          ],
        ),
      ),
    );
  }

  Widget traineeCourseCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      padding: const EdgeInsets.all(0),
      child: const SizedBox(
          width: 240,
          height: 60,
          child: Card(
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              color: Color.fromARGB(255, 247, 247, 247),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      " Introduction to Cybersecurity", //TODO: add courses of trainer (connected)
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "01/01/2024-02/1/2024",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ))),
    );
  }
}
