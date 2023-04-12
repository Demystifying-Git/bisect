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
        NavigationView {
            GeometryReader { geo in
                ScrollView {
                    VStack {
                        AlertButtonView(isPresented: $alertShowed)
                    }
                    .frame(
                        width: geo.frame(in: .local).width,
                        height: geo.frame(in: .local).height,
                        alignment: .center
                    )
                }
            }
            .navigationTitle("Git bisect")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
