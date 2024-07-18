import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  double _value = 50.0;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 12, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
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
                  Icons.search,
                  size: 33.sp,
                ),
              ],
            ),
            Center(
                child: Image.asset(
              "asset/bg2.png",
              width: 330.w,
              height: 330.h,
            )),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cheeseburger Wendy's Burger",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25.sp,
                      color: Color(0xff3C2F2F),
                    ),
                  ),
                  SizedBox(
                    height: 15.w,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 25.sp,
                        color: Color(0xffFF9633),
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff3C2F2F),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "-",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff3C2F2F),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "14 mins",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff3C2F2F),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 310,
                    child: Text(
                      "Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 19.sp,
                        color: Color(0xff6A6A6A),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Spicy",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff3C2F2F),
                        ),
                      ),
                      SizedBox(
                        width: 190.w,
                      ),
                      Text(
                        "Portion",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff3C2F2F),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SliderTheme(
                        data: SliderThemeData(
                          trackHeight: 5.0,
                          // Adjust track height for slider thickness
                          thumbShape: RoundSliderThumbShape(
                              // Optional: Change thumb shape
                              // Adjust thumb radius for size
                              ),
                        ),
                        child: SizedBox(
                          width: 200.w,
                          child: Slider(
                            value: _value,
                            // Current slider value
                            min: 0.0,
                            max: 100.0,
                            divisions: 10,
                            // Optional: Show tick marks every 10 units
                            activeColor: Colors.red,
                            // Color of the thumb and active track
                            inactiveColor: Color(0xffF3F4F6),
                            // Color of the inactive track
                            onChanged: (double newValue) {
                              // Update the slider value and potentially other UI elements
                              setState(() {
                                _value = newValue;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 35,),
                      Container(
                        width: 45.w,
                        height: 45.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                        color: Color(0xffEF2A39),
                            borderRadius: BorderRadius.circular(17.r),
                           ),
                        child: IconButton(
                          icon: Icon(
                            Icons.horizontal_rule,
                            color: Color(0xffFFFFFF),
                            size: 26.h,
                          ),
                          onPressed: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity = quantity - 1;
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        quantity.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            color: Color(0xff181725)),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        width: 45.w,
                        height: 45.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xffEF2A39),
                          borderRadius: BorderRadius.circular(17.r),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Color(0xffFFFFFF),
                            size: 26.h,
                          ),
                          onPressed: () {
                            setState(() {
                              quantity = quantity + 1;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          "Mild",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                            color: Color(0xff1CC019),
                          ),
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Text(
                          "Hot",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                            color: Color(0xffEF2A39),
                          ),
                        ),
                      ],
                    ),
                  ),
              SizedBox(height: 25,),
              Row(
                children: [
                  Container(
                    width: 104.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: Color(0xffEF2A39),
                      borderRadius: BorderRadius.circular(17.r),
                    ),
                    child:Row(
                      children: [
                        SizedBox(width: 5.w,),
                        Icon(Icons.currency_rupee,color: Colors.white,),

                        Text(
                          "9.99",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25.sp,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 50.w,),
                  Container(
                    width: 220.w,
                    height: 70.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xff3C2F2F),
                      borderRadius: BorderRadius.circular(17.r),
                    ),
                    child:
                    Text(
                      "ORDER NOW",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25.sp,
                        color: Color(0xffFFFFFF),
                      ),
                    ),

                  ),
                ],
              ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
