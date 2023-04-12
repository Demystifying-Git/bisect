//
//  ContentView.swift
//  Bisect
//
//  Created by Antonio on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertShowed: Bool = false
    @State private var selectedTab: Int = 1
    
    init() {
        UITabBar.appearance().backgroundColor = .systemBackground
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
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
                .background(Color(uiColor: .systemGroupedBackground))
                .navigationTitle("Git bisect")
            }.tabItem {
                Text("Home")
                Image(systemName: "house")
            }.tag(0)
            
            NavigationView {
                List {
                    Section {
                        Text("This is an example app that shows how `git bisect` works")
                    } footer: { Text("Git is good!") }
                    
                    Section {
                        Text("`git bisect` is a command that allows you to efficiently and automatically find the specific commit in a Git repository that introduced a bug or caused a regression.")
                    } header: { Text ("What is `git bisect`?")}
                }
                .navigationTitle("Info")
            }
            .tabItem {
                Text("Info")
                Image(systemName: "info.circle")
            }.tag(1)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
