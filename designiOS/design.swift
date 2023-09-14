//
//  design.swift
//  designiOS
//
//  Created by Gaurav Verma on 24/08/23.
//

import SwiftUI

struct design: View {
    var body: some View {
        
        VStack {
            
            ScrollView {
                HStack(alignment: .center, spacing: 20.0){
                    
                    RoundedRectangle(cornerRadius: 23)
                        .fill(.yellow)
                        .frame(width: 130, height: 130)
                    
                    VStack(alignment: .center ) {
                        Text("CANDY")
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding(.top, 1.5)
                            
                            .tracking(2)
                        
                        Text("BURST")
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding(0.0)
                            .tracking(2)
                    }
                    
                    
                }.padding(.trailing, 120.0)
                    
                
                VStack {
                    Text("What is Lorem Ipsum ? Lorem Ipsum is simply dummy text of the printing nd typeetting")
                        .fontWeight(.medium)
                        .padding(.top, 5.0)
                    
                    Text("READ MORE")
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.324, saturation: 0.959, brightness: 0.757))
                        .padding(20)
                        .tracking(2)
                        
                }
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0 ..< 2) { item in
                            RoundedRectangle(cornerRadius: 0)
                                .fill(Color(hue: 1.0, saturation: 0.003, brightness: 0.836, opacity: 0.992))
                            .frame(width: 250, height: 400)
                        }
                    }
                }
            }
            
                downloadButton()
                
            
        }
        .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
    }
}

struct design_Previews: PreviewProvider {
    static var previews: some View {
        design()
    }
}
