import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitch_clone/constants.dart';

class GameDetail extends StatelessWidget {
  String? cover, game, viewers, followers;
  List? tags;

  GameDetail({this.cover, this.game, this.viewers, this.followers, this.tags});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark),
          backgroundColor: Colors.white,
          elevation: 0,
          shadowColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: SvgPicture.asset(
              "assets/icons/arrow_left.svg",
              color: kTextColor,
            ),
          ),
          actions: [
            SvgPicture.asset(
              "assets/icons/live.svg",
              color: Colors.black,
              height: 25,
              width: 25,
            ),
            SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              "assets/icons/heart.svg",
              color: Colors.black,
              height: 18,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 5, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: cover!,
                    child: Container(
                      height: 140,
                      width: 100,
                      decoration: BoxDecoration(color: kTextColor),
                      child: Image.asset(
                        cover!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game!,
                            style: kHeadingextStyle.copyWith(fontSize: 22),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: viewers!,
                                  style: kHeadingextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: " Viewers - ",
                                  style: kHeadingextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: followers!,
                                  style: kHeadingextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: " Followers",
                                  style: kHeadingextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 70,
                                padding: EdgeInsets.only(left: 5, right: 5),
                                margin: EdgeInsets.only(right: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(22)),
                                child: Text("${tags!.first}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: kHeadingextStyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Container(
                                height: 20,
                                width: 50,
                                padding: EdgeInsets.only(left: 5, right: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(22)),
                                child: Text("${tags!.last}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: kHeadingextStyle.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TabBar(
                  labelPadding: EdgeInsets.only(right: 10, left: 8, bottom: 0),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2, color: kPurpleColor),
                    insets: EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  isScrollable: true,
                  labelStyle: kHeadingextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.bold),
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Tab(
                        text: "Live Channels",
                      ),
                    ),
                    Tab(
                      text: "Videos",
                    ),
                    Tab(
                      text: "Clips",
                    ),
                  ],
                  indicatorColor: kPurpleColor,
                  labelColor: kPurpleColor,
                  unselectedLabelColor: kTextColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: TabBarView(
                    children: [
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              liveWidget(
                                tags: tags,
                                cover: "assets/images/thumbnails/game6.jpg",
                                viewers: "652",
                                profile: "assets/images/profils/user5.jpeg",
                                name: "NRG_JZR",
                                game: game!,
                              ),
                              liveWidget(
                                tags: tags,
                                cover: "assets/images/thumbnails/game5.jpg",
                                viewers: "580",
                                profile: "assets/images/profils/user4.jpeg",
                                name: "Tufo",
                                game: game!,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Text('vcdfv 2 '),
                      ),
                      Container(
                        child: Text('vcdfv 3 '),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 35),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -1),
                  color: kTextColor.withOpacity(0.05),
                  blurRadius: 5)
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/heart.svg',
                    width: 20,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Following",
                    style: kSubtitleTextStyle.copyWith(
                        fontSize: 10, color: kPurpleColor),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/discover.svg',
                    width: 20,
                    color: kTextColor,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Discover",
                    style: kSubtitleTextStyle.copyWith(
                        fontSize: 10, color: kTextColor),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/browse.svg',
                    width: 20,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Browse",
                    style: kSubtitleTextStyle.copyWith(
                        fontSize: 10, color: kTextColor),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/esports.svg',
                    width: 20,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Esports",
                    style: kSubtitleTextStyle.copyWith(
                        fontSize: 10, color: kTextColor),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class liveWidget extends StatelessWidget {

  List? tags;
  String? cover, viewers, profile, name, game;

  liveWidget({
    this.tags,
    this.cover,
    this.viewers,
    this.profile,
    this.name,
    this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: kTextColor, borderRadius: BorderRadius.circular(5)),
              height: 170,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  cover!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                  color: kOfflineColor, borderRadius: BorderRadius.circular(5)),
              child: Text(
                "LIVE",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 0.2,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                width: 75,
                height: 20,
                decoration: BoxDecoration(
                    color: kTextColor.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  viewers!,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  profile!,
                  width: 40,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name!,
                        style: kHeadingextStyle.copyWith(fontSize: 22),
                      ),
                      Text(
                        "2s with !fusure - !subtember",
                        style: kHeadingextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: kTextColor.withOpacity(0.7)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        game!,
                        style: kHeadingextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: kTextColor.withOpacity(0.7)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            padding: EdgeInsets.only(left: 5, right: 5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(22)),
                            child: Text("${tags!.last}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: kHeadingextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
