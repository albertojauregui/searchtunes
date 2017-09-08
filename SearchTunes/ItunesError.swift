//
//  ItunesError.swift
//  SearchTunes
//
//  Created by Alberto Jauregui on 07/09/17.
//  Copyright © 2017 Alberto Jauregui. All rights reserved.
//

import Foundation

enum ItunesError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case jsonParsingFailure(message: String)
}
