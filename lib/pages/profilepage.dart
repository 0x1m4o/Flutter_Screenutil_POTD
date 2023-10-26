import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 3.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              'namakuchandra',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                            IconButton(
                              icon: const Icon(
                                  Icons.keyboard_arrow_down_outlined),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add_box_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.format_list_bulleted),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 90.w,
                          height: 90.h,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(254, 205, 0, 1),
                                Color.fromARGB(255, 249, 55, 63),
                                Color.fromARGB(255, 201, 19, 185),
                              ])),
                        ),
                        Container(
                          width: 85.w,
                          height: 85.h,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                        Container(
                            width: 77.w,
                            height: 77.h,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/profilepict.jpg')),
                                shape: BoxShape.circle)),
                      ],
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer__literals_to_create_immutables
                      children: const [
                        InfoProfile(title: 'Posts', count: '90'),
                        InfoProfile(title: 'Followers', count: '9,999'),
                        InfoProfile(title: 'Following', count: '9,999'),
                      ],
                    ))
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 3.w),
                  child: Text(
                    'Muhamad Duta Chandra',
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 3.w),
                  child: Text(
                    'This accounts dedicated to showcasing my passion.\n"If everything appears to be under control, you might not be pushing the boundaries hard enough"',
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[200]),
                                onPressed: () {},
                                child: Text(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14.sp),
                                    'Edit Profil')),
                          )),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[200]),
                              onPressed: () {},
                              child: Text(
                                'Bagikan Profil',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14.sp),
                              )),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[200]),
                              onPressed: () {},
                              child: const Icon(
                                Icons.group_add_outlined,
                                color: Colors.black,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                    height: 120.h,
                    child: ScrollConfiguration(
                      behavior:
                          const ScrollBehavior().copyWith(overscroll: false),
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return StoryProfile(
                              title: 'Story ${index + 1}',
                              img:
                                  'https://picsum.photos/300/300?random=$index');
                        },
                      ),
                    )),
                SizedBox(
                  height: 6.h,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: selectedMenu == 0
                                  ? Colors.black
                                  : Colors.white,
                              width: 1.w))),
                  child: IconButton(
                      iconSize: 30.sp,
                      onPressed: () {
                        setState(() {
                          selectedMenu = 0;
                        });
                      },
                      icon: const Icon(Icons.grid_on)),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: selectedMenu == 1
                                  ? Colors.black
                                  : Colors.white,
                              width: 1))),
                  child: IconButton(
                      iconSize: 30.sp,
                      onPressed: () {
                        setState(() {
                          selectedMenu = 1;
                        });
                      },
                      icon: const Icon(Icons.person_pin_outlined)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 60,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2),
            itemBuilder: (context, index) =>
                Image.network('https://picsum.photos/300/300?random=$index'),
          )
        ],
      )),
    );
  }
}

class StoryProfile extends StatelessWidget {
  const StoryProfile({
    required this.title,
    required this.img,
    super.key,
  });
  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage(img)),
                border: Border.all(color: Colors.grey.shade200, width: 3),
              )),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            width: 80.w,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 1,
              softWrap: false,
            ),
          )
        ],
      ),
    );
  }
}

class InfoProfile extends StatelessWidget {
  const InfoProfile({required this.title, required this.count, super.key});

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(3),
          child: Text(
            count,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Text(title)
      ],
    );
  }
}
