//
//  Blur.swift
//  Weather-SwiftUI
//
//  Created by Akshay Ashok on 21/01/24.
//

import SwiftUI

class UIBackDropView: UIView{
    override class var layerClass: AnyClass{
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}

struct Backdrop: UIViewRepresentable {
    func makeUIView(context: Context) -> UIBackDropView {
        UIBackDropView()
    }
    
    func updateUIView(_ uiView: UIBackDropView, context: Context) {}
}

struct Blur: View {
    var radius: CGFloat = 3
    var opaque: Bool = false
    var body: some View {
        Backdrop()
            .blur(radius: radius, opaque: opaque)
    }
}

#Preview {
    Blur()
}
