//
//  transition 2.swift
//  designiOS
//
//  Created by Gaurav Verma on 25/08/23.
//

import SwiftUI

struct transition_2: View {
    
    @State var isButtontap = false
    
    var body: some View {
        VStack {
            
                VStack(){
                    RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 150,height: 40).padding(12.0).animation(.easeInOut).transition(.slide)
                        
                        
                            HStack(spacing: 10.0){
                        
                                
                                VStack(spacing: 15) {
                                    
                                    Circle().fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 120, height: 90).overlay(Text("10").foregroundColor(.white).bold())
                                    
                                    RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 120,height: 25).padding(1.0)
                                    
                                    RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 90,height: 25)
                                }
                                
                                VStack(spacing: 15) {
                                    
                                    Circle().fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 120, height: 90).overlay(Text("10").foregroundColor(.white).bold())
                                    
                                    RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 120,height: 25).padding(1.0)
                                    
                                    RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 90,height: 25)
                                }
                                
                                
                            }
                            .padding(.horizontal, 20.0).animation(.easeInOut).transition(.slide)
                            
                            
                            
                            RoundedRectangle(cornerRadius: 60)
                                .fill(Color(hue: 0.288, saturation: 0.611, brightness: 0.868))
                                .frame(width: 300, height: 70)
                                .overlay{
                                    Text("NEXT")
                                        .foregroundColor(.white)
//                                        .padding(50)
                                        .onTapGesture {
                                            isButtontap.toggle()
                                        }
                                    NavigationLink("",destination: transition_3(),isActive: $isButtontap)
                                }
                                
                        }
                        .padding()
                        .frame(width: 400, height: 400)
                    .background(Color.white)
            }
//            Rectangle().fill(.red)
        }
    }


struct transition_2_Previews: PreviewProvider {
    static var previews: some View {
        transition_2()
    }
}
