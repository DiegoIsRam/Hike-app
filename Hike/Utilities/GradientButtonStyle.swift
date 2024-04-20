//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Diego Ramirez on 20/04/24.
//

import Foundation
import SwiftUI


struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                //Conditional Statement with Nil Coalescing
                //Condition ? A: B
                // A: When User pressed the Button
                // B: When the Button is not pressed
                configuration.isPressed ?
                LinearGradient(colors:
                                [.customGrayMedium,
                                 .customGrayLight], startPoint: .top,
                               endPoint: .bottom)
                
                :
                    LinearGradient(colors:
                                    [.customGrayLight,
                                     .customGrayMedium], startPoint: .top,
                                   endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
