//
//  CameraShop.swift
//  TheDecoratorPattern
//
//  Created by Praveen Jangre on 13/06/2025.
//

import Foundation

protocol Camera: CustomStringConvertible {
    var price: Float { get }
}

class Mirrorless: Camera {
    var price: Float { return 500 }
    var description: String { "Mirrorless" }
}
class Compact: Camera {
    var price: Float { return 200 }
    var description: String { "Compact" }
}
class DSLR: Camera {
    var price: Float { return 1500 }
    var description: String { "DSLR" }
}

struct FeaturePrice {
    static let viewFinder: Float = 75
    static let lcd: Float = 50
    static let videoCapture: Float = 100
}

//class MirrorlessWithViewFinder: Mirrorless {
//    override var price: Float { super.price + FeaturePrice.viewFinder }
//    override var description: String { super.description + ", View Finder" }
//}
//
//class MirrorlessWithViewLCD: Mirrorless {
//    override var price: Float { super.price + FeaturePrice.lcd }
//    override var description: String { super.description + ", LCD" }
//}
//
//class MirrorlessWithViewCapture: Mirrorless {
//    override var price: Float { super.price + FeaturePrice.videoCapture }
//    override var description: String { super.description + ", Video Capture" }
//}


// MARK: The Decorator Design Pattern Implementation

protocol CameraDecorator: Camera {
    var wrapped: Camera { get }
    init(wrapped: Camera)
}

extension CameraDecorator {
    var price: Float { wrapped.price }
    var description: String { wrapped.description + ", with additional features" }
}

struct LCDDecorator: CameraDecorator {
    var wrapped: Camera
    var price: Float { wrapped.price + FeaturePrice.lcd }
    var description: String { wrapped.description + ". LCD" }
}

struct VideoCaptureDecorator: CameraDecorator {
    var wrapped: Camera
    var price: Float { wrapped.price + FeaturePrice.videoCapture }
    var description: String { wrapped.description + ". Video Recording" }
}

struct ViewFinderDecorator: CameraDecorator {
    var wrapped: Camera
    var price: Float { wrapped.price + FeaturePrice.viewFinder }
    var description: String { wrapped.description + ". View Finder" }
}
