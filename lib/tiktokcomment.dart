// ignore_for_file: prefer_final_fields, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const comment());
}

class Comment {
  final String userName;
  final String commentText;

  Comment({required this.userName, required this.commentText});
}

// ignore: camel_case_types
class comment extends StatelessWidget {
  const comment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TikTokClone(),
    );
  }
}

class TikTokClone extends StatefulWidget {
  const TikTokClone({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TikTokCloneState createState() => _TikTokCloneState();
}

class _TikTokCloneState extends State<TikTokClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.music_note, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'TikTok Clone',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code, color: Colors.white),
            onPressed: () {
              // Add QR code functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Add search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.mail_outline, color: Colors.white),
            onPressed: () {
              // Add messaging functionality
            },
          ),
        ],
      ),
      body: const TikTokBody(),
      bottomNavigationBar: const TikTokBottomNavBar(),
      backgroundColor: Colors.black, // Set background color to black
    );
  }
}

class TikTokBody extends StatefulWidget {
  const TikTokBody({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TikTokBodyState createState() => _TikTokBodyState();
}

class _TikTokBodyState extends State<TikTokBody> {
  TextEditingController _commentController = TextEditingController();
  List<Comment> _comments = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Video content goes here
        const Center(
          child: Text('Video Content', style: TextStyle(color: Colors.white)),
        ),
        const SizedBox(height: 20),
        // Icons for Like, Comments, Save, Share
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TikTokIcon(
                icon: Icons.favorite,
                label: '100k',
                onPressed: () {
                  // Add like functionality
                },
              ),
              TikTokIcon(
                icon: Icons.comment,
                label: '200k',
                onPressed: () {
                  _showCommentsBottomSheet(context);
                },
              ),
              TikTokIcon(
                icon: Icons.save,
                label: 'Save',
                onPressed: () {
                  // Add save functionality
                },
              ),
              TikTokIcon(
                icon: Icons.share,
                label: 'Share',
                onPressed: () {
                  // Add share functionality
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _showCommentsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Comments',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Display existing comments
              Expanded(
                child: ListView.builder(
                  itemCount: _comments.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      leading: const CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text('User'),
                      ),
                      title: Text(
                        _comments[index].userName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        _comments[index].commentText,
                        style: const TextStyle(
                          color: Colors.black, // Set the text color to black
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Add your comment text field here
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: _commentController,
                  decoration: InputDecoration(
                    hintText: 'Add a comment...',
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {
                        // Add the comment to the list
                        setState(() {
                          _comments.add(
                            Comment(
                              userName: 'Your Name',
                              commentText: _commentController.text,
                            ),
                          );
                          _commentController.clear();
                        });
                        Navigator.pop(context); // Close the bottom sheet
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              
            ],
          ),
        );
      },
    );
  }
}

class TikTokBottomNavBar extends StatelessWidget {
  const TikTokBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 254, 227, 227),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          const BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          const BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Likes'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class TikTokIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  TikTokIcon({super.key, required this.icon, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
     ],
);
}
}
