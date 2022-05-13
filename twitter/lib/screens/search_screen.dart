import 'package:flutter/material.dart';
import '../widgets/users_search_results_widget.dart';
import '../widgets/bottom_bar_menu.dart';
import '../users.dart';
import './signin_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.picsum.photos/id/17/200/300.jpg?hmac=a_Eowf7JMfHVEQi6MENyokjh5hhzVOqoXH6pUXxYKtU'),
                      radius: 20,
                    )),
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintStyle: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                        fontSize: 20),
                    contentPadding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: (Colors.grey[200])!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                    ),
                  ),
                )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()));
                    },
                    child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                  child: const Icon(Icons.settings_outlined,
                      color: Colors.blue, size: 30),
                ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return UsersSearchResultsWidget(
                      name: userList[index]['name'],
                      username: userList[index]['username'],
                      imgUrl: userList[index]['imgUrl'],
                      isVerified: userList[index]['isVerified'],
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }
}