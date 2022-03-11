import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class FavouriteContacts extends StatelessWidget {
  const FavouriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Favourite Contacts',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 25.0,
                    color: Colors.blueGrey,
                    icon: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
                padding: const EdgeInsets.only(left:10.0,right:10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favourites.length,
                itemBuilder: (BuildContext context, int index){
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            ChatScreen(
                                user: favourites[index],
                            ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(favourites[index].imageUrl),
                          ),
                          const SizedBox(height:6.0),
                          Text(
                              favourites[index].name,
                              style: const TextStyle(
                                color:Colors.blueGrey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
            ),
          )
        ],
      ),
    );
  }
}
