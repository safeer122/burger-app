import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_burger_app/new.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

List<String>a=[
  "asset/bg2.png",
  "asset/bg1.png",
  "asset/bg3.png",
  "asset/bg4.png",
];
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Padding(
          padding: EdgeInsets.only(left: 13.w, top: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Foodgo",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3C2F2F),
                ),
              ),
              SizedBox(height: 3.h),
              Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order your favourite food!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6A6A6A),
                      ),
                    ),
                    SizedBox(height: 47,),
                    Row(
                      children: [
                        Container(
                          width: 310.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(3, 4),
                                spreadRadius: -7,
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                  size: 26,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 13.w),
                        Container(
                          width: 60.w,
                          height: 60.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xffEF2A39),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Icon(
                            Icons.tune,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                SizedBox(height: 500,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 30,
                    childAspectRatio: 245/300,
                    shrinkWrap: true,
                    children: List.generate(a.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 19),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_)=>New()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.r),),
                  
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(3, 4),
                                  spreadRadius: -6,
                                  blurRadius: 16,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(a[index].toString(),width: 118,height: 120,),
                                    ],
                                  ),
                                  Text("Cheeseburger",style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff3C2F2F)
                                  ),),
                  
                                  Text("Wendy's Burger",style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3C2F2F)
                                  ),),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Color(0xffFF9633),size: 19,),
                                      Text("4.9",style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3C2F2F)
                                      ),),
                                      SizedBox(width: 70.w,),
                                      Icon(Icons.favorite_border_outlined,color: Color(0xff3C2F2F),size: 26,),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },),
                  ),
                )
                  ],
                ),
              ),



            ],
          ),
        ),

    );
  }
}
