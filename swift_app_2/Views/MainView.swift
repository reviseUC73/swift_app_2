//
//  ContentView.swift
//  swift_app_2
//
//  Created by ReviseUC73 on 1/1/2567 BE.
//

import SwiftUI

struct MainView: View {
    @State private var countMain: Int = 0
   


    var body: some View {
        
        VStack(alignment: .center) {
            VStack(alignment: .center){
                Text("ConterFinalMain -> \(countMain)")
                    .font(.system(size: 35 ))
                    .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                    .background(Color.gray)
            }
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            VStack {
                Text("Hello, world!")
            }
            VStack(content: {
                CounterView(countMain : $countMain)
                CounterView2(countMain : $countMain)
            }
            )
            .padding()
            .background(Color(hue: 0.607, saturation: 0.161, brightness: 0.977, opacity: 0.715))
            .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
            
          
        }.cornerRadius(10)
         .padding(/*@START_MENU_TOKEN@*/.all, 9.0/*@END_MENU_TOKEN@*/)
         .background(Color(hue: 1.0, saturation: 0.138, brightness: 0.965, opacity: 0.354))
          
            
       
    }
}

#Preview {
    MainView()
}
