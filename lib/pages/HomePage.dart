import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int seconds = 0;
  late Timer timer;
  bool show = false;
  bool startt = true;

  // @override
  // void initState() {
  //   super.initState();
  // }

  void start() {
    // timer = Timer.periodic(Duration(seconds: 1), );
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        seconds += 1;
      });
    });
    setState(() {
      show = true;
      startt = false;
    });
  }

  void pause() {
    timer.cancel();
    setState(() {
      startt = true;
    });
  }

  void clear() {
    setState(() {
      seconds = 0;
      show = false;
      pause();
    });
   
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$seconds Seconds'),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: startt ? start : null,
                        icon: const Icon(Icons.play_arrow)),
                    Text("Start")
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: show ? pause : null,
                        icon: Icon(Icons.pause)),
                    Text("Pause")
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    IconButton(onPressed: clear, icon: const Icon(Icons.clear)),
                    Text("Reset")
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
