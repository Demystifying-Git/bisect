//
//  ContentView.swift
//  Bisect
//
//  Created by Antonio on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertShowed: Bool = false
    
    var body: some View {
        AlertButtonView(isPresented: $alertShowed)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
