import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeView> with SingleTickerProviderStateMixin {
  bool _isAppbar = true;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        appBarStatus(false);
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        appBarStatus(true);
      }
    });
  }

  void appBarStatus(bool status) {
    setState(() {
      _isAppbar = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AnimatedContainer(
            height: _isAppbar ? 55.0 : 0.0,
            duration: const Duration(milliseconds: 200),
            child: const CustomAppBar(),
          ),
        ),
        body: ListView.builder(
          controller: _scrollController,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return container();
          },
        ),
      ),
    );
  }
}

Widget container() {
  return Container(
    height: 80.0,
    color: Colors.pink,
    margin: const EdgeInsets.all(8.0),
    width: 100,
    child: const Center(
        child: Text(
      'Container',
      style: TextStyle(
        fontSize: 18.0,
      ),
    )),
  );
}

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  AppBarView createState() => AppBarView();
}

class AppBarView extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: InkWell(
        onTap: () => {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.network(
                  'https://images.squarespace-cdn.com/content/5aee389b3c3a531e6245ae76/1530965251082-9L40PL9QH6PATNQ93LUK/linkedinPortraits_DwayneBrown08.jpg?format=1000w&content-type=image%2Fjpeg'),
            ),
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          alignment: Alignment.centerLeft,
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
      title: Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Custom Appbar",
            style: TextStyle(color: Colors.black),
          )),
    );
  }
}
