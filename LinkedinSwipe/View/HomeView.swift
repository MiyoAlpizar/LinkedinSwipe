//
//  HomeView.swift
//  LinkedinSwipe
//
//  Created by Miyo Alpízar on 31/10/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.05)
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
                CardView()
            }.padding()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
