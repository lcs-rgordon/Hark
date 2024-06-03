//
//  WelcomeView.swift
//  Hark
//
//  Created by Russell Gordon on 2024-06-03.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        ZStack {
            
            Color.welcomeScreenBlue
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Hark")
                    .foregroundStyle(Color.white)
                    .font(.custom("EuphemiaUCAS-Bold", size: 96.0, relativeTo: .largeTitle))
                    .shadow(color: .gray, radius: 10)

                Text("""
                    Welcome to Hark,
                    a Harkness app which
                    is designed to help
                    you succeed during
                    your Harkness sessions!
                    """)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.white)
                    .font(.custom("EuphemiaUCAS-Bold", size: 24.0, relativeTo: .largeTitle))

                Spacer()
                
                NavigationLink {
                    Text("Second view")
                } label: {
                    Text("Go to Classes")
                        .foregroundStyle(Color.white)
                        .font(.custom("EuphemiaUCAS-Bold", size: 30.0, relativeTo: .largeTitle))
                        .padding()
                        .padding(.vertical, 10)
                        .background {
                            RoundedRectangle(cornerRadius: 20.0)
                                .foregroundStyle(.gray)
                        }
                }

                
                Spacer()
            }
            
        }
    }
}

#Preview {
    WelcomeView()
}
