//
//  random.swift
//  designiOS
//
//  Created by Gaurav Verma on 26/08/23.
//

import SwiftUI

struct random: View {
    @State var showingBottomSheet = false
    var body: some View {
        VStack {
            Button("Play") {
                showingBottomSheet.toggle()
            }
            .foregroundColor(.white)
            
            .buttonStyle(.borderless)
            .background(Color.clear)
   
        }
        .frame(width: 400,height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .padding()
        .sheet(isPresented: $showingBottomSheet) {
            BottomSheetView()
                .presentationDetents([.height(370)])
        }
    }
}


struct BottomSheetView: View {
    var body: some View {
        Transition()
            
    }
}




struct random_Previews: PreviewProvider {
    static var previews: some View {
        random()
    }
}
