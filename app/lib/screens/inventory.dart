import 'package:covid/app_routes.dart';
import 'package:covid/data/inventory_item.dart';
import 'package:covid/data/local_data.dart';
import 'package:covid/utils.dart';
import 'package:covid/utils/const_variables.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InventoryPage extends StatefulWidget {
  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  List<InventoryItem> items;

  @override
  void initState() {
    super.initState();
  }

  Widget _buildItems(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: items.length,
        separatorBuilder: (context, index) => Divider(
              color: Color(0xff9AD4D6),
              thickness: 2,
            ),
        itemBuilder: (BuildContext context, int index) {
          InventoryItem item = items[index];
          int daysToExpire =
              getExpirationDays(item.expirationDays, item.expirationTime);
          return Container(
            margin: EdgeInsets.only(top: getSizeHeight(context, 2)),
//            height: getSizeHeight(context, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //photo,
                SizedBox(
                  width: getSizeWidth(context, 5),
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset(item.photo),
                  radius: 30,
                ),
                SizedBox(
                  width: getSizeWidth(context, 7),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: getSizeHeight(context, 0.7),
                    ),
                    Text(
                      item.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Bought ' +
                          DateFormat('yyyy-MM-dd').format(item.expirationTime),
                      style: TextStyle(
                        color: Color(0xffA19C9C),
                        fontStyle: FontStyle.italic,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: getSizeHeight(context, 1),
                    ),
                    daysToExpire != 0
                        ? Container()
                        : SizedBox(
                            height: getSizeHeight(context, 5),
                            width: getSizeWidth(context, 25),
                            child: FlatButton(
                              color: purpleButtonActive,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(12.0)),
                              child: Text("Order More",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: turquoiseLightButton,
                                  )),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.shoppingBasket);
                              },
                            ),
                          ),
                  ],
                ),
                SizedBox(
                  width: getSizeWidth(context, 15),
                ),
                daysToExpire == 0
                    ? new Icon(Icons.error_outline,
                        color: Colors.black, size: 35.0)
                    : new Icon(Icons.check_circle_outline,
                        color: Color(0xff9AD4D6), size: 35.0),
                SizedBox(
                  width: getSizeWidth(context, 1),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      daysToExpire.toString(),
                      style: TextStyle(
                        color: daysToExpire == 0
                            ? Color(0xff101935)
                            : Color(0xff9AD4D6),
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "days",
                      style: TextStyle(
                        color: daysToExpire == 0
                            ? Color(0xff101935)
                            : Color(0xff9AD4D6),
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: getSizeWidth(context, 2),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    items = LocalData.instance.inventory;
    return Column(
      children: <Widget>[
        _buildItems(context),
        Divider(
          color: Color(0xff9AD4D6),
          thickness: 2,
        )
      ],
    );
  }
}
