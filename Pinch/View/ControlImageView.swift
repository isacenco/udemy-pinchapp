//
//  ControlImageView.swift
//  Pinch
//
//  Created by Ghenadie Isacenco on 21/10/2025.
//

import SwiftUI

struct ControlImageView: View {
    // MARK: - PROPERTY
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ControlImageView(icon: "minus.magnifyingglass")
        .preferredColorScheme(.dark)
        .padding()
}
