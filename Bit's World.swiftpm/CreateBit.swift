//
//  CreateBit.swift
//  Joguinho
//
//  Created by Lucas Francisco on 13/04/23.
//

import SwiftUI

func createBit(images: [String], x1: CGFloat, y1: CGFloat, pow: Int, start: Int, w: CGFloat, h: CGFloat, count: Int, isUP: Bool) -> some View{
        
    var currentImageIndex = start
    var count = count
    var isUP = isUP
    
    return Image(images[currentImageIndex])
        .resizable()
        .animation(.easeInOut(duration: 0.0))
        
        .frame(width: 264 * w , height: 221 * h)
        .position(x: x1, y: y1)
    
        .onTapGesture {
            if(!isUP){
                let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                    currentImageIndex = (currentImageIndex + 1) % images.count
                    if(currentImageIndex == 3){
                        timer.invalidate()
                    }
                }
                    
                }
                timer.fire()
                count += pow
                isUP = true
            }else{
                currentImageIndex = 3
                let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                    currentImageIndex = (currentImageIndex - 1) % images.count
                    if(currentImageIndex == 0){
                        timer.invalidate()
                    }
                }
                    
                }
                timer.fire()
                count -= 1
                isUP = false

            }
        }
}

