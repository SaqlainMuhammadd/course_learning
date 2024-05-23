// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DartModel {
  String? thumbnail;
  String? url;
  String? tittle;
  DartModel({
    this.thumbnail,
    this.url,
    this.tittle,
  });

  static List<DartModel> VideoList = [
    DartModel(
        thumbnail: "assets/dart1.jpg",
        url: "https://youtu.be/bRm9nswlDrc?si=2yY8c2UR01pvLTiq",
        tittle:
            "Part-1 Introduction To Dart & Roadmap || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart2.jpg",
        url: "https://youtu.be/w-HKBnUz1Iw?si=3sbOf_QeH86KDMjt",
        tittle:
            "Part-2 What is programming || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart3.jpg",
        url: "https://youtu.be/4uAsZGog4qg?si=E0V_jkp_Wt6aj7cF",
        tittle:
            "Part-3 What is Dart pad || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart4.jpg",
        url: "https://youtu.be/lfZ93VD7UK4?si=Q70FOUf1vOzxYtnx",
        tittle:
            "Part-4 How to install Dart & Flutter || Dart Programming Master Course in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart5.jpg",
        url: "https://youtu.be/-q8VwO_2SS4?si=4cFIa6uNwxiJAjHD",
        tittle:
            "Part-5 How to install VS CODE in Window || Dart Master Course in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart6.jpg",
        url: "https://youtu.be/QIt8h6mKLtU?si=caRqLOUuLuP_Zpv_",
        tittle:
            "Part-6 Understanding VS Code and Creating out First Dart Program/Project"),
    DartModel(
        thumbnail: "assets/dart7.jpg",
        url: "https://youtu.be/Cd7EkupEqds?si=GccciraAyuWLgDtc",
        tittle:
            "Part-7 Hello World Dart Program || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart8.jpg",
        url: "https://youtu.be/Zij3NKRB84Q?si=n4MElPBTzMciZXoU",
        tittle:
            "Part-8 Comments Syntax Compilations || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart9.jpg",
        url: "https://youtu.be/H5h69J4OQls?si=qA1Z8FgARIcg8pFZ",
        tittle:
            "Part-9-1 What is variable & Data Type || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart9-2.jpg",
        url: "https://youtu.be/pcAzZD2Ge1Y?si=msRL9OvN5tVVEk0E",
        tittle:
            "Part-9-2 What is variable & Data Type || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart9-3.jpg",
        url: "https://youtu.be/PG1SfGzks_8?si=OpGv0eAxqYRdMYGO",
        tittle:
            "Part-9-3 Dart Type & Variable Assignment || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart9-4.jpg",
        url: "https://youtu.be/hgTvYEDjIIQ?si=RPnnNlR3hUDK02Gi",
        tittle:
            "Part-9-4 Dart Multiple Variable Initialization & Declaration What is const keyword ?"),
    DartModel(
        thumbnail: "assets/dart10.jpg",
        url: "https://youtu.be/itjZmEKCyaM?si=-_yE1fYxNOzw_kv4",
        tittle:
            "Part-10 Dart String || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart11.jpg",
        url: "https://youtu.be/CDItfMkxzSc?si=u0JTZcYpe1Y_0lA5",
        tittle:
            "Part-11 Dart boolean Data Type || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart12.jpg",
        url: "https://youtu.be/k0XZ24HEqcQ?si=WrWaQx7M2uRB-pZj",
        tittle:
            "Part-12 Var Data Type || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart13.jpg",
        url: "https://youtu.be/2hgOQKxdUeI?si=FHI_hF82w-ZPvdMS",
        tittle:
            "Part-13 || Dart Reading input from the console || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart13-1.jpg",
        url: "https://youtu.be/pLKtDl1JJGo?si=56d05xswyDmaZPNH",
        tittle:
            "Part-13-1 || Dart Reading input from the console || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart14.jpg",
        url: "https://youtu.be/gK1u3kaakHw?si=2pYpiykXVToD8IPZ",
        tittle:
            "Part-14 Dart Relational & Equality Operator || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart15.jpg",
        url: "https://youtu.be/j61o3r3b1Co?si=hjgMQP4RhFALwInG",
        tittle:
            "Part-15 Dart Logical Operator || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart16.jpg",
        url: "https://youtu.be/rN18qzv6HnQ?si=wXB_K7ipo11LxRVb",
        tittle:
            "Part-16 Dart If Statement || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart16-1.jpg",
        url: "https://youtu.be/wYvqLRYNPUo?si=gHsk-NnSdAflS3M4",
        tittle:
            "Part-16-1 Dart If-else Statement || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart16-2.jpg",
        url: "https://youtu.be/Pr0msIoIa5s?si=uPmdMpHHmly-TRtJ",
        tittle:
            "Part-16-2 Dart If-else Statement || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart17.jpg",
        url: "https://youtu.be/UwNoEDscycI?si=0TbQ3M8XEPoVMt4r",
        tittle:
            "Part-17 Dart Nested If-else Statement || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart17-1.jpg",
        url: "https://youtu.be/rEDuCqqKMjc?si=8rGrVd91bTctF2LP",
        tittle:
            "Part-17-1 Dart Nested If-else Statement Electricity Bill Calculator || Dart Programming Tutorials"),
    DartModel(
        thumbnail: "assets/dart18.jpg",
        url: "https://youtu.be/__qsSkFS54g?si=oHfrDqwJFX_8AVjS",
        tittle:
            "Part-18 Dart Increment & Decrement Operator || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart19.jpg",
        url: "https://youtu.be/sjYu3Yz9NcU?si=cnjr7mXj1nSWOVP8",
        tittle:
            "Part-19 Dart For Loop Tutorial || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart19-1.jpg",
        url: "https://youtu.be/Ady6YianN9c?si=mi4NYT98broUIFRQ",
        tittle:
            "Part-19-1 Dart For Loop Practice|| Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart20.jpg",
        url: "https://youtu.be/qqgfKOEvP5g?si=cmHttdaSgGXxC0mu",
        tittle:
            "Part-20 Dart While Loop || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart21.jpg",
        url: "https://youtu.be/vJ0zfSHVv7k?si=K_EAAoY-d0BwsL-L",
        tittle:
            "Part-21 Dart List Tutorials || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart22.jpg",
        url: "https://youtu.be/YtdSzKJDeAs?si=gHBXdx9-99t_Zus-",
        tittle:
            "Part-22 Dart Functions Tutorials || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart22-1.jpg",
        url: "https://youtu.be/T4Tc9euqI5Y?si=4Io_-U0w4U9riPf8",
        tittle:
            "Part-22-1 Dart Functions Practice Tutorials || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart23.jpg",
        url: "https://youtu.be/4kCcugVuP4I?si=QD8Qg0kxBjMNBWFS",
        tittle:
            "Part-23 Dart Functions Async Functions || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart24.jpg",
        url: "https://youtu.be/nidXqPRtGQo?si=XsSR1zmm4WfveGhb",
        tittle:
            "Part-24 Dart Switch Statement || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/dart25.jpg",
        url: "https://youtu.be/dQPGf4NGsCA?si=5d_l56VXbwzoS0BZ",
        tittle: "Part-25 Dart Map || Dart Programming Tutorials in Hindi/Urdu"),
    DartModel(
        thumbnail: "assets/end.jpg",
        url: "https://youtu.be/2WuDJSc6T8I?si=qwnYq7piNGQSqEtB",
        tittle:
            "End Of Dart Course || Dart Programming Tutorials in Hindi/Urdu"),
  ];

  static getVideoId(String s) {
    print("url ofnyoutube $s");
    String? videoId = YoutubePlayer.convertUrlToId(s);
    return s;
  }
}
