import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostScreen(),
    );
  }
}

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

bool _isLike = false;

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: const Text('Ahmed\'s Post'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade800,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(
                        'https://sites.google.com/site/duaaibsite/_/rsrc/1472778764012/5/7/images%20%281%29.jpg',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ahmed Mohammed',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            children: const [
                              Text('today 8:30 pm'),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.public_rounded,
                                size: 15,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz_rounded,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(3, 10, 0, 0),
            child: Text(
              'Palestine !',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const Expanded(
            child: Image(
              image: NetworkImage(
                'https://sites.google.com/site/duaaibsite/_/rsrc/1472778764012/5/7/images%20%281%29.jpg',
              ),
              width: 393,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 10,
                  child: Icon(
                    Icons.thumb_up_rounded,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text('15 Likes'),
                Padding(
                  padding: EdgeInsets.only(left: 200),
                  child: Text(
                    '20 Comments',
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 205),
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _isLike = !_isLike;
                        });
                      },
                      icon: const Icon(
                        Icons.thumb_up_outlined,
                        size: 30,
                      ),
                      color: _isLike ? Colors.blue : Colors.grey[700],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mode_comment_outlined,
                        size: 30,
                      ),
                      color: Colors.grey[700],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.screen_share_outlined,
                        size: 30,
                      ),
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
