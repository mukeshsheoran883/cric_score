import 'package:cric_score/model/data info.dart';
import 'package:cric_score/service/cricket_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // MatchResponse? matchResponse;
  // MatchApiService? matchApiService;

  @override
  void initState() {
    CricketProvider cricketProvider =
        Provider.of<CricketProvider>(context, listen: false);
    cricketProvider.getMatchInfo();
    super.initState();
  }

  // getMatchInfo() async {
  //   matchResponse = await MatchApiService.getMatchInfo();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            'FEATURED',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Consumer<CricketProvider>(builder:
            (BuildContext context, CricketProvider value, Widget? child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                    //scrollDirection: Axis.horizontal,
                    itemCount: value.matchResponse?.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      Data data = value.matchResponse!.data![index];
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(value.matchResponse!.data![index].name
                                .toString()),
                            Image.network(
                              data.teamInfo?[0].img ?? '',
                              height: 50,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Image.network(
                              data.teamInfo?[1].img ?? '',
                              height: 50,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          );
        }));
  }

//       Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               //scrollDirection: Axis.horizontal,
//                 itemCount: matchResponse?.data?.length ?? 0,
//                 itemBuilder: (context, index) {
//                   Data data = matchResponse!.data![index];
//                   return Card(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(matchResponse!.data![index].name.toString()),
//                         Image.network(data.teamInfo![0].img.toString()),
//                         const SizedBox(
//                           height: 8,
//                         ),
//                         Image.network(data.teamInfo![1].img.toString()),
//                       ],
//                     ),
//                   );
//                 }),
//           ),
//         ],
//       ));
// }
}
