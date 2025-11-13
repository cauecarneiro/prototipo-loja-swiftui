import SwiftUI

struct CategoryListView: View {
    let categoria: Categoria

    var body: some View {
        List {
            if !categoria.subcategorias.isEmpty {
                Section("Categorias") {
                    ForEach(categoria.subcategorias) { subcategoria in
                        NavigationLink(destination: CategoryListView(categoria: subcategoria)) {
                            Label(subcategoria.name, systemImage: "folder")
                                .padding(.vertical, 4)
                        }
                    }
                }
            }

            if !categoria.produtos.isEmpty {
                Section("Produtos") {
                    ForEach(categoria.produtos) { produto in
                        NavigationLink(destination: ProductDetailView(produto: produto)) {
                            ProductRow(produto: produto)
                        }
                    }
                }
            }
        }
        .navigationTitle(categoria.name)
    }
}

struct ProductDetailView: View {
    let produto: Produto

    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "cart")
                .font(.system(size: 48))
                .foregroundStyle(.secondary)

            Text(produto.name)
                .font(.title2)
                .multilineTextAlignment(.center)

            Text(brl(produto.price))
                .font(.title3)
                .foregroundStyle(.secondary)

            Spacer()
        }
        .padding()
        .navigationTitle(produto.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProductRow: View {
    let produto: Produto

    var body: some View {
        HStack {
            Image(systemName: "cart")
                .foregroundStyle(.tint)

            Text(produto.name)

            Spacer()

            Text(brl(produto.price))
                .foregroundStyle(.secondary)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    NavigationStack {
        CategoryListView(categoria: loja)
    }
}

