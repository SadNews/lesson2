//
//  ThirdView.swift
//
//  Copyright © 2021 Andrey Ushakov. All rights reserved.
//

import Foundation
import SwiftUI

struct ThirdView: View {
    
    var body: some View {
        VStack {
            Spacer().frame(width: nil, height: 20, alignment: .top)
            Text("Second View").foregroundColor(.white)
            VStack {
                NavPopButton(destination: .previous) {
                    Text("Pop to second view")
                        .foregroundColor(.white)
                }
                Spacer().frame(width: nil, height: 20, alignment: .center)
                NavPopButton(destination: .root) {
                    Text("Pop to root view")
                        .foregroundColor(.white)
                }
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
        }
        .background(Color.red)
    }
}

//MARK: - Previews

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

