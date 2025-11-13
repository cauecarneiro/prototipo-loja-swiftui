import XCTest
@testable import Proto_tipoViewCH10

final class ModelsTests: XCTestCase {
    func testBRLFormattingMatchesLocale() {
        let expectedFormatter = NumberFormatter()
        expectedFormatter.numberStyle = .currency
        expectedFormatter.locale = Locale(identifier: "pt_BR")

        let value = 3299.0
        let expected = expectedFormatter.string(from: NSNumber(value: value))

        XCTAssertEqual(brl(value), expected)
    }

    func testMockHierarchyContainsExpectedStructure() {
        XCTAssertEqual(loja.name, "Loja")
        XCTAssertEqual(loja.subcategorias.count, 4)

        let eletronicos = loja.subcategorias.first { $0.name == "Eletrônicos" }
        XCTAssertNotNil(eletronicos)
        XCTAssertEqual(eletronicos?.produtos.count, 1)
        XCTAssertEqual(eletronicos?.subcategorias.count, 3)

        let celulares = eletronicos?.subcategorias.first { $0.name == "Celulares" }
        XCTAssertNotNil(celulares)
        XCTAssertEqual(celulares?.produtos.count, 3)

        let casa = loja.subcategorias.first { $0.name == "Casa e Cozinha" }
        XCTAssertNotNil(casa)
        XCTAssertEqual(casa?.produtos.count, 1)
        XCTAssertEqual(casa?.subcategorias.count, 2)
    }
}


