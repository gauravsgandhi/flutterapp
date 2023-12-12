import 'package:e_commerce_app/models/catalog.dart';
import 'package:e_commerce_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomedetailsPage extends StatelessWidget {
  final Item catalog;

  const HomedetailsPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
                    
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: EdgeInsets.zero,
                    children: [
                      "\$${catalog.price}".text.bold.xl4.red800.make(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(MyTheme.darkblue),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(),
                            )),
                        child: "Buy".text.xl.make(),
                      ).wh(100, 60)
                    ],
                  ).p32(),
      ),


      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image),
          ).h32(context),
          Expanded(child: VxArc(
            height: 10.0,
            arcType: VxArcType.convey,
            edge: VxEdge.top,
            child: Container(
              color: Colors.white,
              width: context.screenWidth,
              child: Column(children: [
                catalog.name.text.xl4.color(MyTheme.darkblue).bold.make(),
                catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                10.heightBox,
                "Et dolor tempor rebum tempor et et. Consetetur aliquyam sit at invidunt lorem. Ea eos vero clita sed tempor rebum tempor et et.Consetetur aliquyam sit at invidunt lorem. Ea eos vero clita sedgubergren justo".text.textStyle(context.captionStyle).make().p32()
              ],
              ).py64(),
            ),
          ))
        ]),
      ),
    );
  }
}
