import SwiftUI

@main
struct LojaApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                CategoryListView(categoria: loja)
            }
        }
    }
}


