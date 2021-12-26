//
//  CharacterRowViewModel.swift
//
//  Copyright © 2021 Andrey Ushakov. All rights reserved.
//

import Foundation

final class CharacterRowViewModel: ObservableObject {
    @Published private(set) var character: CharacterModel
    
    init(character: CharacterModel) {
        self.character = character
    }
}
