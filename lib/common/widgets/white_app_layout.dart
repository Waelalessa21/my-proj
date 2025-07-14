import 'package:flutter/material.dart';
import 'package:sayer_version2/common/theme/colors.dart';

class WhiteAppLayout extends StatelessWidget {
  const WhiteAppLayout({
    super.key,
    required this.child,
    this.appBar,
    this.noPettern = false,
  });
  final bool noPettern;
  final Widget child;
  final PreferredSizeWidget? appBar;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      //this same column (align items top to bottom) but it arranges items on top of each other.
      child: Stack(
        children: [
          noPettern
              ? SizedBox.shrink() //Empty space, supposed we have no image? leave it empty.
              //What if we have image here? then we need it to come above the Scaffold, THIS IS WHY WE NEED STACK!!
              : Column(
                children: [Image.asset("assets/images/top_sayer_pattern.png")],
              ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar,
            body: child, //Any screen have this layout
          ),
        ],
      ),
    );
  }
}
