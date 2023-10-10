import "package:flutter/material.dart";

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        color: const Color.fromARGB(255, 255, 206, 27),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(
              color: Colors.black, width: 2.0), // Cor e largura da borda
        ),
        child: Container(
          // color: Colors.grey,
          padding: const EdgeInsets.all(8.0),
          // width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Image.asset('assets/images/route_app_image.png'),
              //width: 400, // Largura da imagem
              // height:425, // Altura da imagem (ajuste conforme necessário)
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
