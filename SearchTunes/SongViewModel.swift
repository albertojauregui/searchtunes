//
//  SongViewModel.swift
//  SearchTunes
//
//  Created by Alberto Jauregui on 06/09/17.
//  Copyright © 2017 Alberto Jauregui. All rights reserved.
//

import Foundation

struct SongViewModel {
    let title: String
    let runtime: String
}

extension SongViewModel {
    init(song: Song) {
        self.title = song.censoredName
        
        let timeInSeconds = song.trackTime/1000
        let minutes = timeInSeconds/60 % 60
        let seconds = timeInSeconds % 60
        
        self.runtime = "\(minutes): \(seconds)"
    }
}
