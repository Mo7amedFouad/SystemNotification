//
//  View+Geometry.swift
//  SwiftUIKit
//
//  Created by Daniel Saidi on 2020-03-26.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import SwiftUI

extension View {

    /**
     Bind the view's size to a binding.
    */
    func bindSize(to binding: Binding<CGSize>) -> some View {
        background(sizeBindingView(for: binding))
    }
}

private extension View {
    
    func changeStateAsync(_ action: @escaping () -> Void) {
        DispatchQueue.main.async(execute: action)
    }
    
    func sizeBindingView(for binding: Binding<CGSize>) -> some View {
        GeometryReader { geo in
            self.sizeBindingView(for: binding, geo: geo)
        }
    }
    
    func sizeBindingView(for binding: Binding<CGSize>, geo: GeometryProxy) -> some View {
        changeStateAsync { binding.wrappedValue = geo.size }
        return Color.clear
    }
}
