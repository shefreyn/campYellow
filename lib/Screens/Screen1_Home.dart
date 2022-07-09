import 'package:camp_yellow/resources/strings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
      child: ListView(
        children: [
          const Poster(),
          const SizedBox(height: 20),
          Container(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          const Achievements(),
          const SizedBox(height: 20),
          Container(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          const PastFeature(),
          Container(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          const LiveClanActivities(),
          Container(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          const ClanDiscussion(),
          Container(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          const ClanMembers()
        ],
      ),
    );
  }
}

//Screen Elements

class Poster extends StatelessWidget {
  const Poster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset("assets/images/zoro.jpg"),
        Container(
          color: const Color.fromARGB(150, 0, 0, 0),
          height: 50,
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Clan Name : $clanName",
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "$clanMembers Members, $onlineMembers Online",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 10),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Achievements extends StatelessWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "Achievements",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 233, 187, 71)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              const Expanded(
                  child: Text(
                "Currrent League",
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 207, 42, 101)),
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Container(
                  child: const Icon(Icons.shield,
                      size: 40, color: Color.fromARGB(255, 233, 187, 71)),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              const Expanded(
                  child: Text(
                "League Ranking",
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 207, 42, 101)),
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                    child: Text("11th",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 233, 187, 71))),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              const Expanded(
                  child: Text(
                "Experience",
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 207, 42, 101)),
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                    child: Text("2000xp",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 233, 187, 71))),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              const Expanded(
                  child: Text(
                "# of Wins",
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 207, 42, 101)),
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                    child: Text("3",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 233, 187, 71))),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class PastFeature extends StatelessWidget {
  const PastFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            "Past Featured Performances",
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 233, 187, 71)),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/profile.png",
                scale: 0.9,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
                flex: 3,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Priya in International Debating League",
                    style: TextStyle(
                        color: Color.fromARGB(255, 207, 42, 101), fontSize: 14),
                  ),
                ))
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                "assets/images/profile.png",
                scale: 0.9,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
                flex: 3,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Akshay in Global Quizing Finals",
                    style: TextStyle(
                        color: Color.fromARGB(255, 207, 42, 101), fontSize: 14),
                  ),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            "See More",
            style: TextStyle(
                fontSize: 10, color: Color.fromARGB(255, 233, 187, 71)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class LiveClanActivities extends StatelessWidget {
  const LiveClanActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            "Live Clan Activities on Platform",
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 233, 187, 71)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(child: Image.asset("assets/images/live.png")),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(child: Image.asset("assets/images/live.png")),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            "See More",
            style: TextStyle(
                fontSize: 10, color: Color.fromARGB(255, 233, 187, 71)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class ClanDiscussion extends StatelessWidget {
  const ClanDiscussion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            "Clan Discussions",
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 233, 187, 71)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "General Thread",
                style: TextStyle(
                    color: Color.fromARGB(255, 207, 42, 101), fontSize: 14),
              ),
              Text(
                "15 unread messages",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "(live) anyone enthu for trading league",
                style: TextStyle(
                    color: Color.fromARGB(255, 207, 42, 101), fontSize: 14),
              ),
              Text(
                "10 unread messages",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "(live) anyone enthu for trading league",
                style: TextStyle(
                    color: Color.fromARGB(255, 207, 42, 101), fontSize: 14),
              ),
              Text(
                "10 unread messages",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            "See More",
            style: TextStyle(
                fontSize: 10, color: Color.fromARGB(255, 233, 187, 71)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class ClanMembers extends StatelessWidget {
  const ClanMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text(
            "Clan Members",
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 233, 187, 71)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
            child: Row(
              children: [
                Container(
                  child: Image.asset("assets/images/face1.png"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Text(
                    "Arpita Sinha- Clan Head",
                    style: TextStyle(
                        color: Color.fromARGB(255, 207, 42, 101), fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
            child: Row(
              children: [
                Container(
                  child: Image.asset("assets/images/face2.png"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Text(
                    "Tushar Salve- Clan Head",
                    style: TextStyle(
                        color: Color.fromARGB(255, 207, 42, 101), fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
