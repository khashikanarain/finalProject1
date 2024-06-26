//
//  ContentView.swift
//  finalProject
//
//  Created by Sruti Narain on 6/26/24.
//

import SwiftUI

struct ContentView: View {
    let columns = [
        GridItem(.flexible()), GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        NavigationLink(destination: ScienceView()) {
                            VStack {
                                Image("Folder Icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Maintain aspect ratio
                                Text("Science")
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        }

                        NavigationLink(destination: TechView()) {
                            VStack {
                                Image("Folder Icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Maintain aspect ratio
                                Text("Technology")
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        }

                        NavigationLink(destination: EngineerView()) {
                            VStack {
                                Image("Folder Icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Maintain aspect ratio
                                Text("Engineering")
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        }

                        NavigationLink(destination: MathView()) {
                            VStack {
                                Image("Folder Icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit) // Maintain aspect ratio
                                Text("Math")
                            }
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
