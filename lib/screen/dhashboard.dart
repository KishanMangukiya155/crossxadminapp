import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Row(children: [
        Container(
          height: 800,
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
                    isSelected: false,
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
                    isSelected: true,
                    icon: 'assets/images/menu_icon/attendance.svg',
                    label: 'Attendance',
                  ),
                  MenuButton(
                    isSelected: false,
                    icon: 'assets/images/menu_icon/settings.svg',
                    label: 'Settings',
                  ),
                  Spacer(),
                  Container(
                    height: 60,
                    width: 194,
                    margin: EdgeInsets.only(top: 48),
                    decoration: BoxDecoration(
                        color: AppColors.secondary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/log-out.png"),
                        SizedBox(width: 20),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Logout",
                            style: TextStyle(
                                color: AppColors.fontColor,
                                fontSize: 20,
                                fontFamily: 'Poppins'),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: AppCard(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 40,
                                            ),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 30),
                                                  Text("Welcome Back",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .fontColor,
                                                          fontFamily: 'Poppins',
                                                          fontSize: 20)),
                                                  SizedBox(height: 30),
                                                  Text("Corey George",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .fontColor,
                                                          fontFamily: 'Poppins',
                                                          fontSize: 34)),
                                                  SizedBox(height: 30),
                                                  Text(" Go Back to the Course",
                                                      style: TextStyle(
                                                          color: AppColors
                                                              .fontColor,
                                                          fontSize: 16,
                                                          fontFamily:
                                                              'Poppins')),
                                                ]),
                                          ),
                                          Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Container(
                                                height: 250,
                                                width: 298,
                                                // color: Colors.blue,
                                              ),
                                              Positioned(
                                                top: -60,
                                                child: Container(
                                                  width: 298,
                                                  height: 270,
                                                  child: Image.asset(
                                                      "assets/images/suffix_icon.png"),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                    flex: 6,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 5,
                                            child: AppCard(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Container(
                                                              height: 126,
                                                              width: 134,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: AppColors
                                                                          .CardBorderColor),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            15),
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          36,
                                                                      width: 38,
                                                                      decoration: BoxDecoration(
                                                                          color: AppColors
                                                                              .primary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10)),
                                                                      child: Image
                                                                          .asset(
                                                                              "assets/images/menu_icon/total inquiry.png"),
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            10),
                                                                    Text(
                                                                        "Total Inquiry",
                                                                        style: TextStyle(
                                                                            color:
                                                                                AppColors.fontColor)),
                                                                    SizedBox(
                                                                        height:
                                                                            10),
                                                                    Text(
                                                                        "9 Sep | 7 Cou",
                                                                        style: TextStyle(
                                                                            color:
                                                                                AppColors.CardBorderColor)),
                                                                  ],
                                                                ),
                                                              )),
                                                          Container(
                                                              height: 126,
                                                              width: 134,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: AppColors
                                                                          .CardBorderColor),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            15),
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          36,
                                                                      width: 38,
                                                                      decoration: BoxDecoration(
                                                                          color: AppColors
                                                                              .primary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10)),
                                                                      child: Image
                                                                          .asset(
                                                                              "assets/images/menu_icon/totalcourse.png"),
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            10),
                                                                    Text(
                                                                        "Total Course",
                                                                        style: TextStyle(
                                                                            color:
                                                                                AppColors.fontColor)),
                                                                    SizedBox(
                                                                        height:
                                                                            10),
                                                                    Text(
                                                                        "9 Sep | 7 Cou",
                                                                        style: TextStyle(
                                                                            color:
                                                                                AppColors.CardBorderColor)),
                                                                  ],
                                                                ),
                                                              )),
                                                          Container(
                                                              height: 126,
                                                              width: 134,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: AppColors
                                                                          .CardBorderColor),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            15),
                                                                child: Column(
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          36,
                                                                      width: 38,
                                                                      decoration: BoxDecoration(
                                                                          color: AppColors
                                                                              .primary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10)),
                                                                      child: Image
                                                                          .asset(
                                                                              "assets/images/menu_icon/courseenroll.png"),
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            10),
                                                                    Text(
                                                                        "Course Enroll",
                                                                        style: TextStyle(
                                                                            color:
                                                                                AppColors.fontColor)),
                                                                    SizedBox(
                                                                        height:
                                                                            10),
                                                                    Text(
                                                                        "9 Sep | 7 Cou",
                                                                        style: TextStyle(
                                                                            color:
                                                                                AppColors.CardBorderColor)),
                                                                  ],
                                                                ),
                                                              )),
                                                        ]),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Upcoming class',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .fontColor),
                                                      ),
                                                      Text(
                                                        'Upcoming class',
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .fontColor),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: AppCard(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "data",
                                                    style: TextStyle(
                                                        color: AppColors
                                                            .fontColor),
                                                  )
                                                ],
                                              ),
                                            )),
                                      ],
                                    )),
                              ],
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            flex: 2,
                            child: AppCard(
                              child: Column(children: [
                                Text(
                                  'Course Activity',
                                  style: TextStyle(color: AppColors.fontColor),
                                )
                              ]),
                            )),
                      ],
                    )),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 6,
                            child: AppCard(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Featured Course',
                                      style:
                                          TextStyle(color: AppColors.fontColor),
                                    )
                                  ]),
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(flex: 2, child: AppCard()),
                      ],
                    )),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class AppCard extends StatelessWidget {
  AppCard({super.key, this.height, this.width, this.child});

  final double? height;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: child,
      decoration: BoxDecoration(
          color: AppColors.cardColor,
          border: Border.all(color: AppColors.CardBorderColor),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}

class MenuButton extends StatelessWidget {
  MenuButton(
      {super.key,
      required this.isSelected,
      required this.icon,
      required this.label});

  final bool isSelected;
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.only(left: 20),
        height: 55,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              '${icon}',
              color: isSelected ? AppColors.fontColor : AppColors.secFontColor,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              '${label}',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                color:
                    isSelected ? AppColors.fontColor : AppColors.secFontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
