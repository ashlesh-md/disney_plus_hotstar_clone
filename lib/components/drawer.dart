import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class myDrawer extends StatefulWidget {
  static bool isChecked = false;
  const myDrawer({Key? key}) : super(key: key);

  @override
  State<myDrawer> createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        backgroundColor: const Color.fromARGB(255, 11, 11, 11),
        child: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ashlesh M D',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '+91 7624880294',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              )),
          Container(
            color: const Color.fromARGB(255, 19, 19, 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'KiDS Safe',
                  style: TextStyle(color: Colors.yellow.shade400),
                ),
                Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                      activeColor: const Color.fromARGB(255, 20, 41, 62),
                      thumbColor: myDrawer.isChecked
                          ? const Color.fromARGB(255, 24, 99, 185)
                          : Colors.grey,
                      value: myDrawer.isChecked,
                      onChanged: ((value) {
                        setState(() {
                          myDrawer.isChecked = !myDrawer.isChecked;
                          Navigator.pushNamed(
                              context, Navigator.defaultRouteName);
                        });
                      })),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Downloads",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Watch videos offline",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 14)),
                ],
              ),
              leading: const Icon(
                Icons.download_sharp,
                color: Colors.grey,
              ),
              onTap: () {
                setState(() {});
              },
            ),
          ),
          !myDrawer.isChecked
              ? Column(
                  children: [
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Watchlist",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Save to watch later",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 14)),
                        ],
                      ),
                      leading: const Icon(
                        Icons.list,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        setState(() {});
                      },
                    ),
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Prizes",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Prizes you have won",
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 14),
                          ),
                        ],
                      ),
                      leading: const Icon(
                        Icons.card_giftcard,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        setState(() {});
                      },
                    ),
                    ListTile(
                        title: const Text(
                          'Channels',
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: const Icon(
                          Icons.star_border_purple500,
                          color: Colors.grey,
                        ),
                        onTap: (() {
                          setState(() {
                            Navigator.pushNamed(
                                context, Navigator.defaultRouteName);
                          });
                        })),
                    ListTile(
                        title: const Text(
                          'Languages',
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: const Icon(
                          Icons.language,
                          color: Colors.grey,
                        ),
                        onTap: (() {
                          setState(() {
                            Navigator.pushNamed(
                                context, Navigator.defaultRouteName);
                          });
                        })),
                    ListTile(
                        title: const Text(
                          'Genres',
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: const Icon(
                          Icons.sign_language_rounded,
                          color: Colors.grey,
                        ),
                        onTap: (() {
                          setState(() {
                            Navigator.pushNamed(
                                context, Navigator.defaultRouteName);
                          });
                        })),
                  ],
                )
              : SizedBox(),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                ListTile(
                    title: const Text(
                      'Preferences',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: const Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    onTap: (() {
                      setState(() {
                        Navigator.pushNamed(
                            context, Navigator.defaultRouteName);
                      });
                    })),
                !myDrawer.isChecked
                    ? ListTile(
                        title: const Text(
                          'Help',
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: const Icon(
                          Icons.help,
                          color: Colors.grey,
                        ),
                        onTap: (() {
                          setState(() {
                            Navigator.pushNamed(
                                context, Navigator.defaultRouteName);
                          });
                        }))
                    : SizedBox(),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Privacy Policy",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "v12.4.1.1149",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 0,
                  width: 15,
                ),
                Text(
                  '.',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                ),
                const SizedBox(
                  height: 0,
                  width: 15,
                ),
                Text(
                  'T&C',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
