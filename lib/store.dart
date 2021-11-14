import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'store.g.dart';

class StudyStore = _StudyStoreBase with _$StudyStore;

abstract class _StudyStoreBase with Store {
  // Observables

  // Essa variavel vai guardar o estado que o usuario estiver selecionado.
  // Nesse caso, ele começa definido como 'AC' porque eu quero que o estado
  // do Acre já comece selecionado.
  @observable
  String estadoRadioValue = 'AC';

  // Actions

  // Essa função recebe por parametro uma variavel do tipo definido para o
  // radio value (nesse caso uma String). Essa função nada mais faz do que
  // Pegar o novo valor que vem do onChanged do RadioListTile e defini-la
  // como o novo valor do nosso observable 'estadoRadioValue'.
  @action
  alterarEstadoRadioValue(String? novoEstadoRadioValue) {
    estadoRadioValue = novoEstadoRadioValue!;
  }

  @action
  Future<void> abrirModais({required BuildContext context}) async {
    // Abre o primeiro modal
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 250,
          width: 250,
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Modal 1'),
        );
      },
    );

    // Espera 3 segundos
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );

    // Fecha o primeiro modal
    Navigator.pop(context);

    // Abre o segundo modal
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 250,
          width: 250,
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Modal 2'),
        );
      },
    );

    // Espera 3 segundos
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );

    // Fecha o segundo modal
    Navigator.pop(context);

    // Abre o terceiro modal
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 250,
          width: 250,
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Modal 3'),
        );
      },
    );

    // Espera 3 segundos
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );

    // Fecha o terceiro modal
    Navigator.pop(context);
  }
}
