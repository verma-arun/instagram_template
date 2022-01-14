import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png',
        width: 120.0,),
        actions: const [
          Icon(Icons.add_box_outlined, color: Colors.black),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.chat_bubble_outline, color: Colors.black),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          switch (_selectedIndex) {
            case 0:
              return homePageWidget(screenWidth);
            case 1:
              return const Center(child: Text('Search Page'));
            case 2:
              return const Center(child: Text('reel Page'));
            case 3:
              return const Center(child: Text('notification Page'));
            default:
              return const Center(child: Text('Account Page'));
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_creation_outlined,
              color: Colors.black,
            ),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  Widget homePageWidget(double screenWidth) {
    return ListView(
      children: [
        SizedBox(
          height: 120.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(10.0),
            children: [
              addStoryWidget(),
              const SizedBox(
                width: 20.0,
              ),
              storyWidget('ganesh',
                  'https://media.istockphoto.com/photos/hiker-on-top-of-the-mountain-enjoying-sunset-picture-id1284549418?b=1&k=20&m=1284549418&s=170667a&w=0&h=3LP-ngMkpGNWH605WJWUkvyYK7uYPHsiIXVs69yz0I4=',),
              const SizedBox(
                width: 20.0,
              ),
              storyWidget('fit_shit',
                  'https://www.filmibeat.com/ph-big/2020/02/v-2020_158253142110.jpg'),
              const SizedBox(
                width: 20.0,
              ),
              storyWidget('harshit',
                  'https://www.whatsappimages.in/wp-content/uploads/2020/06/Whatsapp-DP-Images-8-300x300.jpg'),
              const SizedBox(
                width: 20.0,
              ),
              storyWidget('yug',
                  'https://www.gettyimages.com/gi-resources/images/500px/983703508.jpg'),
              const SizedBox(
                width: 20.0,
              ),
              storyWidget('neha',
                  'https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ],
          ),
        ),
        const Divider(),
        SizedBox(
            height: 500,
            child: postCardWidget(
                'janhvikapoor',
                'https://grazia.wwmindia.com/content/2020/mar/janhvikapoor21583143832.jpg',
                screenWidth),
        ),
        SizedBox(
          height: 500,
          child: postCardWidget(
              'carryminati',
              'https://qph.fs.quoracdn.net/main-qimg-0c3409f511bee2463708cd00b9918fae',
              screenWidth),
        ),
        SizedBox(
          height: 500,
          child: postCardWidget(
              'saragurpal',
              'https://i.pinimg.com/474x/a5/6f/8e/a56f8e3997bd754a13b34e5eb12c353a.jpg',
              screenWidth),
        ),
      ],
    );
  }

  Widget addStoryWidget() {
    return Column(
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: Stack(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=70',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 70,
                height: 70,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Stack(
                    children: [
                      Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          )),
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text('Your story', style: const TextStyle(fontFamily: 'Billabong'),)
      ],
    );
  }

  Widget storyWidget(String name, String imageUrl) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(name, style: const TextStyle(fontFamily: 'Billabong'),),
      ],
    );
  }

  Widget postCardWidget(String userName, String imageUrl, double width) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          imageUrl,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(userName, style: const TextStyle(fontFamily: 'Billabong'),),
                ],
              ),
              const Icon(Icons.more_horiz)
            ],
          ),
        ),
        SizedBox(
            height: 400,
            width: width,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Row(
               children: const [
                 Icon(Icons.favorite, color: Colors.red,),
                 SizedBox(width: 20.0,),
                 Icon(Icons.mode_comment_outlined),
                 SizedBox(width: 20.0,),
                 Icon(Icons.share)
               ],
             ),
              const Icon(Icons.bookmark_border_outlined)
            ],
          ),
        )
      ],
    );
  }
}
