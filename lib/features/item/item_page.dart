import 'package:delivery_app/common/app_colors.dart';
import 'package:delivery_app/common/styles.dart';
import 'package:delivery_app/features/checkout/checkout_page.dart';
import 'package:delivery_app/features/item/item_view_model.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  final IItemViewModel viewModel;
  ItemPage({Key key, this.viewModel}) : super(key: key);

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    widget.viewModel.didTapCart = () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return CheckoutPage();
      }));
    };
    widget.viewModel.didTapFavorite = () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return CheckoutPage();
      }));
    };
  }

  @override
  Widget build(BuildContext context) {
    final double favoriteBtnWidth = MediaQuery.of(context).size.width / 5;
    final double purchaseBtnWidth =
        (MediaQuery.of(context).size.width / 5) * 4 - favoriteBtnWidth;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 240,
            child: Image.network(
              widget.viewModel.foodItem.imageURL,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.only(top: 180),
            decoration: BoxDecoration(
                color: AppColors.defaultBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    widget.viewModel.foodItem.title,
                    style: TextStyles.headerText(32),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "${widget.viewModel.foodItem.price.toStringAsFixed(2)}",
                        style: TextStyles.headerText(40),
                      ),
                      Text(
                        " \$ / ${widget.viewModel.foodItem.unit.toString()}",
                        style: TextStyles.secondaryText(24),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    widget.viewModel.descriptonTitle,
                    style: TextStyles.headerText(24),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Scrollbar(
                    controller: scrollController,
                    isAlwaysShown: true,
                    child: Container(
                      height: 150,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        controller: scrollController,
                        child: Text(
                          // Não tem essa informação nos objetos então fica como texto estatico
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          style: TextStyles.secondaryText(18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 48,
                        width: favoriteBtnWidth,
                        decoration: BoxDecoration(
                            color: AppColors.textSecondaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.favorite),
                            onPressed: () {
                              if (widget.viewModel.didTapFavorite != null)
                                widget.viewModel.didTapFavorite();
                            }),
                      ),
                      InkWell(
                        onTap: () {
                          if (widget.viewModel.didTapCart != null)
                            widget.viewModel.didTapCart();
                        },
                        child: Container(
                          height: 48,
                          width: purchaseBtnWidth,
                          decoration: BoxDecoration(
                              color: AppColors.buttonPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                widget.viewModel.btnAddCartTitle,
                                style: TextStyles.primaryButtonText,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
