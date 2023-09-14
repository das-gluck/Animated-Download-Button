//
//  transition 3.swift
//  designiOS
//
//  Created by Gaurav Verma on 25/08/23.
//

import SwiftUI

struct transition_3: View {
    var body: some View {
        VStack {
            VStack(){
                Text("Ready To Play ?").font(.system(size: 19)).foregroundColor(Color(hue: 1.0, saturation: 0.067, brightness: 0.236)).frame(width: 200,height: 40).tracking(2)
                
                Text("OSWALD").font(.system(size: 22)).foregroundColor(Color(hue: 1.0, saturation: 0.067, brightness: 0.236)).frame(width: 200,height: 40).tracking(2)
                
                HStack {
                    RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 70, height: 26)
                    
                    RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 40, height: 26)
                }.padding(10)
                
                HStack(spacing: 10.0){
                            
                            RoundedRectangle(cornerRadius: 60).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 70, height: 50)
                            
                            RoundedRectangle(cornerRadius: 60).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 70, height: 50)
                            
                            RoundedRectangle(cornerRadius: 60).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 70, height: 50)
                            
                            
                        }
                        .padding(.horizontal, 29.0)
                        
                        HStack(){
                            
                            Text("Wallet Balance: ").frame(alignment: .leading).font(.body).frame(height: 40.0)
                            RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 60, height: 26).padding(17.0)
                            RoundedRectangle(cornerRadius: 5).fill(Color(hue: 1.0, saturation: 0.023, brightness: 0.781)).frame(width: 30, height: 26).padding(17.0)
                
                        }
                        
                        RoundedRectangle(cornerRadius: 60)
                    .fill(Color(hue: 0.288, saturation: 0.221, brightness: 0.157))
                            .frame(width: 300, height: 70)
                            .overlay(Text("Confirm").foregroundColor(.white))
                    }
                    .padding()
                    .frame(width: 400, height: 400)
                    .background(Color.white)
//            Rectangle().fill(.red)
        }
    }
}

struct transition_3_Previews: PreviewProvider {
    static var previews: some View {
        transition_3()
    }
}
