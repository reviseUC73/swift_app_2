//
//  CounterView.swift
//  swift_app_2
//
//  Created by ReviseUC73 on 1/1/2567 BE.
//

import SwiftUI

struct CounterView: View {
    @State var count:Int = 0
    @Binding var countMain:Int
    
    var body: some View {
        Text("Counter: \(count)").font(.system(size: 35 )).padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
        
        
        Button(action:
                {count+=1
                countMain+=1
        }
        ) {
            HStack {
                Image(systemName: "plus.app")
                Text("Add Conut")
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .padding(.horizontal, 8.0)
            }
        }
        
        Button(action: {
            count-=1
            countMain-=1
        }) {
            VStack{
                Image(systemName: "minus.circle")
                Text("Reduce Count")
                    .fontWeight(.bold)
                    .padding(.horizontal)
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            //        .cornerRadius(10)
            .cornerRadius(.infinity)
        }
    }
}


#Preview {
    CounterView(countMain: .constant(0))
}
