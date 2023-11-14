import 'package:cric_score/model/cricketResponse.dart';
import 'package:cric_score/model/data info.dart';
import 'package:cric_score/service/cricket_api_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MatchResponse? matchResponse;
  MatchApiService? matchApiService;

  @override
  void initState() {
    getMatchInfo();
    super.initState();
  }

  getMatchInfo() async {
    matchResponse = await MatchApiService.getMatchInfo();
    setState(() {});
  }

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
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  //scrollDirection: Axis.horizontal,
                  itemCount: matchResponse?.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    Data data = matchResponse!.data![index];
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(matchResponse!.data![index].name.toString()),
                          Image.network(data.teamInfo![0].img.toString()),
                          const SizedBox(
                            height: 8,
                          ),
                          Image.network(data.teamInfo![1].img.toString()),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
