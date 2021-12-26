//
//  CustomNavigationView.swift
//
//  Copyright © 2021 Andrey Ushakov. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomNavigationView: View {
    var body: some View {
        NavigationView {
            NavControllerView(transition: .custom(.moveAndFade)) {
                FirstView()
            }
            .navigationBarTitle("Custom Navigation")
        }
    }
}

//MARK: - Previews

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
    }
}
