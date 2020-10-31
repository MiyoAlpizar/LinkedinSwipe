//
//  CardView.swift
//  LinkedinSwipe
//
//  Created by Miyo Alpízar on 31/10/20.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        ZStack(alignment: .bottomLeading) {
            
            VStack {
                
                Image("graphic")
                    .resizable()
                    .frame(height: 420)
                    .aspectRatio(contentMode: .fit)
                    
                HStack(spacing: 25) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "clear.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                            .foregroundColor(.red)
                    }).background(Color.black.opacity(0.02))
                    .clipShape(Circle())
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "message.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                            .foregroundColor(.blue)
                    }).background(Color.black.opacity(0.02))
                    .clipShape(Circle())
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                            .foregroundColor(.green)
                    }).background(Color.black.opacity(0.02))
                    .clipShape(Circle())
                }
                .padding(10)
                
            }.background(Color.white)
            .cornerRadius(25)
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Brenda")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text("25")
                    .font(.body)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }.padding(.bottom, 100)
            .padding(.leading,10)
            
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
