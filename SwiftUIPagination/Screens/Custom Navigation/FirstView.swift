//
//  FirstView.swift
//
//  Copyright © 2021 Andrey Ushakov. All rights reserved.
//

import Foundation
import SwiftUI

struct FirstView: View {
    
    var body: some View {
        VStack {
            Spacer().frame(width: nil, height: 20, alignment: .top)
            Text("First View")
            VStack {
                NavPushButton(destination: SecondView()) {
                    Text("Open Second Screen")
                }
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
        }
        .background(Color.yellow)
    }
}

//MARK: - Previews

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
