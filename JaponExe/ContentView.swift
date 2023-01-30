//
//  ContentView.swift
//  JaponExe
//
//  Created by Nicolas Demange on 27/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingTownCard = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            LoopingPlayer()
                .ignoresSafeArea()
                .frame(width: 2250)
            VStack(alignment: .center) {
            }
            Button("View information") {
                isShowingTownCard.toggle()
            }
            .buttonStyle(InformationButton())
            .sheet(isPresented: $isShowingTownCard) {
                Card()
                    .presentationDetents([.fraction(0.50)])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InformationButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 220,height: 60)
            .font(.system(size: 18))
            .background(Color(red: 10, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.1 : 1)
    }
}
