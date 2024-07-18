import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEF2A39),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 40),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 29.sp,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 33.sp,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Container(
                  width: 460.w,
                  height: 732.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35.r),
                          topLeft: Radius.circular(35.r))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.w, top: 120.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(6, 3),
                                spreadRadius: -8,
                                blurRadius: 16,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Icon(
                                Icons.person_sharp,
                                color: Colors.grey,
                                size: 30.sp,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Text(
                                  "Safeer",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(6, 3),
                                spreadRadius: -8,
                                blurRadius: 16,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Icon(
                                Icons.email,
                                color: Colors.grey,
                                size: 27.sp,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Safeer@gmail.com",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(6, 3),
                                spreadRadius: -8,
                                blurRadius: 16,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 27.sp,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Kilinakkode,cherur,vengara",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(6, 3),
                                spreadRadius: -8,
                                blurRadius: 16,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Icon(
                                Icons.phone,
                                color: Colors.grey,
                                size: 27.sp,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "9865324412",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "Order history",
                              style: TextStyle(
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff808080)),
                            ),
                            SizedBox(
                              width: 200.w,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 22.sp,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 175.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                color: Color(0xff3C2F2F),
                                borderRadius: BorderRadius.circular(17.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19.sp,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Icon(
                                    Icons.draw,
                                    color: Colors.white,
                                    size: 22.sp,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              width: 165.w,
                              height: 70.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(17.r),
                                  border: Border.all(
                                    color: Color(0xffEF2A39),
                                  )),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  Text(
                                    "Log out",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19.sp,
                                      color: Color(0xffEF2A39),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Icon(
                                    Icons.logout,
                                    color: Color(0xffEF2A39),
                                    size: 25.sp,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 115, top: 130.h),
            child: Container(
              width: 149.w,
              height: 149.h,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: Color(0xffEF2A39), width: 5.w)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.r),
                  child:
                  Image.asset(
                "asset/girl.png",
                fit: BoxFit.cover,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
