import Foundation

struct Produto: Identifiable {
    let id: UUID
    let name: String
    let price: Double
}

struct Categoria: Identifiable {
    let id: UUID
    let name: String
    var subcategorias: [Categoria]
    var produtos: [Produto]
}

func brl(_ value: Double) -> String {
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "pt_BR")
        return formatter
    }()

    return formatter.string(from: NSNumber(value: value)) ?? "R$ \(String(format: "%.2f", value))"
}


