//
//  Transition.swift
//  designiOS
//
//  Created by Gaurav Verma on 24/08/23.
//

import SwiftUI

struct Transition: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var isButtontap = false
    @State var ani = false
    
    var body: some View {
        
        
        VStack {
            NavigationView{
                VStack(){
                     
                    RoundedRectangle(cornerRadius: 5).fill(Color(hue: 0.288, saturation: 0.611, brightness: 0.868)).frame(width: 200,height:40).padding(12.0).animation(.easeInOut(duration: 0.3)).transition(.slide)
                    
                    
                    RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 150, height: 26).padding(17.0).animation(.easeInOut(duration: 0.5)).transition(.slide)

                            HStack(spacing: 0.0){
                                Circle().fill(Color(hue: 0.288, saturation: 0.611, brightness: 0.868)).frame(width: 100, height: 70).overlay(Text("5").foregroundColor(.white).bold())
                                
                                Circle().fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 100, height: 70).overlay(Text("10").foregroundColor(.white).bold())
                                
                                Circle().fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 100, height: 70).overlay(Text("15").foregroundColor(.white).bold())
                            }
                            .padding(.horizontal, 29.0).animation(.easeInOut(duration: 0.7)).transition(.slide)
                            
                            HStack(){
                                
                                Text("Wallet Balance: ").frame(alignment: .leading).font(.body).frame(height: 40.0)
                                RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 60, height: 26).padding(17.0)
                                RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 30, height: 26).padding(17.0)
                    
                            }.animation(.easeInOut(duration: 0.9)).transition(.slide)
                            
                            RoundedRectangle(cornerRadius: 60)
                                .fill(Color(hue: 0.288, saturation: 0.611, brightness: 0.868))
                                .frame(width: 300, height: 70)
                                .overlay{
                                    Text("NEXT")
                                        .foregroundColor(.white)
                                        .padding(20)
                                        .onTapGesture {
                                            isButtontap.toggle()
                                        }
                                    NavigationLink("",destination: transition_2(),isActive: $isButtontap)
                                        
                                }
                                
                        }
                        .padding()
                        .frame(width: 400, height: 400)
                        .background(Color.white)
                    
            }

        }
    }
}
private func link<Destination: View>( destination: Destination) -> some View {
    return NavigationLink(destination: destination) {
        
    }
}

struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
            
    }
}
