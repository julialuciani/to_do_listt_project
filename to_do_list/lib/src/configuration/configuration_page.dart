import 'package:flutter/material.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({Key? key}) : super(key: key);

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LISTINHA'),
      ),
      body: Column(
        children: [
          const Text('Configurações'),
          const Text('Tema'),
          RadioListTile<ThemeMode>(
            value: ThemeMode.system,
            title: const Text('Sistema'),
            groupValue: ThemeMode.system,
            onChanged: (mode) {},
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.light,
            title: const Text('Claro'),
            groupValue: ThemeMode.light,
            onChanged: (mode) {},
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.dark,
            title: const Text('Escuro'),
            groupValue: ThemeMode.dark,
            onChanged: (mode) {},
          ),
          const Text('Controle de dados'),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Apagar cache e reiniciar app'),
          )
        ],
      ),
    );
  }
}
