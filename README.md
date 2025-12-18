# Cinetopia 🎬

Aplicativo desenvolvido durante o curso da Alura: **Flutter: melhore a qualidade do app com design patterns**.

## 📱 Sobre o Projeto

Cinetopia é um aplicativo de catálogo de filmes que demonstra a implementação de design patterns e boas práticas no desenvolvimento Flutter, focando em qualidade de código, arquitetura limpa e padrões de projeto.

## 🎯 Objetivo do Curso

Aprender e aplicar design patterns no Flutter para:
- Melhorar a qualidade e manutenibilidade do código
- Implementar arquitetura escalável
- Aplicar boas práticas de desenvolvimento
- Utilizar padrões de projeto adequados

## ✨ Funcionalidades

- Tela inicial com apresentação do aplicativo
- Dashboard com navegação por abas
- Tela de busca de filmes com lista scrollável
- Tela de lançamentos
- Cards de filmes personalizados
- Interface com gradientes e design moderno
- Componentes reutilizáveis (PrimaryButton, MovieCard)
- Sistema de navegação com BottomNavigationBar
- **Integração com API do The Movie Database (TMDB)**
- **Busca de filmes populares em tempo real**
- **Carregamento assíncrono de dados com FutureBuilder**
- **Tratamento de erros e estados de loading**

## 🚀 Como Executar

```bash
# Clone o repositório
git clone https://github.com/OYanEnrique/cinetopia.git

# Entre no diretório
cd cinetopia

# Instale as dependências
flutter pub get

# Configure sua chave de API do TMDB
# Crie o arquivo lib/app/api_key.dart com:
# const String apiKey = 'SUA_CHAVE_AQUI';

# Execute o aplicativo
flutter run
```

## 🛠️ Tecnologias

- Flutter
- Dart
- HTTP package (para requisições à API)
- API do The Movie Database (TMDB)

- [The Movie Database API](https://www.themoviedb.org/documentation/api)

## 📂 Estrutura do Projeto

```
lib/
├── main.dart
├── app/
│   ├── api_key.dart
│   ├── app.dart
│   ├── models/
│   │   └── movie.dart
│   └── services/
│       └── search_movies_service.dart
└── ui/
    ├── components/
    │   ├── movie_card.dart
    │   └── primary_button.dart
    └── screens/
        ├── home/
        ├── dashboard/
        └── search_movies.dart
```

## 🔑 Configuração da API

1. Crie uma conta no [The Movie Database](https://www.themoviedb.org/)
2. Obtenha sua chave de API (Bearer Token)
3. Crie o arquivo `lib/app/api_key.dart`
4. Adicione sua chave: `const String apiKey = 'sua_chave_aqui';`

## 🎨 Features Implementadas

- **Model Movie**: Classe com `fromMap` para deserialização de dados da API
- **SearchMoviesService**: Service para buscar filmes populares
- **FutureBuilder**: Gerenciamento de estados assíncronos
- **CustomScrollView**: Lista scrollável com Slivers
- **Tratamento de exceções**: Try-catch para erros de rede
## 📚 Recursos

- [Documentação Flutter](https://docs.flutter.dev/)
- [Curso na Alura](https://www.alura.com.br/)
