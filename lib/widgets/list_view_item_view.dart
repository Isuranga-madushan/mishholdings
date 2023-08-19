import 'package:flutter/material.dart';

class Item {
  final String imageUrl;
  final String title;
  final String subTitle;

  Item({required this.imageUrl, required this.title, required this.subTitle});
}

class ItemListViewScreen extends StatefulWidget {
  @override
  _ItemListViewScreenState createState() => _ItemListViewScreenState();
}

class _ItemListViewScreenState extends State<ItemListViewScreen> {
  List<Item> items = [
    Item(
        imageUrl:
            'https://th.bing.com/th/id/R.8a6d4a3370c72dd5961d989c69cae290?rik=hrYnzI2zFQJhyw&pid=ImgRaw&r=0',
        title: 'Item 1',
        subTitle: 'Sub Title 1'),
    Item(
        imageUrl:
            'https://th.bing.com/th/id/R.8a6d4a3370c72dd5961d989c69cae290?rik=hrYnzI2zFQJhyw&pid=ImgRaw&r=0',
        title: 'Item 2',
        subTitle: 'Sub Title 2'),
    Item(
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/cdb-documents.appspot.com/o/fac48418-bbaa-4105-af64-9b7d97b683f8.jpg?alt=media',
        title: 'Item 2',
        subTitle: 'Sub Title 2'),
    Item(
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/cdb-documents.appspot.com/o/fac48418-bbaa-4105-af64-9b7d97b683f8.jpg?alt=media',
        title: 'Item 2',
        subTitle: 'Sub Title 2'),
    Item(
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/cdb-documents.appspot.com/o/fac48418-bbaa-4105-af64-9b7d97b683f8.jpg?alt=media',
        title: 'Item 2',
        subTitle: 'Sub Title 2'),
    Item(
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/cdb-documents.appspot.com/o/fac48418-bbaa-4105-af64-9b7d97b683f8.jpg?alt=media',
        title: 'Item 2',
        subTitle: 'Sub Title 2'),
    Item(
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/cdb-documents.appspot.com/o/fac48418-bbaa-4105-af64-9b7d97b683f8.jpg?alt=media',
        title: 'Item 2',
        subTitle: 'Sub Title 2'),
    Item(
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/cdb-documents.appspot.com/o/fac48418-bbaa-4105-af64-9b7d97b683f8.jpg?alt=media',
        title: 'Item 2',
        subTitle: 'Sub Title 2'),
    Item(
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/cdb-documents.appspot.com/o/fac48418-bbaa-4105-af64-9b7d97b683f8.jpg?alt=media',
        title: 'Item 2',
        subTitle: 'Sub Title 2'),
    // Add more items
  ];

  List<Item> filteredItems = [];

  @override
  void initState() {
    filteredItems = items;
    super.initState();
  }

  void _filterItems(String query) {
    setState(() {
      filteredItems = items
          .where(
              (item) => item.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5D7D5),
      appBar: AppBar(
        title: Text('Item List tofsfjkbskf'),
      ),
      body: Column(
        children: [
          Container(
            width: 300, // Set your desired width
            height: 50,
            child: TextField(
              onChanged: _filterItems,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search...',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(
                          item: filteredItems[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    padding: EdgeInsets.only(bottom: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.network(
                            filteredItems[index].imageUrl,
                            height: double.maxFinite,
                            width: 130,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Column(
                         // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 15),
                              child: Text(
                                filteredItems[index].title,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 10),
                              child: Text(
                                filteredItems[index].subTitle,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, bottom: 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 15,
                                  ),
                                  Text("3.5 KM"),
                                  const SizedBox(width: 20,),
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => ItemListScreen()),
                                        // );
                                      },
                                      child: Text("View"),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(50, 20),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              30), // Set your desired border radius
                                        ),
                                        backgroundColor: Colors
                                            .red, // Set your desired background color here
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ItemDetailScreen extends StatelessWidget {
  final Item item;

  ItemDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Detail'),
      ),
      body: Column(
        children: [
          Image.network(item.imageUrl),
          Text(item.title),
          Text(item.subTitle),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailsPage(
                    item: item,
                  ),
                ),
              );
            },
            child: Text('Details'),
          ),
        ],
      ),
    );
  }
}

class ItemDetailsPage extends StatelessWidget {
  final Item item;

  ItemDetailsPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(item.imageUrl),
            Text(item.title),
            Text(item.subTitle),
            // Add more details here
          ],
        ),
      ),
    );
  }
}
