import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/colors.dart';
import 'dhashboard.dart';
import 'editstudents_details.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Row(children: [
        Container(
          height: 1024,
          width: 250,
          color: AppColors.cardColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 28),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                  SizedBox(
                    height: 50,
                  ),
                  MenuButton(
                    isSelected: false,
                    icon: 'assets/images/menu_icon/overview.svg',
                    label: 'Overview',
                  ),
                  MenuButton(
                    isSelected: true,
                    icon: 'assets/images/menu_icon/settings.svg',
                    label: 'Students',
                  ),
                  MenuButton(
                    isSelected: false,
                    icon: 'assets/images/menu_icon/course.svg',
                    label: 'Courses',
                  ),
                  MenuButton(
                    isSelected: false,
                    icon: 'assets/images/menu_icon/installment.svg',
                    label: 'Installment',
                  ),
                  MenuButton(
                    isSelected: false,
                    icon: 'assets/images/menu_icon/attendance.svg',
                    label: 'Attendance',
                  ),
                  MenuButton(
                    isSelected: false,
                    icon: 'assets/images/menu_icon/settings.svg',
                    label: 'Settings',
                  ),
                ]),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date And Time",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      // Text(
                      //   '${DateTimeFormat.format(DateTime.now(), format: AmericanDateFormats.dayOfWeek)}',
                      //   style:
                      //   TextStyle(color: AppColors.fontColor, fontSize: 20),
                      // ),
                      Row(
                        children: [
                          SizedBox(
                            width: 400,
                            height: 40,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search,
                                    size: 20, color: AppColors.secFontColor),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hoverColor: AppColors.primary,
                                hintText: 'Search Student',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: AppColors.CardBorderColor)),
                                hintStyle: TextStyle(
                                    color: AppColors.secFontColor,
                                    fontSize: 15,
                                    fontFamily: 'Poppins'),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 5),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.cardColor,
                                child: Icon(Icons.notifications,
                                    color: AppColors.fontColor, size: 16),
                              ),
                              Positioned(
                                bottom: 25,
                                right: 10,
                                child: Container(
                                  child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        width: 4,
                                        height: 4,
                                        decoration: BoxDecoration(
                                            color: AppColors.primary,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                      )),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50,
                                      ),
                                    ),
                                    color: AppColors.primary,
                                  ),
                                ),
                              )
                            ],
                          ),
                          // CircleAvatar(
                          //   backgroundColor: AppColors.cardColor,
                          //   child: Icon(Icons.notifications,
                          //       color: AppColors.fontColor, size: 16),
                          // ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 69,
                            width: 69,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/student1.png"),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.secFontColor,
                        )),
                    Text(
                      "Enroll New Student",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: AppColors.fontColor,
                          fontSize: 26),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35.0),
                  child: Container(
                    height: 540,
                    width: 1230,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.cardColor,
                        border: Border.all(color: AppColors.CardBorderColor)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 21, vertical: 45),
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundColor: Colors.grey.shade200,
                                    child: CircleAvatar(
                                      radius: 70,
                                      backgroundImage: AssetImage(
                                          'assets/images/student.jpg'),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 17,
                                    right: -6,
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Icon(Icons.edit,
                                            color: Colors.white, size: 17),
                                      ),
                                      decoration: BoxDecoration(
                                        // border: Border.all(
                                        //   width: 3,
                                        //   color: AppColors.primary,
                                        // ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            50,
                                          ),
                                        ),
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                              // CircleAvatar(
                              //     radius: 50,
                              //     backgroundImage:
                              //         AssetImage("assets/images/student.jpg")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 35,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              StudentsForm(),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  Get.to(EditStudentDetails());
                                },
                                child: Container(
                                  height: 50,
                                  width: 190,
                                  decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text("Update",
                                        style: TextStyle(
                                            color: AppColors.fontColor,
                                            fontSize: 18)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class StudentsForm extends StatefulWidget {
  const StudentsForm({super.key});

  @override
  State<StudentsForm> createState() => _StudentsFormState();
}

class _StudentsFormState extends State<StudentsForm> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Full Name",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    )),
              ],
            ),
            SizedBox(height: 6),
            SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor)),
                  ),
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  // ignore: missing_return
                )),
            SizedBox(height: 20),
            Text("Email",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                )),
            SizedBox(height: 6),
            SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor)),
                  ),
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  // ignore: missing_return
                )),
            SizedBox(height: 20),
            Text("Date of Birth",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                )),
            SizedBox(height: 6),
            SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.expand_more_outlined, color: Colors.white),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    fillColor: AppColors.secondary,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor)),
                  ),
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  // ignore: missing_return
                )),
            SizedBox(height: 20),
            Text("Permanent Address",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                )),
            SizedBox(height: 6),
            SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor)),
                  ),
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  // ignore: missing_return
                )),
            SizedBox(height: 20),
            Text("Postal Code",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                )),
            SizedBox(height: 6),
            SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor)),
                  ),
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  // ignore: missing_return
                )),
          ],
        ),
        SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Phone",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    )),
              ],
            ),
            SizedBox(height: 6),
            SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor)),
                  ),
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  // ignore: missing_return
                )),
            SizedBox(height: 20),
            Text("Course Name",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                )),
            SizedBox(height: 6),
            SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor)),
                  ),
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  // ignore: missing_return
                )),
            SizedBox(height: 20),
            Text("Total Fees",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                )),
            SizedBox(height: 6),
            SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor)),
                  ),
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  // ignore: missing_return
                )),
            SizedBox(height: 20),
            Text("Course Start Date",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                )),
            SizedBox(height: 6),
            SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.expand_more_outlined, color: Colors.white),
                    fillColor: AppColors.secondary,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor)),
                  ),
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  // ignore: missing_return
                )),
            SizedBox(height: 20),
            Text("Student ID",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                )),
            SizedBox(height: 6),
            SizedBox(
                width: 400,
                height: 40,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: AppColors.CardBorderColor)),
                  ),
                  autocorrect: true,
                  textCapitalization: TextCapitalization.words,
                  enableSuggestions: false,
                  // ignore: missing_return
                )),
            SizedBox(height: 6),
          ],
        ),
      ],
    );
  }
}
