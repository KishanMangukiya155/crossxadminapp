import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'dhashboard.dart';

class StudentsInstallment extends StatefulWidget {
  const StudentsInstallment({super.key});

  @override
  State<StudentsInstallment> createState() => _StudentsInstallmentState();
}

class _StudentsInstallmentState extends State<StudentsInstallment> {
  final TextEditingController _payDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Row(
        children: [
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
          SizedBox(width: 315),
          Container(
            height: 620,
            width: 400,
            decoration: BoxDecoration(
                color: AppColors.cardColor,
                border: Border.all(color: AppColors.CardBorderColor),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset("assets/images/cancel.png",
                          height: 20, width: 20),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text("Add Installment",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 24)),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Full Name",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        )),
                    SizedBox(height: 6),
                    SizedBox(
                        width: 350,
                        height: 40,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.name,
                          autofocus: true,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            fillColor: AppColors.secondary,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor),
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor)),
                          ),
                          autocorrect: true,
                          textCapitalization: TextCapitalization.words,
                          enableSuggestions: false,
                          // ignore: missing_return
                        )),
                    SizedBox(height: 20),
                    Text("Amount",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        )),
                    SizedBox(height: 6),
                    SizedBox(
                        width: 350,
                        height: 40,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            fillColor: AppColors.secondary,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor),
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor)),
                          ),
                          autocorrect: true,
                          textCapitalization: TextCapitalization.words,
                          enableSuggestions: false,
                          // ignore: missing_return
                        )),
                    SizedBox(height: 20),
                    Text("Pay Date",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        )),
                    SizedBox(height: 6),
                    SizedBox(
                        width: 350,
                        height: 40,
                        child: TextFormField(
                          controller: _payDateController,
                          onTap: () async {
                            DateTime? date = DateTime(1900);
                            FocusScope.of(context)
                                .requestFocus(new FocusNode());
                            date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            _payDateController.text = date!.toIso8601String();
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter date.';
                            }
                            return null;
                          },
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            suffixIcon: Icon(Icons.expand_more_outlined,
                                color: Colors.white),
                            fillColor: AppColors.secondary,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor),
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor)),
                          ),
                          autocorrect: true,
                          textCapitalization: TextCapitalization.words,
                          enableSuggestions: false,
                          // ignore: missing_return
                        )),
                    SizedBox(height: 20),
                    Text("Installment",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        )),
                    SizedBox(height: 6),
                    SizedBox(
                        width: 350,
                        height: 40,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.expand_more_outlined,
                                color: Colors.white),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            fillColor: AppColors.secondary,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor),
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor)),
                          ),
                          autocorrect: true,
                          textCapitalization: TextCapitalization.words,
                          enableSuggestions: false,
                          // ignore: missing_return
                        )),
                    SizedBox(height: 20),
                    Text("Payment Method",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        )),
                    SizedBox(height: 6),
                    SizedBox(
                        width: 350,
                        height: 40,
                        child: TextFormField(
                          onTap: () {},
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.expand_more_outlined,
                                color: Colors.white),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            fillColor: AppColors.secondary,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor),
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: AppColors.CardBorderColor)),
                          ),
                          autocorrect: true,
                          textCapitalization: TextCapitalization.words,
                          enableSuggestions: false,
                          // ignore: missing_return
                        )),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                    height: 45,
                    width: 190,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Add Installment",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "Poppins",
                      ),
                    ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
