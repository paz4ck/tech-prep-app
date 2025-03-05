import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/video_models.dart';
import '../models/resources_models.dart';
import '../models/community_models.dart';
import 'cerb.dart';
import 'medusa.dart';
import 'satyr.dart';
import 'c.dart';
import 's.dart';
import 'comm.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<VideosModel> videos = [];
  List<ResourcesModel> resources = [];
  List<CommunityModel> community = [];

  void _getInitialInfo() {
    videos = VideosModel.getVideos();
    resources = ResourcesModel.getResources();
    community = CommunityModel.getResources();
  }

  @override
  void initState() {
    super.initState();
    _getInitialInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background color of the Scaffold to transparent
      appBar: appBar(),
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/homeBGTEMP.svg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
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
                    _middleRowClickables(),
                    // End of middle Resources text and container

                    // Below starts the final Community text and container
                    Text(
                      'Community',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'HelveticaBold',
                        color: Color.fromARGB(255, 245, 220, 140),
                      ),
                    ),
                    _bottomRowClickables(),
                    // End of bottom Community text and container
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _bottomRowClickables() {
    return Container(
      height: 150,
      margin: EdgeInsets.only(left: 140, top: 5, right: 5, bottom: 0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding to the left and right
        child: ListView.separated(
          itemCount: community.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(width: 25),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                switch (community[index].name) {
                  case 'Socials':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CommunityPage()));
                    break;
                }
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: community[index].boxColor,
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
                        child: SvgPicture.asset(community[index].iconPath),
                      ),
                    ),
                    Text(
                      community[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'AcLonica',
                        color: Color.fromARGB(255, 34, 85, 34),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Container _middleRowClickables() {
    return Container(
      height: 150,
      margin: EdgeInsets.only(left: 70, top: 5, right: 5, bottom: 60),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding to the left and right
        child: ListView.separated(
          itemCount: resources.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(width: 25),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                switch (resources[index].name) {
                  case 'Cards':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CardsPage()));
                    break;
                  case "STL's":
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StlPage()));
                    break;
                }
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: resources[index].boxColor,
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
                        padding: const EdgeInsets.all(11.0),
                        child: SvgPicture.asset(resources[index].iconPath),
                      ),
                    ),
                    Text(
                      resources[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'AcLonica',
                        color: Color.fromARGB(255, 34, 85, 34),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Container _topRowClickables() {
    return Container(
      height: 150,
      margin: EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 60),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding to the left and right
        child: ListView.separated(
          itemCount: videos.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(width: 25),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                switch (videos[index].name) {
                  case 'Cerberus':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CerbPage()));
                    break;
                  case 'Medusa':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MedusaPage()));
                    break;
                  case 'Satyr':
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SatyrPage()));
                    break;
                }
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: videos[index].boxColor,
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
                        child: SvgPicture.asset(videos[index].iconPath),
                      ),
                    ),
                    Text(
                      videos[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'AcLonica',
                        color: Color.fromARGB(255, 34, 85, 34),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.transparent, // Set the background color of the AppBar to transparent
      elevation: 0, // Remove the shadow of the AppBar
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
      centerTitle: true,
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
}