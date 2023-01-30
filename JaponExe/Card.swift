//
//  Card.swift
//  JaponExe
//
//  Created by Nicolas Demange on 27/01/2023.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack(spacing: 100) {
                    Text("TOKYO")
                        .font(.system(size: 32))
                    .bold()
                    Button("") {
                        //
                    }
                    Image(systemName: "star.fill")
                        .font(.system(size: 32))
                        .foregroundColor(.yellow)
                        
                }
                Text("Japan")
                    .font(.title2)
                    .padding(.bottom, 10)
                    .foregroundColor(.secondary)
                Text("Tokyo, officially the Tokyo Metropolis, is the capital and most populous city of Japan. Formerly known as Edo, its metropolitan area is the most populous in the world, with an estimated 37.468 million residents as of 2018; the city proper has a population of 13.99 million people. Located at the head of Tokyo Bay, the prefecture forms part of the Kantō region on the central coast of Honshu, Japan's largest island. Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan.")
                    .padding(.bottom, 40)
                    .font(.system(size: 12))
                    .multilineTextAlignment(.leading)
            }
            .padding(.leading, 20)
        .padding(.trailing, 20)
            
            HStack(spacing: 50) {
                Button("Cancel") {
                }
                .buttonStyle(CancelButton())
                
                Button("Book now") {
                    // Action button
                }
                .buttonStyle(BookNowButton())
            }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}

struct CancelButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .font(.system(size: 20))
            .frame(width: 150)
            .background(Color(red: 100, green: 100, blue: 100))
            .foregroundColor(.black)
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.2 : 1)
    }
}

struct BookNowButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .bold()
            .font(.system(size: 20))
            .frame(width: 150)
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.2 : 1)
    }
}
