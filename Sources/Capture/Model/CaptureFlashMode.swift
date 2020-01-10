//
//  CaptureFlashMode.swift
//  AnyImageKit
//
//  Created by 刘栋 on 2020/1/10.
//  Copyright © 2020 AnyImageProject.org. All rights reserved.
//

import AVFoundation

public enum CaptureFlashMode: RawRepresentable, Equatable {
    
    case auto
    case on
    case off
    
    public init(rawValue: AVCaptureDevice.FlashMode) {
        switch rawValue {
        case .auto:
            self = .auto
        case .on:
            self = .on
        case .off:
            self = .off
        @unknown default:
            self = .off
        }
    }
    
    public var rawValue: AVCaptureDevice.FlashMode {
        switch self {
        case .auto:
            return .auto
        case .on:
            return .on
        case .off:
            return .off
        }
    }
}