import 'package:flutter/material.dart';
import 'package:navegation_app/Widgets/card_widget.dart';
import 'package:navegation_app/pages/page_two.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 35, 35),
        title: const Text(
          'Page Three',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Change the color of the back arrow icon here
        ),
      ),
      // extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Hero(
                tag: 'imageTag',
                child: CardWidget(
                  title: 'Be your best',
                  description:
                      ' Nesta pagina voce pode somente voltar ou usar o botão para voltar com parametro.',
                ),
              ),
              const SizedBox(height: 50),
              Container(
                // color: Colors.black,
                margin: const EdgeInsets.all(10),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Voltar para a Tela A
                      Navigator.pop(context);
                    },
                    child: const Text('Voltar para page two.'),
                  ),
                ),
              ),
              Container(
                // color: Colors.black,
                margin: const EdgeInsets.all(10),
                child: Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageTwo(
                            parametro: 'Parametro pagina Three foi recebido',
                          ),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.account_tree_outlined,
                    ),
                    label: const Text('Abrir Page Two com parâmetro.'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
