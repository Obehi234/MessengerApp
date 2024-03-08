import 'package:flutter/material.dart';

List storyList = [
  {
    "name": "Novac",
    "imageUrl": "https://randomuser.me/api/portraits/men/31.jpg",
    "isOnline": true,
    "hasStory": true,
  },
  {
    "name": "Derick",
    "imageUrl": "https://randomuser.me/api/portraits/men/81.jpg",
    "isOnline": false,
    "hasStory": false,
  },
  {
    "name": "Mevis",
    "imageUrl": "https://randomuser.me/api/portraits/women/49.jpg",
    "isOnline": true,
    "hasStory": false,
  },
  {
    "name": "Emmanual",
    "imageUrl": "https://randomuser.me/api/portraits/men/35.jpg",
    "isOnline": true,
    "hasStory": true,
  },
  {
    "name": "Gracy",
    "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
    "isOnline": false,
    "hasStory": false,
  },
  {
    "name": "Robert",
    "imageUrl": "https://randomuser.me/api/portraits/men/36.jpg",
    "isOnline": false,
    "hasStory": true,
  }
];


Widget stories(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(children: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          children: [
            Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFE9EAEC)),
                child: const Center(child: Icon(Icons.add, size: 33))),
            const SizedBox(height: 10),
            const SizedBox(
                width: 75,
                child: Align(
                    child: Text(
                  'Your Story',
                  overflow: TextOverflow.ellipsis,
                )))
          ],
        ),
      ),
      Row(
          children: List.generate(storyList.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            children: [
              Container(
                width: 60,
                height: 60,
                child: Stack(
                  children: [
                    storyList[index]['hasStory']
                        ? Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.blueAccent, width: 3)),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            storyList[index]['imageUrl']),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          )
                        : Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        storyList[index]['imageUrl']),
                                    fit: BoxFit.cover)),
                          ),

                          storyList[index]['isOnline'] ? Positioned(top: 38,
                          left: 42,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Color(0xFF66BB6A)
                            )
                          ),)
                          : Container()
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(width: 75,
              child: Align(child: Text(storyList[index]['name'], overflow: TextOverflow.ellipsis,)))
            ],
          ),
        );
      }))
    ]),
  );
}
