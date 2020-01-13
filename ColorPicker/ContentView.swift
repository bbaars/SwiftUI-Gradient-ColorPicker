//
//  ContentView.swift
//  ColorPicker
//
//  Created by Brandon Baars on 1/12/20.
//  Copyright © 2020 Brandon Baars. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // 1
    @State var currentColor: Color = .clear
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            // 2
            currentColor
            
            // 3
            ColorPickerView(chosenColor: $currentColor)
                .frame(width: 50, height: 200)
                .offset(x: 0, y: 75)
        }.edgesIgnoringSafeArea(.all) // fill past all edges on iPhoneX
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
