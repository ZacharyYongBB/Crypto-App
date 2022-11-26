//
//  XMarkButton.swift
//  CryptoSwift
//
//  Created by Zachary on 26/11/22.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
}

struct XMarkButton_Preview: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
