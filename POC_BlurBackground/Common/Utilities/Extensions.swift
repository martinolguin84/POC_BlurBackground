//
//  Extensions.swift
//  POC_BlurBackground
//
//  Created by Martin Olguin on 14/08/23.
//

import SwiftUI

extension View {
    func backgroundBlur(radius: CGFloat = 3, opaque: Bool = false) -> some View {
        self
            .background(
                Blur(radius: radius, opaque: opaque)
            )
    }
}
