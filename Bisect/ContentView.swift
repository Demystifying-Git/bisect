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
        VStack {
            Button(action: {
                alertShowed.toggle()
            }) {
                Text("THE BUTTON")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.init(uiColor: .systemBlue))
                    .cornerRadius(20)
                    .shadow(radius: 5, y: 8)
            }
        }
        .alert("GIT BISECT WORKING!", isPresented: $alertShowed, actions: {
            Button(action: { }) { Text("Close") }
        })
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
