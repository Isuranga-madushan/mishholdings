import 'package:flutter/material.dart';

import '../widgets/text_field.dart';

class Item {
  final String imageUrl;
  final String title;
  final String subTitle;

  Item({required this.imageUrl, required this.title, required this.subTitle});
}

class ItemListItem extends StatefulWidget {
  @override
  _ItemListItemState createState() => _ItemListItemState();
}

class _ItemListItemState extends State<ItemListItem> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 50,),
              const Text(
                "Main Category",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Brows Main Category",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: CustomTextField(
                  labelText: 'Search Category',
                  hintText: 'Search Category',
                ),
              ),
              TextField(
                onChanged: _filterItems,
                decoration: InputDecoration(
                  hintText: 'Search...',
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
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        padding: EdgeInsets.only(bottom: 10),
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
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.network(
                                filteredItems[index].imageUrl,
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    filteredItems[index].title,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    children: [
                                      Icon(Icons.add_circle),
                                      Text("100 +")
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
        ),
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
