//
//  engineer.swift
//  finalProject
//
//  Created by Sruti Narain on 6/26/24.
//

import SwiftUI

struct EngineerView: View {
    @State private var isExpanded1: Bool = false
    @State private var isExpanded2: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // First Disclosure Group
            DisclosureGroup("Section 1", isExpanded: $isExpanded1) {
                VStack(alignment: .leading, spacing: 10) {
                    // Add your content here
                    Text("Detailed information for section 1.")
                        .padding()
                        .background(Color.yellow.opacity(0.3))
                        .cornerRadius(5)
                    
                    // Example image
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.yellow)
                }
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(8)
            }
            .padding()
            .background(Color.blue.opacity(0.3))
            .cornerRadius(10)
            
            // Second Disclosure Group
            DisclosureGroup("Section 2", isExpanded: $isExpanded2) {
                VStack(alignment: .leading, spacing: 10) {
                    // Add your content here
                    Text("Detailed information for section 2.")
                        .padding()
                        .background(Color.green.opacity(0.3))
                        .cornerRadius(5)
                    
                    // Example image
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.red)
                }
                .padding()
                .background(Color.green.opacity(0.1))
                .cornerRadius(8)
            }
            .padding()
            .background(Color.green.opacity(0.3))
            .cornerRadius(10)
            
            Spacer()
        }
        .padding()
    }
}

struct EngineerView_Previews: PreviewProvider {
    static var previews: some View {
        EngineerView()
    }
}

