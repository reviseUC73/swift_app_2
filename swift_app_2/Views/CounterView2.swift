import SwiftUI

struct CounterView2: View {
    @State private var count: Int = 0
    @State private var isAddButtonAnimating = false
    @State private var isReduceButtonAnimating = false
    @State private var showAlert = false
    
    @Binding var countMain:Int

    var body: some View {
        HStack {
//            Color.gray.edgesIgnoringSafeArea(.all)
//            .background(Color.green)
            VStack(spacing: 20) {
                Text("Counter: \(count)")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)

                HStack(spacing: 20) {
                    Button(action: {
                        withAnimation {
                            count += 1
                            isAddButtonAnimating.toggle()
                            countMain+=1
                        }
                    }) {
                        Image(systemName: "plus.app")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                            .scaleEffect(isAddButtonAnimating ? 1.2 : 1.0)
                    }

                    Button(action: {
                        if count > 0 {
                            withAnimation {
                                count -= 1
                                
                                isReduceButtonAnimating.toggle()
                            }
                        } else {
                            showAlert = true
                        }
                        countMain-=1
                    }) {
                        Image(systemName: "minus.circle")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .scaleEffect(isReduceButtonAnimating ? 1.2 : 1.0)
//                            .disabled(count <= 0) // not response 
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Cannot Reduce Count"),
                            message: Text("Count cannot be negative."),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                   
                }
               
                
            }
            .padding(.vertical, 20.0)
            .padding(.horizontal, 10.0)
           
            
        }
        
        .background(Color(hue: 0.574, saturation: 0.007, brightness: 0.771, opacity: 0.502))
        .foregroundColor(.red)
        .cornerRadius(10)
    }
}

#Preview {
    CounterView2(countMain: .constant(0))
}



//#if DEBUG
//struct CounterView_Previews: PreviewProvider {
//    static var previews: some View {
//        CounterView2(countMain: $countMain)
//    }
//}
//#endif
