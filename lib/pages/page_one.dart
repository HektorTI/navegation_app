import 'package:flutter/material.dart';
import 'package:navegation_app/Widgets/card_widget.dart';
import 'package:navegation_app/pages/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 35, 35),
        title: const Text(
          'Page One',
          style: TextStyle(color: Colors.white),
        ),
      ),
      // extendBodyBehindAppBar: true, // Esta linha estende o corpo sob a AppBar

      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // const SizedBox(height: 5),
              const Hero(
                tag: 'imageTag',
                child: CardWidget(
                  title: 'Route App',
                  description:
                      'Aqui é a pagina um (1) do app de rotas. Voce pode ver a animacao da imagem no decorrer das paginas.',
                ),
              ),
              //
              const SizedBox(height: 50),
              //
              ElevatedButton(
                onPressed: () async {
                  // Navegar para PageTwo e esperar um resultado
                  var result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PageTwo(
                              parametro: '',
                            )),
                  );

                  // Resultado recebido da PageTwo
                  debugPrint('Received result: $result.');
                },
                child: const Text(
                  'Ir para Page Two',
                  style: TextStyle(
                    color: Colors.deepPurple,
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
