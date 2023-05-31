import 'package:flutter/material.dart';
import 'checkbox.dart';

class SortAndFilter extends StatefulWidget {
  const SortAndFilter({Key? key}) : super(key: key);

  @override
  State<SortAndFilter> createState() => _SortAndFilterState();
}

class _SortAndFilterState extends State<SortAndFilter> {
  var bgColForTopBanner = const Color(0xff1e1e1e);
  int _value = 0;
  int index = -1;
  onTapSort() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Radio(
                    activeColor: Colors.purpleAccent,
                    value: 1,
                    groupValue: _value,
                    onChanged: (_) {
                      setState(() {
                        _value = 1;
                        Navigator.pop(context);
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text('Relevance'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.purpleAccent,
                    value: 2,
                    groupValue: _value,
                    onChanged: (_) {
                      setState(() {
                        _value = 2;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text('Popularity'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.purpleAccent,
                    value: 3,
                    groupValue: _value,
                    onChanged: (_) {
                      setState(() {
                        _value = 3;
                        Navigator.pop(context);
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text('Price--Low to High'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.purpleAccent,
                    value: 4,
                    groupValue: _value,
                    onChanged: (_) {
                      setState(() {
                        _value = 4;
                        Navigator.pop(context);
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text('Price--High to Low'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.purpleAccent,
                    value: 5,
                    groupValue: _value,
                    onChanged: (_) {
                      setState(() {
                        _value = 5;
                        Navigator.pop(context);
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text('Newest First'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  onTapFilter() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const ListTile(
                title: Text('Samsung'),
                trailing: TaskCheckbox(),
              ),
              const ListTile(
                title: Text('Vivo'),
                trailing: TaskCheckbox(),
              ),
              const ListTile(
                title: Text('Xiaomi'),
                trailing: TaskCheckbox(),
              ),
              const ListTile(
                title: Text('Nokia'),
                trailing: TaskCheckbox(),
              ),
              const ListTile(
                title: Text('Apple'),
                trailing: TaskCheckbox(),
              ),
              const ListTile(
                title: Text('RealMe'),
                trailing: TaskCheckbox(),
              ),
              MaterialButton(
                color: Colors.purpleAccent,
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Apply',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                  onTap: onTapSort,
                  child: Container(
                    height: 48,
                    color: bgColForTopBanner,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'images/Sort.png',
                            scale: 1,
                          ),
                          onPressed: () {},
                        ),
                        const Text(
                          'Sort',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  )),
            ),
            Expanded(
              child: GestureDetector(
                  onTap: onTapFilter,
                  child: Container(
                    height: 48,
                    color: bgColForTopBanner,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'images/Filter.png',
                            scale: 1,
                          ),
                          onPressed: () {},
                        ),
                        const Text(
                          'Filter',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
