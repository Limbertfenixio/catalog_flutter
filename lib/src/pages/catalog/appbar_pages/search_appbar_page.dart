import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class SearchAppBarPage extends StatefulWidget {
  const SearchAppBarPage({Key? key}) : super(key: key);

  @override
  State<SearchAppBarPage> createState() => _SearchAppBarPageState();
}

class _SearchAppBarPageState extends State<SearchAppBarPage> {
  late _MySearchDelegate delegate;
  final List<String> words = [
    "Armenia",
    "Arabia",
    "Argentina",
    "Bolivia",
    "Brazil",
    "Colombia",
    "Mexico",
    "Sudan",
    "Rusia",
    "China",
    "Union Europea",
  ];

  @override
  void initState() {
    super.initState();
    delegate = _MySearchDelegate(words);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search AppBar Widgets"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: delegate);
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: CodeViewerWidget(
        child: Container(),
        sourceFilePath: 'pages/catalog/appbar_pages/search_appbar_page.dart',
      ),
    );
  }
}

class _MySearchDelegate extends SearchDelegate<String> {
  final List<String> words;
  final List<String> history;

  _MySearchDelegate(this.words)
      : history = ['apple', 'hello', 'world'],
        super();

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.amber,
        ),
      ),
      textTheme: const TextTheme(
        headline6: TextStyle(
          color: Colors.white,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: Colors.white,
        focusColor: Colors.white,
        floatingLabelStyle: TextStyle(
          color: Colors.white,
        ),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.greenAccent,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      scaffoldBackgroundColor: Colors.blue,
      primaryColor: Colors.green,
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isEmpty)
        IconButton(
          onPressed: () {
            query = 'use voice input';
          },
          icon: const Icon(Icons.mic),
        )
      else
        IconButton(
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
          icon: const Icon(Icons.clear),
        )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("selected word:"),
          GestureDetector(
            onTap: () {
              close(context, query);
            },
            child: Text(
              query,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<String> suggestions = query.isEmpty
        ? history
        : words.where(
            (word) => word.toLowerCase().startsWith(query.toLowerCase()));

    return SuggestionsList(
      suggestions: suggestions.toList(),
      query: query,
      onSelected: (String suggestions) {
        query = suggestions;
        showResults(context);
        if (!history.contains(suggestions)) {
          history.insert(0, suggestions);
        }
      },
    );
  }
}

class SuggestionsList extends StatelessWidget {
  final List<String> suggestions;
  final String query;
  final ValueChanged<String> onSelected;

  const SuggestionsList(
      {Key? key,
      required this.suggestions,
      required this.query,
      required this.onSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (_, index) {
        final String suggestion = suggestions[index];

        return ListTile(
          iconColor: Colors.white,
          leading: query.isEmpty ? const Icon(Icons.history) : null,
          title: Text(suggestion),
          onTap: () {
            onSelected(suggestion);
          },
        );
      },
    );
  }
}
