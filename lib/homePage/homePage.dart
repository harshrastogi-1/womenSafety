import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:womensafety/constants/image_constant.dart';
import 'package:womensafety/homePage/homePageController.dart';
import 'package:womensafety/homePage/new_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: Get.height * 0.05),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Women Safety....',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Your safety is our priority',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(ImageConstants.womenDp),
                  radius: 24.5,
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: Get.height * 0.23,
              width: Get.width,
              child: Swiper(
                itemCount: 5,
                autoplay: true,
                scrollDirection: Axis.horizontal,
                pagination: SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.black.withOpacity(0.2),
                        activeColor: Colors.black,
                        activeSize: 8.0,
                        size: 7.0)),
                autoplayDelay: 3000,
                itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                      // color: Colors.grey,
                      borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
                  child: Image.asset(
                    controller.images[index],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: GridView.count(
              padding: const EdgeInsets.all(5),
              primary: true,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => NewPage(
                          url:
                              'https://outdoorsurvivalgear.com/emergency-survival-tips-every-girl-needs-to-know/',
                          title: "Emergency Survival Tips",
                        ));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[100],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                            ImageConstants.one,
                          ),
                        ),
                        const Text(
                          "Emergency Survival Tips",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => NewPage(
                          url:
                              'https://pib.gov.in/Pressreleaseshare.aspx?PRID=1575574',
                          title: "Safety measure on roads",
                        ));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[100],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(ImageConstants.four),
                        ),
                        const Text(
                          'Safety measure on roads',
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => NewPage(
                          url:
                              'https://ymaa.com/sites/default/files/book/sample/FightBack.9781594394935.pdf',
                          title: 'Self Defense',
                        ));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[100],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(ImageConstants.five),
                        ),
                        const Text('Self Defense'),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => NewPage(
                          url: "https://www.google.com/maps",
                          title: 'Know Your Exact location',
                        ));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[100],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(ImageConstants.three),
                        ),
                        const Text('Know Your Exact location'),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Container(
              height: Get.height * 0.1,
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[200]),
                    child: const Icon(
                      Icons.emergency_share,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[200]),
                    child: const Icon(
                      Icons.message,
                      color: Colors.red,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.sendSms();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[200]),
                      child: const Icon(
                        Icons.sos,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
