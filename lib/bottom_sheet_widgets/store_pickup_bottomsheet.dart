import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/store_pickup_list.dart';
import 'package:flutter_application_2/bottom_sheet_widgets/top_bar.dart';
//import 'package:review_modal/store_address_list.dart';

class StorePickup extends StatelessWidget {
  const StorePickup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        topBar(),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Store pickup",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230, top: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                icon: const Icon(
                  Icons.close_sharp,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 12, bottom: 24),
              child: Image(
                width: 81,
                height: 66,
                image: AssetImage(
                  'pdp_assets/images/ic_Sample.jpeg',
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Vivo X70 Pro+5G(256GB ROM,12GB\nRAM, V2114, Enigma Black)",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "₹79,990",
                  )
                ],
              ),
            ),
          ],
        ),
        const StorePickupList(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff8241FF)),
                    ),
                    child: const Text("Confirm"),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
