import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget_catalog/src/bloc/user/user_bloc.dart';
import 'package:widget_catalog/src/models/user.dart';

class BlocMainPage extends StatelessWidget {
  const BlocMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 1"),
        actions: [
          InkWell(
            onTap: () {
              BlocProvider.of<UserBloc>(context).add(DeleteUserEvent());
            },
            child: Icon(Icons.remove_circle_outline),
          )
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(builder: (_, state) {
        return state.existUser
            ? InformacionUsuario(
                user: state.user!,
              )
            : const Center(
                child: Text(
                  "Aun no existe un usuario seleccionado",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/bloc-secondpage");
        },
        child: Icon(Icons.accessibility_new),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final User user;

  const InformacionUsuario({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'General',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          ListTile(title: Text('Nombre: ${user.nombre}')),
          ListTile(title: Text('Edad: ${user.edad}')),
          const Text(
            'Profesiones',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          ...user.professions
              .map((prof) => ListTile(title: Text(prof)))
              .toList(),
        ],
      ),
    );
  }
}
