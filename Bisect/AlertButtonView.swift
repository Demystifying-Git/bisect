//
//  AlertButtonView.swift
//  Bisect
//
//  Created by Antonio on 12/04/23.
//

import SwiftUI

struct AlertButtonView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Button(action: {
            isPresented.toggle()
        }) {
            Text("THE BUTTON")
                .foregroundColor(.white)
                .padding()
                .background(Color.init(uiColor: .systemGreen))
                .cornerRadius(20)
                .shadow(radius: 5, y: 8)
        }
        .alert("GIT BISECT WORKING!", isPresented: $isPresented, actions: {
            Button(action: { }) { Text("Close") }
        })
        
    }
}

struct AlertButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AlertButtonView(isPresented: .constant(false))
    }
}
