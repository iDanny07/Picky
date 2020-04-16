import 'package:flutter/material.dart';
import 'package:picky/classes/pickyCard_class.dart';

class PickyListPage extends StatefulWidget {
  final bool isMainPage;

  const PickyListPage(this.isMainPage);

  @override
  _PickyListPageState createState() => _PickyListPageState();
}

class _PickyListPageState extends State<PickyListPage> {
  List<Widget> cardList;
  int yesCount = 0;
  int noCount = 0;

  void _removeCard(index) {
    setState(() {
      cardList.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    cardList = _getPickyCard();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (widget.isMainPage
          ? null
          : AppBar(
              title: Text("Picky List"),
              centerTitle: true,
            )),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
              child: Text(
                'Omg Our Picky List',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: cardList,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 25.0),
              child: Text(
                'Left: $noCount | Right: $yesCount',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _getPickyCard() {
    List<PickyCard> cards = new List();
    cards.add(PickyCard('Red', Colors.red));
    cards.add(PickyCard('Green', Colors.green));
    cards.add(PickyCard('Yellow', Colors.yellow));
    cards.add(PickyCard('Purple', Colors.purple));
    cards.add(PickyCard('Grey', Colors.grey));
    cards.add(PickyCard('Orange', Colors.orange));

    List<Widget> cardList = new List();
    List<PickyCard> yesList = new List();
    List<PickyCard> noList = new List();

    for (int x = 0; x < cards.length; x++) {
      cardList.add(Positioned(
        //top: cards[x].margin,
        child: Dismissible(
          key: ValueKey(
            Card(
              elevation: 12,
              color: cards[x].theColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                width: 240,
                height: 300,
              ),
            ),
          ),
          onDismissed: (DismissDirection _direction) {
            _direction == DismissDirection.startToEnd ? yesCount++ : noCount++;

            _direction == DismissDirection.startToEnd
                ? yesList.add(cards[x])
                : noList.add(cards[x]);

            _direction == DismissDirection.startToEnd
                ? print('Yes: ${cards[x].theName}')
                : print('No: ${cards[x].theName}');

            _removeCard(x);
          },
          child: Card(
            elevation: 12,
            color: cards[x].theColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: 400,
              height: 550,
            ),
          ),
        ),
      ));
    }
    return cardList;
  }
}
