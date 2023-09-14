//
//  downloadButton.swift
//  designiOS
//
//  Created by Gaurav Verma on 24/08/23.
//

import SwiftUI

struct downloadButton: View {
    
    @State private var containerWidth: CGFloat = 0
    @State private var progressTitle: String = ""
    @State private var progress: Int = 0
    @State private var prompt: Int = 0
    @State private var show: String = ""
    @State var showingBottomSheet = false
    @State var showplayButton: Bool = false
    
    
    var maxWidth: Double {
        return min( Double(progress) , containerWidth)
    }
    private let goal = 30
    @State private var step = 0
    
    var body: some View {
        
        
            ZStack {
                ZStack(alignment: .leading){
                    GeometryReader { geo in
                        RoundedRectangle(cornerRadius: 60)
                            .foregroundColor(Color.green.opacity(0.5))
                            .onAppear{
                                containerWidth = geo.size.width
                            }
                    }
                    
                    RoundedRectangle(cornerRadius: 60)
                        .stroke(Color.white, lineWidth: 1)
                    
                    ZStack(alignment: .trailing) {
                        RoundedRectangle(cornerRadius: 60)
                            .fill(Color.green)
                        
                        Text(" ") 
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 6, leading:12, bottom:6, trailing:12 ))
                            .background(
                                RoundedRectangle(cornerRadius: 60)
                                    .fill(Color.green)
                                    .frame(height: 40)
                            )
                    }
//                    .padding(2)
                    .frame(minWidth: maxWidth, maxHeight: 300 )
                    .fixedSize(horizontal: true, vertical: false)
                }
                .frame(minWidth: maxWidth, maxHeight: 50 )
                //.fixedSize(horizontal: false, vertical: true)
                .padding(20)
                .onAppear{
                    progressTitle = ""
                }
      
                VStack {
                    if showplayButton {
                        xlayButton()
                    } else {
                        Button(show) {
                            progress = 0
                            Task {
                                for i in 0...30 {
                                    try await Task.sleep(until: .now.advanced(by: .milliseconds(50)), clock: .continuous)
                                        progressTitle = " \(i) MB /  \(goal) MB"
                                        progress = Int(Double(containerWidth) / 30 * Double(i))
                                    
                                    if progress != 0 {
                                        show = " \(i) MB /  \(goal) MB"
                                    }
                                    if(i==30){
                                        show = "play"
                                        self.showplayButton = true
                                    }
                                }
                            }
                        }
                        .onAppear{
                            show = "Download (30 MB)"}
                    }
                }
            }
      }
    
   }

struct xlayButton: View {
    var body: some View {
        random()
    }
}








struct downloadButton_Previews: PreviewProvider {
    static var previews: some View {
        downloadButton()
    }
}
