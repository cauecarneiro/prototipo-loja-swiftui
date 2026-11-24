# Protótipo de loja em SwiftUI

Protótipo de loja virtual em SwiftUI, com categorias e subcategorias aninhadas e tela de produto.

Estudo · iOS 26 · 2025

## O que faz
- Navega por categorias, subcategorias e produtos (por exemplo, Eletrônicos > Celulares, Casa e Cozinha e Moda).
- Mostra o preço de cada produto em reais (BRL).
- Abre uma tela de detalhe do produto.
- Usa dados de exemplo no próprio código.

## Meu papel
Estudo solo. Todos os commits são meus.

## Como foi feito
- `Models.swift` define `Categoria` (que contém outras categorias e produtos) e `Produto`: uma árvore.
- `CategoryListView` é recursiva: cada subcategoria abre outra `CategoryListView` dentro de um `NavigationStack`.
- `MockData.swift` monta a árvore da loja com IDs fixos.
- A função `brl()` formata preços com `NumberFormatter` e a localidade `pt_BR`.
- `ModelsTests.swift` testa a formatação em BRL e a estrutura da árvore de dados de exemplo.

## Tecnologias
Swift, SwiftUI e XCTest.

## Como rodar
1. Abra `ProtótipoViewCH10/ProtótipoViewCH10.xcodeproj` no Xcode (a pasta tem acento no nome).
2. Rode o esquema do app num simulador com iOS 26 ou mais novo.
3. Para os testes, use Cmd+U.

---
Feito por Cauê Crillanovick · [portfólio](https://cauecarneiro.github.io/portfolio/) · [LinkedIn](https://www.linkedin.com/in/cau%C3%AA-carneiro)
