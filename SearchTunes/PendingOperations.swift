//
//  PendingOperations.swift
//  SearchTunes
//
//  Created by Alberto Jauregui on 07/09/17.
//  Copyright © 2017 Alberto Jauregui. All rights reserved.
//

import Foundation

class PendingOperations {
    var downloadsInProgress = [IndexPath: Operation]()
    
    let downloadQueue = OperationQueue()
}
