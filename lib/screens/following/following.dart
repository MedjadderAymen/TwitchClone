import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitch_clone/constants.dart';
import 'package:twitch_clone/screens/following/game_detail.dart';

class Following extends StatelessWidget {
  const Following({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 4.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kPurpleColor,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  "assets/icons/person.svg",
                  color: Colors.white,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 3,
                child: Container(
                  alignment: Alignment.center,
                  height: 11.0,
                  width: 11.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 8.0,
                    width: 8.0,
                    decoration: BoxDecoration(
                      color: kOfflineColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        actions: [
          SvgPicture.asset(
            "assets/icons/live.svg",
            color: Colors.black,
            height: 25,
          ),
          SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            "assets/icons/box.svg",
            color: Colors.black,
            height: 25,
          ),
          SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            "assets/icons/message.svg",
            color: Colors.black,
            height: 25,
          ),
          SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.black,
            height: 25,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Following",
                style: kHeadingextStyle,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Followed Categories",
                style: kHeadingextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryWidget(
                      title: 'Call Of Duty - BLACK OPS II',
                      viewers: "190.1K",
                      cover: "assets/images/cod.jpg",
                      followers: "741.47k",
                    ),
                    CategoryWidget(
                      title: 'Assassin CREED III',
                      viewers: "12.5K",
                      cover: "assets/images/assasin.jpg",
                      followers: "452.88k",
                    ),
                    CategoryWidget(
                      title: 'Fortnite',
                      viewers: "26.6K",
                      cover: "assets/images/fortnine.jpg",
                      followers: "258.52k",
                    ),
                    CategoryWidget(
                      title: 'FARCRY 5',
                      viewers: "90.8K",
                      cover: "assets/images/farcry.jpg",
                      followers: "66.1k",
                    ),
                    CategoryWidget(
                      title: 'Star Wars - Jedi',
                      viewers: "13.1K",
                      cover: "assets/images/starwars.jpg",
                      followers: "855.4k",
                    ),
                    CategoryWidget(
                      title: 'Watch Dogs',
                      viewers: "150.4K",
                      cover: "assets/images/watch_dogs.jpg",
                      followers: "866.77k",
                    ),
                    CategoryWidget(
                      title: 'TitanFall',
                      viewers: "156.9K",
                      cover: "assets/images/titanfall.jpg",
                      followers: "962.25k",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Channels Recommended For You",
                style: kHeadingextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Channels(
                    name: "Phizla",
                    viewers: "24.1K",
                    tag: "English",
                    description: "DreamSMP - been a while since last time",
                    game: "Minecraft",
                    profile: "assets/images/profils/user1.png",
                    thumbnail: "assets/images/thumbnails/game1.jpg",
                  ),
                  Channels(
                    name: "VALORANT",
                    viewers: "155.6K",
                    tag: "ESports",
                    description: "F4Q vs Sentiels - VALORANT",
                    game: "VALORANT",
                    profile: "assets/images/profils/user2.png",
                    thumbnail: "assets/images/thumbnails/game2.jpg",
                  ),
                  Channels(
                    name: "shroud",
                    viewers: "25.5K",
                    tag: "English",
                    description: "watching the tail end of VCT IMB",
                    game: "Fortnite",
                    profile: "assets/images/profils/user3.png",
                    thumbnail: "assets/images/thumbnails/game3.jpg",
                  ),
                  Channels(
                    name: "Keydae",
                    viewers: "65.2K",
                    tag: "English",
                    description: "SEN VS f4q!!!",
                    game: "Fortnite",
                    profile: "assets/images/profils/user4.jpeg",
                    thumbnail: "assets/images/thumbnails/game4.jpg",
                  ),
                  Channels(
                    name: "Ramee",
                    viewers: "12.4K",
                    tag: "English",
                    description: "Ramee | lAST game before go",
                    game: "Contre Strike - GO",
                    profile: "assets/images/profils/user5.jpeg",
                    thumbnail: "assets/images/thumbnails/game5.jpg",
                  ),
                ],
              )
            ],
          ),
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
    );
  }
}

class Channels extends StatelessWidget {
  String? name, profile, description, game, tag, thumbnail, viewers;

  Channels(
      {this.name,
      this.profile,
      this.description,
      this.game,
      this.tag,
      this.thumbnail,
      this.viewers});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, bottom: 20),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 60,
                width: 100,
                decoration: BoxDecoration(color: Colors.black),
                child: Image.asset(
                  thumbnail!,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 5,
                bottom: 1,
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: kOnlineColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      viewers!,
                      style: kTitleTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 180,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: kOnlineColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          profile!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      name!,
                      style: kTitleTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(description!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: kSubtitleTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 5,
                ),
                Text(game!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: kSubtitleTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 20,
                  width: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(22)),
                  child: Text(tag!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: kHeadingextStyle.copyWith(
                        fontSize: 8,
                        fontWeight: FontWeight.w300,
                      )),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset("assets/icons/more.svg"))),
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  String? cover, title, viewers, followers;


  CategoryWidget({this.cover, this.title, this.viewers, this.followers});

  @override
  Widget build(BuildContext context) {

    List<String> tags = <String>[];
    tags.add('FPS/GRE Games');
    tags.add('English');

    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => GameDetail(cover: cover!,game: title, viewers: viewers,followers: followers,tags: tags)));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: cover!,
              child: Container(
                height: 130,
                width: 100,
                decoration: BoxDecoration(color: Colors.black),
                child: Image.asset(
                  cover!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(title!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: kTitleTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w600)),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: kOnlineColor,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  viewers!,
                  style: kTitleTextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
