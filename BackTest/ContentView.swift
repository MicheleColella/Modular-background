//
//  ContentView.swift
//  BackTest
//
//  Created by Michele Colella on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var expanded: Bool = false
    var body: some View {
        ZStack{
            BackgroundView(isExpanded: expanded)
            VStack{
                Text("TEST").foregroundColor(.white).bold()
                Toggle("", isOn: $expanded)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
