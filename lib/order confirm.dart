import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Orderconfirm extends StatefulWidget {
  const Orderconfirm({super.key});

  @override
  State<Orderconfirm> createState() => _OrderconfirmState();
}

List<String>a=[
"asset/veg1.png",
  "asset/veg2.png",
  "asset/veg3.png",
];
List<String>b=[
  "asset/side1.png",
  "asset/side2.png",
  "asset/side3.png",
];
class _OrderconfirmState extends State<Orderconfirm> {
  double _value = 50.0;
  int quantity = 1;

  final List<bool> _selectedToppings = [false,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(left: 12, top: 40),
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "asset/burger.png",
                      width: 217.w,
                      height: 329.h,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 180.w,
                            child: Text(
                              "Customize Your Burger to Your Tastes. Ultimate Experience",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.sp,
                                  color: Color(0xff3C2F2F)),
                            )),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "Spicy",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: Color(0xff3C2F2F),
                          ),
                        ),
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
                            width: 180.w,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
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
                        SizedBox(
                          height: 40.h,
                        ),
                        Text(
                          "Portion",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                            color: Color(0xff3C2F2F),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
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
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    "Toppings",
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 30.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    height: 120,
          
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              width: 100.w,
                              height: 120.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.r),
                                color: Color(0xff3C2F2F)
                              ),
                              child:Padding(
                                padding: const EdgeInsets.only(top:65,left: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "Tomato",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffFFFFFF)),
                                    ),
                                   SizedBox(width:10.w,),
                                    CircleAvatar(
                                      radius: 10.r,
                                      backgroundColor: Color(0xffEF2A39),
                                      child: Center(
                                        child: Icon(Icons.add,color: Colors.white,size: 15,),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 100.w,
                              height: 80.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.r),
                                  color: Color(0xffFFFFFF)
                              ),
                              child: Center(
                                child:Image.asset(a[index].toString(),width: 85.w,height: 80.h,),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 30.w,
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    "Side options",
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 20.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    height: 120,
          
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              width: 100.w,
                              height: 120.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.r),
                                  color: Color(0xff3C2F2F)
                              ),
                              child:Padding(
                                padding: const EdgeInsets.only(top:65,left: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "Tomato",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffFFFFFF)),
                                    ),
                                    SizedBox(width:10.w,),
                                    CircleAvatar(
                                      radius: 10.r,
                                      backgroundColor: Color(0xffEF2A39),
                                      child: Center(
                                        child: Icon(Icons.add,color: Colors.white,size: 15,),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 100.w,
                              height: 80.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18.r),
                                  color: Color(0xffFFFFFF)
                              ),
                              child: Center(
                                child:Image.asset(b[index].toString(),width: 85.w,height: 80.h,),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 30.w,
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Row(
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3C2F2F)),
                        ),
                          Row(
                            children: [
                              Icon(Icons.currency_rupee,color: Colors.red,),
                              Text(
                                "16.6",
                                style: TextStyle(
                                    fontSize: 40.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff3C2F2F)),
                              ),
                            ],
                          )
                        ]
                      ),
                      SizedBox(width: 50.w,),
                      Container(
                        width: 220.w,
                        height: 70.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xffEF2A39),
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
                )
              ])

          ),
        ));
  }
}
