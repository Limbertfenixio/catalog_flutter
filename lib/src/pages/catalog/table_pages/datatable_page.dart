import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

List<DataUser> users = [
  DataUser(1, "Pedro", "Morales", "Gutierrez", "Masculino", false),
  DataUser(2, "Marcelo", "Torres", "Gutierrez", "Masculino", false),
  DataUser(3, "Julia", "Canada", "Gutierrez", "Masculino", false),
  DataUser(4, "Carolina", "Arce", "Gutierrez", "Masculino", false),
  DataUser(5, "Noemi", "Morales", "Gutierrez", "Masculino", false),
  DataUser(6, "Mayra", "Morales", "Gutierrez", "Masculino", false),
  DataUser(7, "Pedro", "Morales", "Gutierrez", "Masculino", false),
  DataUser(8, "Marcelo", "Torres", "Gutierrez", "Masculino", false),
  DataUser(9, "Julia", "Canada", "Gutierrez", "Masculino", false),
  DataUser(10, "Carolina", "Arce", "Gutierrez", "Masculino", false),
  DataUser(11, "Noemi", "Morales", "Gutierrez", "Masculino", false),
  DataUser(12, "Mayra", "Morales", "Gutierrez", "Masculino", false),
];

int _selectedCount = 0;

class DataTablePage extends StatefulWidget {
  const DataTablePage({Key? key}) : super(key: key);

  @override
  State<DataTablePage> createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  int _rowsPerPage = 5;
  bool _sortAscending = true;
  int _currentColumnSortIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DataTable Widgets"),
      ),
      body: CodeViewerWidget(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.purple),
            child: PaginatedDataTable(
              header: const Text("My header"),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.offline_bolt))
              ],
              availableRowsPerPage: const [5, 10, 20],
              rowsPerPage: _rowsPerPage,
              sortColumnIndex: _currentColumnSortIndex,
              sortAscending: _sortAscending,
              arrowHeadColor: Colors.blue,
              checkboxHorizontalMargin: 12.0,
              onSelectAll: (isSelected) {
                if (isSelected == null) return;
                for (var element in users) {
                  element.selected = isSelected;
                }
                _selectedCount = isSelected ? users.length : 0;
                setState(() {});
              },
              onRowsPerPageChanged: (index) {
                setState(() {
                  _rowsPerPage = index!;
                });
              },
              onPageChanged: (index) {},
              columnSpacing: 30.0,
              showCheckboxColumn: true,
              showFirstLastButtons: true,
              columns: [
                DataColumn(
                  label: const Text("Nro"),
                  tooltip: "Example Tooltip",
                  onSort: (index, ascending) {
                    setState(() {
                      _currentColumnSortIndex = index;
                      if (_sortAscending == true) {
                        _sortAscending = false;
                        users = users.reversed.toList();
                      } else {
                        _sortAscending = true;
                        users.sort((a, b) => a.nro.compareTo(b.nro));
                      }
                    });
                  },
                ),
                DataColumn(
                  label: const Text("Nombre"),
                  numeric: true,
                  onSort: (index, ascending) {
                    setState(() {
                      _currentColumnSortIndex = index;
                      if (_sortAscending == true) {
                        _sortAscending = false;
                        users = users.reversed.toList();
                      } else {
                        _sortAscending = true;
                        users.sort((a, b) => a.name.compareTo(b.name));
                      }
                    });
                  },
                ),
                const DataColumn(
                  label: const Text("Paterno"),
                ),
                const DataColumn(
                  label: const Text("Materno"),
                ),
                const DataColumn(
                  label: const Text("Sexo"),
                ),
              ],
              source: DataSourceExample(),
            ),
          ),
        ),
        sourceFilePath: 'pages/catalog/table_pages/datatable_page.dart',
      ),
    );
  }
}

class DataSourceExample extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    DataUser user = users[index];
    return DataRow.byIndex(
      selected: user.selected,
      index: index,
      onSelectChanged: (isSelected) {
        if (isSelected == null) return;
        user.selected = isSelected;
        _selectedCount += isSelected ? 1 : -1;
        notifyListeners();
      },
      color: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.indigo;
          }
          return Colors.teal[200]; // Use the default value.
        },
      ),
      cells: [
        DataCell(
          Text(
            user.nro.toString(),
            style: const TextStyle(color: Colors.red),
          ),
          placeholder: true,
        ),
        DataCell(
          Text(
            user.name,
            style: const TextStyle(color: Colors.red),
          ),
          showEditIcon: true,
        ),
        DataCell(
          Text(
            user.lastNameFirst,
            style: const TextStyle(color: Colors.red),
          ),
        ),
        DataCell(
          Text(
            user.lastNameSecond,
            style: const TextStyle(color: Colors.red),
          ),
        ),
        DataCell(
          Text(
            user.gender,
            style: const TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => users.length;

  @override
  int get selectedRowCount => _selectedCount;
}

class DataUser {
  final int nro;
  final String name;
  final String lastNameFirst;
  final String lastNameSecond;
  final String gender;
  bool selected;

  DataUser(this.nro, this.name, this.lastNameFirst, this.lastNameSecond,
      this.gender, this.selected);
}
