import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade300,
          title: AppbarWidget(),
        ),
        body: Column(
          children: [
            Expanded(
              child: StaggeredGridView.countBuilder(
                  itemCount: 20,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      width: 100,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.network(
                            "https://d3t32hsnjxo7q6.cloudfront.net/i/991799d3e70b8856686979f8ff6dcfe0_ra,w158,h184_pa,w158,h184.png",
                            height: 150,
                          )
                        ],
                      ),
                    );
                  },
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.fit(1);
                  }),
            ),
          ],
        ));
  }
}

class AppbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Fruits and vegetables"),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.shopping_basket,
          size: 30,
          color: Colors.yellow,
        )
      ],
    );
  }
}
