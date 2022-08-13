import 'package:find_job/shared/components/components.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
      child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  child: Text(
                    "Message",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    child: Text(
                      "                        ...",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xffA9A9A9))),
              child: Row(
                children: [
                  Icon(Icons.search, color: const Color(0xffA9A9A9)),
                  Text(
                    'search',
                    style: TextStyle(color: const Color(0xffA9A9A9)),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                  child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => buildMessageItem(),
                      separatorBuilder: (context, index) => separator(),
                      itemCount: 10)),
            )
          ]),
    ));
  }
}
