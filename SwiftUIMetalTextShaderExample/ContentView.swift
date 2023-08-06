//
//  ContentView.swift
//  SwiftUIMetalTextShaderExample
//
//  Created by Toomas Vahter on 06.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .font(.largeTitle)
                .foregroundStyle(shader)
        }
        .padding()
    }

    var shader: Shader {
        ShaderLibrary.stripes(.float(15))
    }
}

#Preview {
    ContentView()
}
