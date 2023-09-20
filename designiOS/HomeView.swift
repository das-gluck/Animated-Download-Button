//
//  HomeView.swift
//  designiOS
//
//  Created by Gaurav Verma on 24/08/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var nextPage: Bool = false
    var body: some View {
        
            NavigationView {
                ScrollView(.vertical, showsIndicators: true)
                {

                    VStack {
                        ForEach(0 ..< 2){ item in
                            NavigationLink(destination: design()) {
                                myItem
                            }
                        }
                    }

                }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .navigationTitle("PLAY")
        }
        
        
        
    }
    
    
    var myItem: some View {
        ZStack(alignment: .topLeading)
        {
            RoundedRectangle(cornerRadius: 23)
                .fill(.orange)
                .frame(width: .infinity, height: 500)
            
            RoundedRectangle(cornerRadius: 23)
                .fill(.yellow)
                .frame(width: 130, height: 130)
                .padding()
            
            Capsule()
                .fill(.green)
                .frame(width: 375, height: 80)
                .padding(.top,400)
                .offset(x: 10)
            
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
