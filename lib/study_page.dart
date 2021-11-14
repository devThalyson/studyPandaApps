import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:study/store.dart';

class StudyPage extends StatefulWidget {
  const StudyPage({Key? key}) : super(key: key);

  @override
  _StudyPageState createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  final store = StudyStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Study page'),
      ),
      body: SingleChildScrollView(
        child: Observer(
          builder: (_) {
            return Column(
              children: [
                const SizedBox(
                  height: 30,
                ),

                // Voce pode usar esse esquema que usei aqui para fazer o estado
                // selecionado aparecer no lugar que você quiser.
                // Lembre que sempre que você quiser pegar a alteração do estado
                // de um observable, o mesmo tem que estar dentro de um widget
                // Observer().
                Text('O Atual estado selecionado é: ${store.estadoRadioValue}'),
                const SizedBox(
                  height: 25,
                ),

                // No radio list tile, o 'value' é o valor que queremos que
                // seja passado como parametro na função onChanged. Ou seja,
                // é o valor que o nosso observable que guarda o estado selecionado
                // vai receber quando o radio em questão for selecionado.
                // o groupValue tem que ser o mesmo para todos os radios do grupo,
                // pois estamos dizendo que eles vão alterar a mesma variavel.
                // onChanged é a função que queremos chamar quando o radio for selecionado.
                // title é o titulo do radio, uma informação meramente ilustrativa que
                // mostra para o usuário o que ele está selecionado.
                RadioListTile(
                  value: 'AC',
                  groupValue: store.estadoRadioValue,
                  onChanged: store.alterarEstadoRadioValue,
                  title: const Text('AC'),
                ),
                RadioListTile(
                  value: 'CE',
                  groupValue: store.estadoRadioValue,
                  onChanged: store.alterarEstadoRadioValue,
                  title: const Text('CE'),
                ),
                RadioListTile(
                  value: 'SP',
                  groupValue: store.estadoRadioValue,
                  onChanged: store.alterarEstadoRadioValue,
                  title: const Text('SP'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () => store.abrirModais(
                    context: context,
                  ),
                  child: const Text('Abrir modais'),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
