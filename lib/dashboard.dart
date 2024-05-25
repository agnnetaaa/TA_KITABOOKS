import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  var height, width;

  List imgData = [
    // "images/mcqs.png",
    // "images/quiz.png",
    // "images/pastpapers.png",
    // "images/pdf.png",
    // "images/job.png",
    // "images/about.png",
  ]; //blom ada gambar

  List titles = [
    "History of Vihara",
    "History of Islam",
    "History of Buddha",
    "History of Mosque",
    "History of Christian",
    "History of Church",
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 66, 75),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8),
          
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                image: DecorationImage(image: AssetImage("images/woman.png"))),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
              "Nenenew",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white54,
                letterSpacing: 1,
                fontWeight: FontWeight.bold
              ),
            ),
                Text(
              "Premiun fans",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white54,
                letterSpacing: 1,
              ),
            ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.sort,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 4, 66, 75),
          width: width,
          child: Column(
            children: [
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Container(
                decoration: BoxDecoration(),
                height: height * 0.1,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 20,
                        right: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text(
                            "Histories",
                            style: TextStyle(
                              fontSize: 36,
                              fontFamily: "Poppins",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              // height: 54,
                              letterSpacing: 1,
                            ),
                          ),
                          // SizedBox(height: 10),
                          // Text("Last Update 7 Aug 2023",
                          // style: TextStyle(
                          //   fontSize: 16,
                          //   color: Colors.white54,
                          //   letterSpacing: 1,
                          // ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 66, 75),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  // height: height,
                  width: width,
                  padding: EdgeInsets.only(bottom: 20),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      mainAxisSpacing: 25,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: imgData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                imgData[index],
                                width: 100,
                              ),
                              Text(
                                titles[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
