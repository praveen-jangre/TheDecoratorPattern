//
//  TheDecoratorPattern.swift
//  TheDecoratorPattern
//
//  Created by Praveen Jangre on 13/06/2025.
//

import Foundation


func invokeDecoratorDesignPattern() {
    //Camera Configurations
    var camera: Camera = Mirrorless()
    print("\(camera.description) \n\t $\(camera.price)")
    
    camera = LCDDecorator(wrapped: camera)
    print("\(camera.description) \n\t $\(camera.price)")
    
    camera = ViewFinderDecorator(wrapped: camera)
    print("\(camera.description) \n\t $\(camera.price)")
    
    camera = VideoCaptureDecorator(wrapped: camera)
    print("\(camera.description) \n\t $\(camera.price)")
    
    
    

}
