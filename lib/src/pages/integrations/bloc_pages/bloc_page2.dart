import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget_catalog/src/bloc/user/user_bloc.dart';
import 'package:widget_catalog/src/models/user.dart';

class BlocSecondPage extends StatelessWidget {
  const BlocSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                final newUser = User(
                    nombre: 'Limbert',
                    edad: 21,
                    professions: ['Mobile Developer', 'FullStack Developer']);
                userBloc.add(ActivateUser(newUser));
              },
              child: Text("Establecer Usuario"),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                userBloc.add(ChangeAgeEvent(16));
              },
              child: Text("Cambiar Edad"),
              color: Colors.blue,
            ),
            ElevatedButton(
              onPressed: () {
                userBloc.add(AddProfessions("Designer wordpress"));
              },
              child: Text("Agregar profesion"),
            )
          ],
        ),
      ),
    );
  }
}
