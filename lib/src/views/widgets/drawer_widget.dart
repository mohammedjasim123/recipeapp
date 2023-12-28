import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipeapp/src/core/images/images.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            Images.drawerBackground,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.7),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, bottom: 70),
            child: Column(
              children: <Widget>[
                Row(children: [
                  CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: NetworkImage(
                          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Mohammed Jasim',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                const SizedBox(
                  height: 30,
                ),
                const Column(
                  children: [
                    NewRow(icon: CupertinoIcons.person, text: 'Profile'),
                    SizedBox(
                      height: 20,
                    ),
                    NewRow(icon: Icons.settings, text: 'Settings'),
                    SizedBox(
                      height: 20,
                    ),
                    NewRow(icon: Iconsax.cloud_lightning, text: 'Cooking Tips'),
                    SizedBox(
                      height: 20,
                    ),
                    NewRow(
                        icon: CupertinoIcons.person_3_fill, text: 'Community'),
                    SizedBox(
                      height: 20,
                    ),
                    NewRow(icon: Icons.error_outline, text: 'About'),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const NewRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
