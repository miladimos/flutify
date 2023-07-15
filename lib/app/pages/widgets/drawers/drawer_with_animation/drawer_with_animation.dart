import 'package:flutter/material.dart';

class DrawerWithAnimation extends StatelessWidget {
  const DrawerWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeSlidebar(),
          SlidebarAnimation(),
        ],
      ),
    );
  }
}

class HomeSlidebar extends StatelessWidget {
  const HomeSlidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SlidebarAnimation extends StatefulWidget {
  const SlidebarAnimation({super.key});

  @override
  State<SlidebarAnimation> createState() => _SlidebarAnimationState();
}

class _SlidebarAnimationState extends State<SlidebarAnimation>
    with SingleTickerProviderStateMixin {
  bool isSlidebarOpen = true;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnimatedPositioned(
      duration: Duration(milliseconds: 700),
      right: isSlidebarOpen ? 65 : width - 100 + 65,
      child: Row(
        children: [
          Container(
            width: width - 100,
            height: height,
            color: Color(0xff262aaa),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 100),
                ListTile(
                  title: const Text(
                    "App Title",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Container(
                    child: Text(
                      "subtitle",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 15,
                      ),
                    ),
                    margin: EdgeInsets.only(top: 7),
                  ),
                  leading: CircleAvatar(
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSlidebarOpen = !isSlidebarOpen;
              });
            },
            child: Align(
              alignment: Alignment(0, -0.8),
              child: ClipPath(
                clipper: CustomMenuIconClipper(),
                child: Container(
                  width: 35,
                  height: 110,
                  alignment: Alignment.center,
                  color: Color(0xff262aaa),
                  child: AnimatedIcon(
                    color: Colors.white,
                    size: 25,
                    icon: !isSlidebarOpen
                        ? AnimatedIcons.menu_close
                        : AnimatedIcons.close_menu,
                    progress: _animationController,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMenuIconClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0);
    path.quadraticBezierTo(size.width, 8, size.width - 10, 16);
    path.quadraticBezierTo(0, size.width, 0, size.height / 2);
    path.quadraticBezierTo(
        0, size.height - size.width, size.width - 10, size.height - 16);
    path.quadraticBezierTo(
        size.width, size.height - 8, size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
