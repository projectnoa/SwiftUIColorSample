//
//	ContentView.swift
//  SwiftUIColorSample
//
//  Created by Juan Mueller on 12/29/22.
//  For more, visit www.ajourneyforwisdom.com
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Use a system color as the background color of a view
            Rectangle()
                .fill(Color.blue)
                .frame(height: 200)
                .padding(40)
            
            // Use a custom color to create a button
            Button(action: {
                print("Button tapped")
            }) {
                Text("Custom button")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(red: 0.5,
                                      green: 0.2,
                                      blue: 0.9,
                                      opacity: 1))
                    .cornerRadius(8)
            }
            
            // Use a color style to display grayscale text
            Text("Grayscale text")
                .foregroundColor(.gray)
            
            // Use the .accessibility(label:) modifier to provide a text label for a color
            Circle()
                .fill(Color.red)
                .padding(40)
                .accessibility(label: Text("Important information"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
