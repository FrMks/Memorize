//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Максим Французов on 10.07.2021.
//

import SwiftUI
@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
