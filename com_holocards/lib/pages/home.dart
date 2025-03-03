import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/video_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  void initState() {
    super.initState();
    _getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        decoration: backgroundDecoration(),
        child: Column(
          children: [
            SizedBox(height: 25),
            Center(
              child: Column(
                children: [




                 // Below starts the top Videos text and container
                  Text(
                    'Videos',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'HelveticaBold',
                      color: Color.fromARGB(255, 245, 220, 140),
                    ),
                  ),
                  _topRowClickables(),
                  // End of top Video text and container




                 // Below starts the middle Resources Text and container
                  Text(
                    'Resources',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'HelveticaBold',
                      color: Color.fromARGB(255, 245, 220, 140),
                    ),
                  ),
                  Container(
                    height: 150,
                    margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 90),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 245, 223, 148), // Soft warm light tone
                          Color.fromARGB(255, 170, 140, 90),  // Smooth transition beige
                          Color.fromARGB(255, 50, 110, 50),   // Softer natural green
                          Color.fromARGB(255, 20, 80, 20),    // Deep earthy green
                        ],
                      ),
                    ),
                  ),
                  // End of middle Resources text and container




                  // Below starts the final Community text and container
                  Text(
                    'Community',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'HelveticaBold',
                      color: Color.fromARGB(255, 0, 80, 0),
                    ),
                  ),
                  Container(
                    height: 150,
                    margin: EdgeInsets.only(left: 5, top: 5, right: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 85, 34),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  // End of bottom Community text and container




                ],
              ),
            ),
          ],
        ),
      ),
    );
  }












  Container _topRowClickables() {
    return Container(
      height: 150,
      margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 90),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding to the left and right
        child: ListView.separated(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(width: 25),
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: categories[index].boxColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(categories[index].iconPath),
                    ),
                  ),
                  Text(
                    categories[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'AcLonica',
                      color: Color.fromARGB(255, 34, 85, 34),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
  




  AppBar appBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Holo',
            style: TextStyle(
              fontFamily: 'AcLonica',
              fontSize: 24,
              color: Color.fromARGB(255, 34, 85, 34),
            ),
          ),
          Text(
            'Cards',
            style: TextStyle(
              fontFamily: 'AcLonica',
              fontSize: 24,
              color: Color.fromARGB(255, 245, 220, 140),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      centerTitle: true,
      shadowColor: Colors.black.withOpacity(1.0),
      leading: Container(
        margin: const EdgeInsets.all(6),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SvgPicture.asset(
            'assets/icons/HCimg.svg',
            fit: BoxFit.contain,
          ),
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(6),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SvgPicture.asset(
              'assets/icons/HCimg.svg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }




 BoxDecoration backgroundDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 20, 40, 20), // Dark muted green blend
          Color.fromARGB(255, 0, 80, 0), // Rich dark green
          Color.fromARGB(255, 0, 120, 0), // Vibrant dark green
          Color.fromARGB(255, 122, 150, 0), // Intermediate transition
          Color.fromARGB(255, 245, 220, 140), // Final light color
        ],
      ),
    );
  }
}

