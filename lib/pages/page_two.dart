import 'package:flutter/material.dart';
import 'package:navegation_app/Widgets/card_widget.dart';

import 'package:navegation_app/pages/page_three.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key, required this.parametro}) : super(key: key);

  final String parametro;

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 35, 35),
        title: const Text(
          'Page Two',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Change the color of the back arrow icon
        ),
      ),
      // extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Hero(
                tag: 'imageTag',
                child: CardWidget(
                  title: 'Fallow the buttons',
                  description:
                      'Nesta pagina dois voce pode ir para a pagina tres, voltar para pagina um (1) com passagem de parametro no debug console e ver a passagem de parametro na tela vindo da pagina tres (3).',
                ),
              ),
              const SizedBox(height: 15),
              Container(
                // color: Colors.black,
                margin: const EdgeInsets.all(10),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navegue para a TelaSecundaria quando o botão for pressionado.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageThree()),
                      );
                    },
                    child: const Text('Ir para Page Three.'),
                  ),
                ),
              ),
              Container(
                // color: Colors.black,
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Bye Bye page two.');
                  },
                  child: const Text(
                      'Voltar para page one recebendo \n parametro no Debug Console.'),
                ),
              ),
              // Exibe o parâmetro recebido :)
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.add_location_alt_sharp, // Ícone
                          color: Colors.orangeAccent, // Cor do ícone
                        ),
                        const SizedBox(
                          width: 15,
                          height: 50,
                        ),
                        Text(
                          'Parâmetro recebido será gerado aqui: \n ${widget.parametro}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ], // Children
                    ),
                  ], // Children
                ),
              ),
            ], // Children
          ),
        ),
      ),
    );
  }
}
