// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CsharpModel {
  String? thumbnail;
  String? url;
  String? tittle;
  CsharpModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<CsharpModel> VideoList = [
    CsharpModel(
        thumbnail: "assets/c#0.jpg",
        url: "https://youtu.be/ICiTW4-5TmY?si=aLbyto338LSGPGNw",
        tittle: "Creation of C# |C# Basics for Beginners in Hindie"),
    CsharpModel(
        thumbnail: "assets/c#1.jpg",
        url: "https://youtu.be/bKx3_RHoxtI?si=ppEpD2p66EmaUh3R",
        tittle: "Installing Visual Studio |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#2.jpg",
        url: "https://youtu.be/MiF9FBZF4AI?si=sPFxXhuu5m3FEshh",
        tittle: "Write Your First Program |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#3.jpg",
        url: "https://youtu.be/feLlmdBW2_A?si=5t91VeF2YCBzQQDV",
        tittle:
            "Understanding Your First Program |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#4.jpg",
        url: "https://youtu.be/sAIbF-zmWgo?si=jtiopaW7ZyBQcZ5J",
        tittle:
            "Datatypes Literals and Variables |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#5.jpg",
        url: "https://youtu.be/ctF7cdGdy68?si=IS10KgxofKgTislc",
        tittle:
            "Identifiers And Keywords in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#6.jpg",
        url: "https://youtu.be/ulE7qXjtgkU?si=EchmqNonRmkdLT14",
        tittle: "Operators in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#7.jpg",
        url: "https://youtu.be/rW1CfKzx-DQ?si=2xTnBXHApSH2g5Pp",
        tittle: "Type Conversion in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#8.jpg",
        url: "https://youtu.be/CADs3wuFeRs?si=UDgXF7QI7OStZgny",
        tittle: "Getting User Input in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#9.jpg",
        url: "https://youtu.be/cjPuegdcjNI?si=SygUdabyYiVsZkzW",
        tittle: "Control Statements in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#10.jpg",
        url: "https://youtu.be/Jmoj-j2U7rU?si=8zIbluJ3vU16xKDY",
        tittle: "Control Statements in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#11.jpg",
        url: "https://youtu.be/KO8oBhToN7s?si=pfmjz_bTOMxABw77",
        tittle: "Classes and Objects in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#12.jpg",
        url: "https://youtu.be/KsDGZ6hsNAk?si=xDeP8n7NIF_VjS8T",
        tittle: "Methods in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#13.jpg",
        url: "https://youtu.be/tbtrgAsmh8Q?si=APJcsW2geVfMcuU5",
        tittle: "Recursion in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#14.jpg",
        url: "https://youtu.be/P8XjVMe2VsM?si=vR_DaKHuynNnE59J",
        tittle: "Access Modifiers in C# |C# Basics for Beginners in Hindii"),
    CsharpModel(
        thumbnail: "assets/c#15.jpg",
        url: "https://youtu.be/rVHNrs8Ymjs?si=3qtSe3-EChmw6i_4",
        tittle: "What is Inheritance and Different Types of Inheritance in C#"),
    CsharpModel(
        thumbnail: "assets/c#16.jpg",
        url: "https://youtu.be/CSuj7l-ebAU?si=sIf84WKXNVtILNbA",
        tittle: "Polymorphism in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#17.jpg",
        url: "https://youtu.be/RTvJJHajibg?si=yfnSBqVACof6tgo3",
        tittle: "Constructor in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#18.jpg",
        url: "https://youtu.be/-BEG5is3COI?si=rSV9vVFgZp11bL_9",
        tittle: "Encapsulation in C# |C# Basics for Beginners in Hindi"),
    CsharpModel(
        thumbnail: "assets/c#19.jpg",
        url: "https://youtu.be/HMbTIcyBM5o?si=sL6jY25svdlAH7Lf",
        tittle: "Array and List in C# |C# Basics for Beginners in Hindi"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
