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
- Tela de busca de filmes com lista scrollável e pesquisa dinâmica
- Tela de lançamentos (filmes em pré-estreia)
- Detalhes completos dos filmes ao clicar nos cards
- Cards de filmes personalizados com imagens da API
- Interface com gradientes e design moderno
- Componentes reutilizáveis (PrimaryButton, MovieCard)
- Sistema de navegação com BottomNavigationBar
- **Integração com API do The Movie Database (TMDB)**
- **Busca de filmes populares e pesquisa personalizada em tempo real**
- **Carregamento assíncrono de dados com FutureBuilder**
- **Tratamento de erros e estados de loading**
- **Arquitetura MVVM (Model-View-ViewModel)**
- **Separação de responsabilidades com Services e ViewModels**
- **Layout responsivo com tratamento de overflow**

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
│   ├── helpers/
│   │   └── consts.dart
│   ├── models/
│   │   └── movie.dart
│   ├── services/
│   │   ├── search_movies_service.dart
│   │   └── releases_viewmodel.dart
│   └── viewmodels/
│       └── search_movies_viewmodel.dart
└── ui/
    ├── components/
    │   ├── movie_card.dart
    │   └── primary_button.dart
    └── screens/
        ├── home/
        ├── dashboard/
        ├── movie_details.dart
        ├── releases.dart
        └── search_movies.dart
```

## 🔑 Configuração da API

1. Crie uma conta no [The Movie Database](https://www.themoviedb.org/)
2. Obtenha sua chave de API (Bearer Token)
3. Crie o arquivo `lib/app/api_key.dart`
4. Adicione sua chave: `const String apiKey = 'sua_chave_aqui';`

## 🎨 Features Implementadas

### Design Patterns e Arquitetura
- **MVVM Pattern**: Separação clara entre Model, View e ViewModel
- **Abstract Factory**: Interface `SearchMoviesService` com múltiplas implementações
  - `SearchPopularMoviesService`: Busca filmes populares
  - `SearchForMovie`: Busca filmes por query personalizada
  - `SearchForUpcomingMovies`: Busca próximos lançamentos
- **Dependency Injection**: Injeção de dependências no ViewModel
- **Stateful Widgets**: Gerenciamento de estado com TextField e busca dinâmica

### Componentes Técnicos
- **Model Movie**: Classe com `fromMap` para deserialização de dados da API
- **SearchMoviesService**: Service abstrato com 3 implementações concretas
- **SearchMoviesViewmodel**: ViewModel para gerenciar busca e estado dos filmes
- **ReleasesViewmodel**: ViewModel dedicado para lançamentos
- **FutureBuilder**: Gerenciamento de estados assíncronos
- **CustomScrollView**: Lista scrollável com Slivers para performance otimizada
- **MovieCard responsivo**: Card com `Expanded` e `TextOverflow.ellipsis` para evitar overflow
- **Navegação**: `Navigator.push` para tela de detalhes com `MaterialPageRoute`
- **Tratamento de exceções**: Try-catch para erros de rede
- **Helper consts**: Centralização de URLs e headers da API
- **Carregamento de imagens**: Integração com CDN do TMDB

### Melhorias de UI/UX
- **Layout responsivo**: Padding horizontal para evitar overflow de conteúdo
- **TextField interativo**: Busca ao completar a digitação
- **Estados de loading**: CircularProgressIndicator durante carregamento
- **Cards clicáveis**: InkWell com navegação para detalhes
- **Truncamento de texto**: Textos longos com reticências automáticas
## 📚 Recursos

- [Documentação Flutter](https://docs.flutter.dev/)
- [Curso na Alura](https://www.alura.com.br/)
