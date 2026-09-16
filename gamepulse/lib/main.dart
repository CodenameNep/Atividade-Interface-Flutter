import 'package:flutter/material.dart';
//Leandro Andrade dos Santos e Danilo Almeida Brito
void main() {
  runApp(const GamePulseApp());
}

class GamePulseApp extends StatelessWidget {
  const GamePulseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GamePulse',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121214),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F1F23),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: const Principal(),
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  // Alunos:
  // Danilo Almeida Brito
  // Leandro Andrade Dos Santos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.sports_esports,
          color: Colors.greenAccent,
        ),
        title: const Text(
          'GamePulse',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFeaturedCard(),

            const SizedBox(height: 24),

            const Text(
              'Últimas Notícias',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            _buildLatestNews(),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedCard() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F23),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'EM DESTAQUE • PS5 & PC',
            style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'GTA 6 ganha novo trailer revelando gameplay inédita e data de lançamento',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),

          const SizedBox(height: 12),

          const Row(
            children: [
              Icon(
                Icons.access_time,
                size: 14,
                color: Colors.grey,
              ),
              SizedBox(width: 4),
              Text(
                '5 min de leitura',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),

              SizedBox(width: 16),

              Icon(
                Icons.calendar_today,
                size: 14,
                color: Colors.grey,
              ),
              SizedBox(width: 4),
              Text(
                'Hoje, 14:30',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu_book,
                    size: 18,
                  ),
                  label: const Text(
                    'Ler Notícia Completa',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 8),

              IconButton(
                icon: const Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLatestNews() {
    final noticias = [
      {
        'categoria': 'PLAYSTATION',
        'titulo': 'Novo jogo exclusivo de PS5 recebe detalhes de gameplay',
        'tempo': 'Há 20 min',
        'icone': Icons.sports_esports,
      },
      {
        'categoria': 'XBOX',
        'titulo': 'Xbox anuncia novidades para o Game Pass deste mês',
        'tempo': 'Há 45 min',
        'icone': Icons.videogame_asset,
      },
      {
        'categoria': 'NINTENDO',
        'titulo': 'Nintendo prepara novos anúncios para seus jogadores',
        'tempo': 'Há 1 hora',
        'icone': Icons.gamepad,
      },
      {
        'categoria': 'PC',
        'titulo': 'Steam recebe grande promoção com diversos jogos em oferta',
        'tempo': 'Há 2 horas',
        'icone': Icons.computer,
      },
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: noticias.length,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
      itemBuilder: (context, index) {
        final noticia = noticias[index];

        return _buildNewsItem(
          categoria: noticia['categoria'] as String,
          titulo: noticia['titulo'] as String,
          tempo: noticia['tempo'] as String,
          icone: noticia['icone'] as IconData,
        );
      },
    );
  }

  Widget _buildNewsItem({
    required String categoria,
    required String titulo,
    required String tempo,
    required IconData icone,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F23),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2F),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icone,
              color: Colors.greenAccent,
              size: 30,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoria,
                  style: const TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                  ),
                ),

                const SizedBox(height: 7),

                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Colors.grey,
                      size: 13,
                    ),

                    const SizedBox(width: 4),

                    Text(
                      tempo,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
