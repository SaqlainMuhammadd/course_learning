// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SqlModel {
  String? thumbnail;
  String? url;
  String? tittle;
  SqlModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<SqlModel> VideoList = [
    SqlModel(
        thumbnail: "assets/sql1.jpg",
        url: "https://youtu.be/yH1zCq-iaeU?si=N0aOYVaen3OJBs2J",
        tittle:
            "What Is SQL ? | Database in SQL | SQL Introduction | SQL Tutorial In Hindi 1"),
    SqlModel(
        thumbnail: "assets/sql2.jpg",
        url: "https://youtu.be/HmH-76_2Ak8?si=RWx2excYglkBKcSw",
        tittle:
            "Data Types, Primary-Foreign Keys & Constraints in SQL | SQL Tutorial In Hindi 2"),
    SqlModel(
        thumbnail: "assets/install.jpg",
        url: "https://youtu.be/E-Qn2tbcmDE?si=-m5RkDZ9NfGj9jUG",
        tittle: "how to install postgresql and pgadmin4"),
    SqlModel(
        thumbnail: "assets/sql3.jpg",
        url: "https://youtu.be/v-2cIUgx_jw?si=Hz0TN-r3trIp9wsV",
        tittle:
            "Create Table In SQL & Create Database | SQL Tutorial In Hindi 3"),
    SqlModel(
        thumbnail: "assets/sql4.jpg",
        url: "https://youtu.be/4YAAgrm8_ZI?si=UM3xM82vbN-K95Nn",
        tittle:
            "INSERT UPDATE, DELETE & ALTER Table in SQL With Example | SQL Tutorial in Hindi 4"),
    SqlModel(
        thumbnail: "assets/sql5.jpg",
        url: "https://youtu.be/eiLqDeDp7Oc?si=35wBhMG673IhomXu",
        tittle:
            "SELECT Statement & WHERE Clause with Example | Operators in SQL | SQL Tutorial in Hindi 5"),
    SqlModel(
        thumbnail: "assets/sql6.jpg",
        url: "https://youtu.be/rfWYbMd3ApA?si=0wx09Fk3Hki2_eSH",
        tittle:
            "How To Import Excel File (CSV) to SQL | Import Data From File | SQL Tutorial in Hindi 6"),
    SqlModel(
        thumbnail: "assets/sql7.jpg",
        url: "https://youtu.be/55_UN5gVARs?si=o23b4zuUPsiEGh_j",
        tittle:
            "String Functions in SQL | Functions in SQL | SQL Tutorial in Hindi 7"),
    SqlModel(
        thumbnail: "assets/sql8.jpg",
        url: "https://youtu.be/9NfthspfXEo?si=3u-alylBcMjqPX0s",
        tittle:
            "Aggregate Functions in SQL - COUNT, SUM, AVG, MAX, MIN | SQL Tutorial in Hindi 8"),
    SqlModel(
        thumbnail: "assets/sql9.jpg",
        url: "https://youtu.be/SvJLXj05cow?si=ZHhs2qPQMNKc255W",
        tittle: "Group By and Having Clause in SQL | SQL Tutorial in Hindi 9"),
    SqlModel(
        thumbnail: "assets/sql10.jpg",
        url: "https://youtu.be/kwGh6XvLrEk?si=YPijDVU9n6SnxdBU",
        tittle:
            "TimeStamp and Extract Function | Date Time Function | SQL Tutorial in Hindi 10"),
    SqlModel(
        thumbnail: "assets/sql11.jpg",
        url: "https://youtu.be/H6988OpZKTU?si=ANUwatBohdnzwq0s",
        tittle:
            "Complete SQL JOINS For Beginners | SQL JOIN Queries with Examples | SQL Tutorial in Hindi 11"),
    SqlModel(
        thumbnail: "assets/sql12.jpg",
        url: "https://youtu.be/V3xjmBi1QQE?si=VQZT3Fw7RoAIq-9n",
        tittle:
            "SQL SELF JOIN | UNION & UNION ALL in SQL | SQL Tutorial in Hindi 12"),
    SqlModel(
        thumbnail: "assets/sql13.jpg",
        url: "https://youtu.be/5O2OuN1ougU?si=AOdwKXGt9h5Dic4K",
        tittle:
            "Complete SQL Subquery Using Comparison and Logical Operators | SQL Tutorial in Hindi 13"),
    SqlModel(
        thumbnail: "assets/sql14.jpg",
        url: "https://youtu.be/S1do1EeA7ng?si=rNDcB4d8xAN4Jf9g",
        tittle:
            "SQL Window Function with Example- RANK, DENSE RANK, ROW NUMBER, LEAD/LAG | SQL Tutorial in Hindi 14"),
    SqlModel(
        thumbnail: "assets/sql15.jpg",
        url: "https://youtu.be/n_0kijUi7IA?si=n08Qgzji99IsglgV",
        tittle:
            "SQL Case Statement/Expression with Examples | WHEN THEN ELSE in sql | SQL Tutorial in Hindi 15"),
    SqlModel(
        thumbnail: "assets/sql16.jpg",
        url: "https://youtu.be/WHBH0yz35_8?si=jmlog0EOIFeEDQh0",
        tittle:
            "SQL WITH Clause with examples | SQL CTE (Common Table Expression) | SQL Tutorial in Hindi 16"),
    SqlModel(
        thumbnail: "assets/sql17.jpg",
        url: "https://youtu.be/Rp3EcF9nx6U?si=CXFXdkBXyysoVql6",
        tittle:
            "Recursive CTE | Recursive SQL Queries | SQL Tutorial in Hindi 17"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
