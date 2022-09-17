part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function? onbackButtonPressed;
  final Widget? child;
  final Color? backcolor;

  const GeneralPage({
    super.key,
    this.title = "Title",
    this.subtitle = "Subtitle",
    this.onbackButtonPressed,
    this.child,
    this.backcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: backcolor,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          // onBackButtonPressed != null
                          //     ? Container(
                          //         width: 24,
                          //         height: 24,
                          //         child: Text('<'),
                          //       )
                          //     : SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(title,
                                  style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text(subtitle,
                                  style: GoogleFonts.poppins(
                                    color: Colors.amber,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    child ?? SizedBox(),
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}
