import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
// import 'package:provider/provider.dart';
// import 'package:readmore/readmore.dart';
import '../bookService/bookClass.dart';
// import '../components/cartProvider.dart';

class BookDetailPage extends StatefulWidget {
  final Book book;
  static String routeName = 'BookDetailPage';

  BookDetailPage({required this.book});

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  // late bool isInCart; // Declare as late to initialize in initState

  @override
  void initState() {
    super.initState();
    // checkCartStatus();
  }

  // void checkCartStatus() {
  //   // List<Book> cartItems =
  //   //     Provider.of<CartProvider>(context, listen: false).getCartItems();

  //   setState(() {
  //     isInCart = cartItems.contains(widget.book);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.book.title),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.book.imageURL != ""
                ? Image.network(widget.book.imageURL)
                : Image.asset("images/Image_not_available.png"),
            SizedBox(height: 16),
            Text(
              widget.book.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'By ${widget.book.authors.join(", ")}',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: ReadMoreText(
                  widget.book.description,
                  trimLines: 5,
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     if (isInCart) {
            //       Provider.of<CartProvider>(context, listen: false)
            //           .removeFromCart(widget.book);
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         SnackBar(
            //           content: Text('Removed from My Cart'),
            //           duration: Duration(seconds: 2),
            //         ),
            //       );
            //     } else {
            //       Provider.of<CartProvider>(context, listen: false)
            //           .addToCart(widget.book);
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         SnackBar(
            //           content: Text('Added to My Cart'),
            //           duration: Duration(seconds: 2),
            //         ),
            //       );
            //     }
            //     // Toggle isInCart after the book is added or removed
            //     setState(() {
            //       isInCart = !isInCart;
            //     });
            //   },
            //   child: Text(isInCart ? 'Remove from My Cart' : 'Add to My Cart'),
            // ),
          ],
        ),
      ),
    );
  }
}
