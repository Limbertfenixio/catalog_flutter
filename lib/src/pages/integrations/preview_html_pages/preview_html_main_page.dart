import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html_table/flutter_html_table.dart';

class PreviewHtmlPage extends StatelessWidget {
  const PreviewHtmlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Html Preview"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "Package: Flutter html",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Html(
              data: """ 
               <p><strong>Lorem ipsum </strong><em>dolor sit amet consectetur</em> <u>adipisicing elit. </u><s>Ducimus unde excepturi</s>,<sub> corrupti </sub><sup>sint</sup> <span style="color:#2ecc71">deleniti </span><span style="background-color:#3498db">nobis</span> <a href="http://google.com">eveniet</a></p>

<p style="text-align:center">ipsa! Quaerat incidunt aliquam nam, sunt consequuntur odio eius. Hic delectus iste assumenda iusto?</p>

<ol>
	<li style="text-align: right;">My lIst one</li>
	<li style="text-align: right;">My list Two</li>
</ol>

<p style="text-align:justify">;;;</p>

<ul>
	<li style="text-align: justify;">wemkfmwe</li>
</ul>

<blockquote>
<p style="margin-left:40px; text-align:justify">wefwefwefwefwef</p>
</blockquote>

<p style="margin-left:40px; text-align:justify"><img alt="" src="https://cdn.pixabay.com/photo/2022/02/19/21/46/beach-7023446__340.jpg" /></p>

<h1>Table support:</h1>
    <table align="center" border="1" cellpadding="1" cellspacing="1" style=" width:500px" summary="wefwef">
	<caption>My talba</caption>
	<thead>
		<tr>
			<th scope="col">erg</th>
			<th scope="col">&nbsp;</th>
			<th scope="col">erg</th>
			<th scope="col">ergr</th>
			<th scope="col">gerg</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>ergerg</td>
			<td>erger</td>
			<td>&nbsp;</td>
			<td>erger</td>
			<td>ergerg</td>
		</tr>
		<tr>
			<td>ergerg</td>
			<td>erg</td>
			<td>eg</td>
			<td>m Imae</td>
			<td>yjtyjtyjtyjtjty</td>
		</tr>
	</tbody>
</table></table>

<p>😁😎</p>

<hr />
<p>I</p>

<pre>
<code class="language-javascript">function myFunction(){
 var a = 3;
}</code></pre>

<p>&nbsp;</p>
<h3>Google iframe:</h3>
   <iframe src="https://google.com"></iframe>
            """,
              onImageError: (exception, stacktrace) =>
                  Text("Multimedia no valida."),
              onLinkTap: (url, context, attributes, element) {
                print("url $url");
              },
              onImageTap: (url, context, attributes, element) {
                print("url $url");
              },
              customRenders: {
                tableMatcher(): CustomRender.widget(
                  widget: (context, child) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: tableRender.call().widget!.call(context, child),
                    );
                  },
                ),
              },
              style: {
                "table": Style(backgroundColor: Colors.red),
                "tr": Style(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                // text that renders h1 elements will be red
                "h1": Style(color: Colors.red),
              },
            )
          ],
        ),
      ),
    );
  }
}
