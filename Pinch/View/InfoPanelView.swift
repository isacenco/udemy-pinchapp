//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Ghenadie Isacenco on 21/10/2025.
//

import SwiftUI

struct InfoPanelView: View {
    // MARK: - PROPERTY
    var scale: CGFloat
    var offset: CGSize
    @State private var isInfoPannelVisible: Bool = false
    
    var body: some View {
        HStack {
            // MARK: - HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1) {
                    withAnimation(.easeOut) {
                        isInfoPannelVisible.toggle()
                    }
                }
            
            Spacer()
            
            // MARK: - INFO PANEL
            HStack(spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                
                Spacer()
                
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                
                Spacer()
                
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
                
                Spacer()
            } //: HSTACK
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPannelVisible ? 1 : 0)
            
            Spacer()
            
        } //: HSTACK
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InfoPanelView(scale: 1, offset: .zero)
        .preferredColorScheme(.dark)
        .padding()
}
