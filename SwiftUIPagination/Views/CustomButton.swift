//
//  CustomButton.swift
//
//  Copyright © 2021 Andrey Ushakov. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomButton<InnerContent>: View where InnerContent: View {
    
    private let action: ()->Void
    private let innerContent: ()->InnerContent
    
    init(action: @escaping ()->Void, @ViewBuilder innerContent: @escaping () -> InnerContent) {
        self.action = action
        self.innerContent = innerContent
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(.green)
            HStack {
                self.innerContent()
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 14)
        }
        .fixedSize(horizontal: true, vertical: true)
        .simultaneousGesture(TapGesture().onEnded({
            self.action()
        }))
    }
}

// MARK: - Preview
struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(action: {}) {
            VStack {
                EmptyView()
                Text("Test")
            }
        }
    }
}
