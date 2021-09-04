import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  var isFav = false;
  void switchFav() {
    setState(() {
      isFav = !isFav;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueAccent,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Image(
                  image: NetworkImage('https://consumer-img.huawei'
                      '.com/content/dam/huawei-cbg-site/en/support/laptop'
                      '-user-guide/img/laptop.png'),
                  fit: BoxFit.cover,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      switchFav();
                    });
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    color: isFav ? Colors.red : Colors.black,
                  ),
                  iconSize: 30,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Item '
                'Name',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: Text(
                'Product Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Divider(
                color: Colors.grey[500],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Price: \$1000',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      print('Hello');
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: Icon(Icons.add_shopping_cart),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
