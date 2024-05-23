// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CplusplusModel {
  String? thumbnail;
  String? url;
  String? tittle;
  CplusplusModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<CplusplusModel> VideoList = [
    CplusplusModel(
        thumbnail: "assets/c+1.jpg",
        url: "https://youtu.be/Cyha_W_gPdg?si=cFPBEKbG7htdCLt9",
        tittle:
            "Introduction to C++ for beginners | C++ Placement Course [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+2.jpg",
        url: "https://youtu.be/7EW297QuJl0?si=9jCvS8HytMaN31e4",
        tittle: "What is C++ and Why C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+3.jpg",
        url: "https://youtu.be/Kw5_cMrlSdE?si=gcyy8RfZb2eNTykQ",
        tittle: "History of C++ | Evolution of C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+4.jpg",
        url: "https://youtu.be/jC0k-4Si0dM?si=TwXdvn4hMx7R1Tal",
        tittle:
            "Difference Between Procedural Oriented and Object Oriented Programming | POP vs OOP [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+5.jpg",
        url: "https://youtu.be/T3VW-AoqKgk?si=L7kAtq36qBkV9gTk",
        tittle:
            "What is Object Oriented Programming in C++ | OOPs Part - 1 [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+6.jpg",
        url: "https://youtu.be/zQLPY20uxrE?si=bBbgWrH-0espe11A",
        tittle:
            "Inheritance in C++ | Types of Inheritance | OOPs Part - 2 [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+7.jpg",
        url: "https://youtu.be/NPdN8Zynco4?si=hbhqKUZ-wpeDAqpP",
        tittle: "Object Oriented Programming in C++ | OOPs Part - 3 [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+8.jpg",
        url: "https://youtu.be/hS-4pj88rCM?si=q5G7Cp7MrC-sn-vG",
        tittle: "How to Write Program in C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+9.jpg",
        url: "https://youtu.be/ZdcUsgVk84s?si=UoRpUMZURKNAuD_S",
        tittle:
            "C++ Practical - How to Download and Install Turbo C++ on Windows [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+10.jpg",
        url: "https://youtu.be/386bui247w8?si=5vQiait8PJTE7rG2",
        tittle:
            "C++ Practical - How to Download and Install VS Code and MinGW Compiler for C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+11.jpg",
        url: "https://youtu.be/3cmUn__aKr8?si=AY4KoX7JCcnN-btm",
        tittle: "First C++ Program Using Turbo C++ and VS Code [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+12.jpg",
        url: "https://youtu.be/_0cYzQ5De44?si=UdOKgK-iDhmjrrwB",
        tittle: "Errors in C++ | Types of Errors in C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+13.jpg",
        url: "https://youtu.be/-N0NtFjK50Y?si=Aq0gky3wORDNdHFH",
        tittle: "Stream in C++ | Types of Stream in C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+14.jpg",
        url: "https://youtu.be/TvAOVRZnybY?si=yP6c_CYNNRb7Y8Ue",
        tittle: "out & Cin in C++ | Input and Output in C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+15.jpg",
        url: "https://youtu.be/-lQ2Iy6c5d8?si=NqZ-k4QP21WI0l2E",
        tittle: "C++ Keywords & Identifiers [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+16.jpg",
        url: "https://youtu.be/EtqXheRYEVY?si=94sUfEeufL8u13_8",
        tittle: "Escape Sequences in C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+17.jpg",
        url: "https://youtu.be/Ir0r8rK-jPQ?si=txT4gl8kTDsFVZFL",
        tittle:
            "C++ Practical - Implementation of Escape Sequences in C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+18.jpg",
        url: "https://youtu.be/EZBt97hlTaA?si=nIb-ffyXkaKA9ffC",
        tittle: "C++ Practical - Comments in C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+19.jpg",
        url: "https://youtu.be/dGvqNrZEeI4?si=3HnaXXBT0uho0HyR",
        tittle: "Data Types in C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+20.jpg",
        url: "https://youtu.be/9DAPHMZ0Hqc?si=OJtJC-PEEdLs7R3B",
        tittle: "int Data Type in C++ [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+21.jpg",
        url: "https://youtu.be/5_go7X9sPXk?si=IoSyPLb-_CxYpAqk",
        tittle: "C++ Char Data Type | ASCII value concept [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+22.jpg",
        url: "https://youtu.be/QBSBP7KMyBg?si=YWGWLUoCct-UdLGa",
        tittle:
            "C++ Practical - Implementation of C++ Char Data Types [Hindi]"),
    CplusplusModel(
        thumbnail: "assets/c+23.jpg",
        url: "https://youtu.be/N74dX82rz7o?si=vIiswZwN37ntl0Uj",
        tittle: "C++ Float and Double Data Type [Hindi]"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
