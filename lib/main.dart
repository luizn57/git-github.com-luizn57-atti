import 'package:flutter/material.dart';

void main() {
  runApp(TinderLoginScreen());
}

class TinderLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // Degradê de vermelho e rosa com inclinação diagonal mais acentuada
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 253, 18, 1),
                const Color.fromARGB(255, 247, 26, 99),
              ],
              begin: Alignment.topLeft, // Começa no topo esquerdo
              end: Alignment.bottomRight, // Termina no fundo direito
              stops: [
                0.2,
                0.8
              ], // Ajusta a posição das cores para um gradiente mais acentuado
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Tinder com ícone de fogo
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.whatshot, // Ícone de fogo padrão do Flutter
                      size: 50.0, // Tamanho do ícone
                      color: Colors.white, // Cor do ícone
                    ),
                    SizedBox(
                        width: 10.0), // Espaçamento entre o ícone e o texto
                    Text(
                      'tinder',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),

                // Texto sobre Termos
                Text(
                  'Ao tocar em "Entrar" você concorda com os nossos Termos. '
                  'Saiba como processamos seus dados em nossa '
                  'Política de Privacidade e Política de Cookies.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),

                // Botão Entrar com Google
                LoginButton(
                  icon: Icons.g_mobiledata_outlined,
                  text: "Entrar com o Google",
                  iconColor: Colors.blue, // Cor do ícone do Google
                ),
                SizedBox(height: 10),

                // Botão Entrar com Facebook
                LoginButton(
                  icon: Icons.facebook,
                  text: "Entrar com o Facebook",
                  iconColor: Colors.blueAccent, // Cor do ícone do Facebook
                ),
                SizedBox(height: 10),

                // Botão Entrar com número de telefone
                LoginButton(
                  icon: Icons.phone,
                  text: "Entrar com o número de telefone",
                  iconColor: Colors.green, // Cor do ícone do telefone
                ),

                SizedBox(height: 20),

                // Texto Problemas para entrar?
                Text(
                  'Problemas para entrar?',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 252, 252, 252),
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor; // Adicionando a cor do ícone

  LoginButton(
      {required this.icon, required this.text, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: iconColor, // Usando a cor do ícone passada
      ),
      label: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 7, 0, 0),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        minimumSize: Size(double.infinity, 50), // Largura total do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
