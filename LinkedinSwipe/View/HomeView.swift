//
//  HomeView.swift
//  LinkedinSwipe
//
//  Created by Miyo Alpízar on 31/10/20.
//

import SwiftUI

struct HomeView: View {
    
    @State var x: [CGFloat] = [0,0,0,0,0,0,0]
    @State var degree: [Double] = [0,0,0,0,0,0,0]
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.05)
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                for i in 0..<self.x.count {
                    self.x[i] = 0
                }
                for i in 0..<self.degree.count {
                    self.degree[i] = 0
                }
            },
                   label: {
                Image(systemName: "return").font(.title)
            })
            
            ZStack {
                ForEach(0..<7, id: \.self) { i in
                    CardView()
                        .offset(x: self.x[i])
                        .rotationEffect(.init(degrees: self.degree[i]))
                        .gesture(DragGesture()
                                    .onChanged({ (value) in
                                        if value.translation.width > 0 {
                                            self.x[i] = value.translation.width
                                            self.degree[i] = 8
                                        }else {
                                            self.x[i] = value.translation.width
                                            self.degree[i] = -8
                                        }
                                        
                                    })
                                    .onEnded({ (value) in
                                        if value.translation.width > 0 {
                                            if value.translation.width > 100 {
                                                self.x[i] = 500
                                                self.degree[i] = 12
                                            }else {
                                                self.x[i] = 0
                                                self.degree[i] = 0
                                            }
                                        }else {
                                            if value.translation.width < -100 {
                                                self.x[i] = -500
                                                self.degree[i] = -12
                                            }else {
                                                self.x[i] = 0
                                                self.degree[i] = 0
                                            }
                                        }
                                    })
                        )
                    
                }
            }.padding()
            .animation(.easeIn)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
