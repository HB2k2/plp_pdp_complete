import 'package:flutter/material.dart';

class StorePickupListModel {
  String name;
  String address;

  StorePickupListModel({required this.name, required this.address});
}

class StorePickupList extends StatefulWidget {
  const StorePickupList({Key? key}) : super(key: key);

  @override
  State<StorePickupList> createState() => _StorePickupListState();
}

class _StorePickupListState extends State<StorePickupList> {
  Color color = Colors.grey;
  Color tcolor = Colors.deepPurpleAccent;
  int k = -1;
  List PickupList = [
    StorePickupListModel(
        name: 'Amit Ahuja',
        address:
            'Mohan Subarbia, Phase 1, P-Wing, Flat No. 203, Navre Park, Near Ayappa Temple, AMBARNATH, MAHARASHTRA 421501 +91 9878773837'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
    StorePickupListModel(
        name: 'Prasad Rameshwaram',
        address:
            'Mahalaxmi Chs, Flat No. 2, Near Civil Court Opp. Courtview Apartments, Ulhasnagar, MAHARASHTRA 421003 +91 9810122345'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: PickupList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    k = index;
                  });
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: index == k ? tcolor : color, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //surfaceTintColor: Colors.amber,
                  //shadowColor: Colors.amber,
                  color: Color(0xff171717),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          PickupList[index].name,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                        child: Text(
                          PickupList[index].address,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
