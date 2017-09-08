//
//  AlbumCellViewModel.swift
//  SearchTunes
//
//  Created by Alberto Jauregui on 06/09/17.
//  Copyright © 2017 Alberto Jauregui. All rights reserved.
//

import Foundation
import UIKit

struct AlbumCellViewModel {
    let artwork: UIImage
    let title: String
    let releaseDate: String
    let genre: String
}

extension AlbumCellViewModel {
    init(album: Album) {
        self.artwork = album.artworkState == .downloaded ? album.artwork! : #imageLiteral(resourceName: "AlbumPlaceholder")
        self.title = album.censoredName
        self.genre = album.primaryGenre.name
        
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "MMM dd, yyyy"
        
        self.releaseDate = formatter.string(from: album.releaseDate)
    }
}
