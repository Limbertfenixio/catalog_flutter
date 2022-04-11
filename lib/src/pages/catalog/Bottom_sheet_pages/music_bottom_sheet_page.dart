import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class MusicBottomSheetPage extends StatefulWidget {
  const MusicBottomSheetPage({Key? key}) : super(key: key);

  @override
  _MusicBottomSheetPageState createState() => _MusicBottomSheetPageState();
}

class _MusicBottomSheetPageState extends State<MusicBottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Album"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: const [
            AlbumCard(
                title: "Album 01",
                subTitle: "Artist 01",
                uriImg:
                    "https://photo-cdn2.icons8.com/y0o2RXhzGoU6XfH5cDgsqG0BikjeV4UAjGsH7JqIjM8/rs:fit:576:864/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvMjA1L2RiY2Y2/MzBjLTA4NDItNDJm/NS05OTU0LWRkOGFi/ZmUwNWFhOS5qcGc.jpg"),
            AlbumCard(
                title: "Album 02",
                subTitle: "Artist 02",
                uriImg:
                    "https://photo-cdn2.icons8.com/9O3uraIH-1s0qRgx3ByVKnaz15lVkoML9O866cn94sA/rs:fit:576:768/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvNTgyL2U1NDk0/N2MzLWQ5MWItNDRk/ZS05YWM1LTMwMGRj/YjEzMmZkMS5qcGc.jpg"),
            AlbumCard(
                title: "Album 03",
                subTitle: "Artist 03",
                uriImg:
                    "https://photo-cdn2.icons8.com/faTGKCa0zcSLDALF1LlEgovxjcP_y22rLs9mw52T7Xs/rs:fit:576:864/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvODk1L2RmOWYw/OWE5LTQwZDMtNDkz/ZS1hMzI5LWUyY2Jh/ZTViNDA4ZC5qcGc.jpg"),
            AlbumCard(
                title: "Album 04",
                subTitle: "Artist 04",
                uriImg:
                    "https://photo-cdn2.icons8.com/1wgXS39ntdgByRUm7NzP99xcONzFM2Gcbkb6lyfVYI4/rs:fit:576:864/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvNjk5LzJiOThk/MWJiLTRlMjMtNGE1/NS1iOTg1LTgyMzhh/MDU3YjEyMS5qcGc.jpg"),
            AlbumCard(
                title: "Album 05",
                subTitle: "Artist 05",
                uriImg:
                    "https://photo-cdn2.icons8.com/18wht9ZiGFdhraTiOOLe9W09wmPh4AxTEUWk0W4FGgU/rs:fit:576:864/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvMjk3L2Q2YTE4/YTkwLWY3YjQtNDU5/NS1hNzUxLWVmOWI0/ZjQwNzIyZC5qcGc.jpg"),
            AlbumCard(
                title: "Album 06",
                subTitle: "Artist 06",
                uriImg:
                    "https://photo-cdn2.icons8.com/SPFVax-Rr5lM2ye_D_EHu0jBhdZPaMUrxXvUFezJkx0/rs:fit:576:384/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvMTc2LzExMDU1/ZDZlLTQyMWItNGM3/ZC04YjczLWRiZWM0/ZmFiYmFhMS5qcGc.jpg"),
            AlbumCard(
                title: "Album 07",
                subTitle: "Artist 07",
                uriImg:
                    "https://photo-cdn2.icons8.com/hN4rmordohpj3hjKoQWWCy_Zh1qzPBP45Gfco4wv02A/rs:fit:576:864/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvOTkxLzZhYmQw/ZTk3LTliOGItNGM5/Mi05ZGI4LTcxMmQ1/MjNlYTFlOS5qcGc.jpg"),
            AlbumCard(
                title: "Album 08",
                subTitle: "Artist 08",
                uriImg:
                    "https://photo-cdn2.icons8.com/WrYE_aknbCuGUFqe8i7aPqMSnI1l_-Qz-vFxz-heneA/rs:fit:576:864/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvMjY2LzliZDU2/NjY3LThiN2UtNDM4/NC04NWNkLWViMTEy/OGJkNzU3OS5qcGc.jpg"),
          ],
        ),
      ),
      bottomSheet: const MusicBottoSheet(),
    );
  }
}

class MusicBottoSheet extends StatefulWidget {
  const MusicBottoSheet({
    Key? key,
  }) : super(key: key);

  @override
  _MusicBottoSheetState createState() => _MusicBottoSheetState();
}

class _MusicBottoSheetState extends State<MusicBottoSheet> {
  SolidController _solidController = SolidController();
  bool show = false;
  String tilte = "Talking to Myself";
  String subtitle = "Artist name";

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.9,
      child: Container(
        color: Colors.indigo[300],
        child: SolidBottomSheet(
          maxHeight: 720,
          onShow: () {
            setState(() {
              show = true;
            });
            print("abrio");
          },
          onHide: () {
            setState(() {
              show = false;
            });
          },
          controller: _solidController,
          showOnAppear: show,
          toggleVisibilityOnTap: true,
          headerBar: ListTile(
            leading: IconButton(
              icon: Icon(show ? Icons.close : Icons.arrow_upward_rounded,
                  color: Colors.white),
              onPressed: () {
                setState(() {
                  show ? show = false : show = true;
                });
              },
            ),
            title: Text(tilte, style: const TextStyle(color: Colors.white)),
            subtitle:
                Text(subtitle, style: const TextStyle(color: Colors.white)),
            trailing: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Text("1:42 ",
                    style: const TextStyle(color: Colors.white)),
                const Icon(Icons.pause, color: Colors.white)
              ],
            ),
          ),
          body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => ListTile(
              leading: Text(
                "#$index",
                style: const TextStyle(color: Colors.white),
              ),
              title: Text(
                "Here comes the title $index",
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Artist $index",
                style: TextStyle(color: Colors.grey[400]),
              ),
              trailing: const Text(
                "4:39",
                style: const TextStyle(color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  this.tilte = "Here comes the title $index";
                  this.subtitle = "Artist $index";
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String uriImg;

  const AlbumCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.uriImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Stack(
              children: [
                Positioned.fill(
                  child: AspectRatio(
                    aspectRatio: 2.1,
                    child: FadeInImage(
                      fit: BoxFit.fill,
                      placeholder: const AssetImage("assets/jar-loading.gif"),
                      image: NetworkImage(uriImg),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 12.0, left: 12.0, right: 12.0, bottom: 1.0),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[600]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, left: 12.0, right: 12.0, bottom: 0.0),
            child: Text(
              subTitle,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
