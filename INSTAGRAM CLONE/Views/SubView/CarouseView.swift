//
//  CarouseView.swift
//  INSTAGRAM CLONE
//
//  Created by amarjeet patel on 20/11/24.
//

import SwiftUI

struct CarouseView: View {
    
    @State var selection = 0
    //@State var array = ["dog1","dog2","dog3","dog4","dog5"]
    let maxCount:Int = 8
    @State var timerAdded = false
    
    var body: some View {
        TabView(selection: $selection) {
           ForEach(1..<maxCount ) { count in
             Image("dog\(count)")
                    .resizable()
                    .scaledToFit()
                    .tag(count)
            }
           /* ForEach(array.indices, id: \.self) { index in
                let image = array[index]
                Image(image)
                       .resizable()
                       .scaledToFit()
                       .tag(index)
                
            }*/
          
        }.tabViewStyle(.page)
            .frame(height: 300)
            .animation(.default)
            .onAppear(){
                if !timerAdded{
                    addTimer()
                }
             
            }
       
    }
                
    func addTimer() {
        timerAdded = true
        let timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { Timer in
            selection =  selection > maxCount ? 0 : selection + 1
        }
        timer.fire()
    }
}

struct CarouseView_Previews: PreviewProvider {
    static var previews: some View {
        CarouseView()
    }
}
