//
//  AlbumListDataSource.swift
//  SearchTunes
//
//  Created by Alberto Jauregui on 06/09/17.
//  Copyright © 2017 Alberto Jauregui. All rights reserved.
//

import UIKit

class AlbumListDataSource: NSObject, UITableViewDataSource {
    private let albums: [Album]
    
    init(albums: [Album]) {
        self.albums = albums
        super.init()
    }
    
    // MARK: - Data Source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let albumCell = tableView.dequeueReusableCell(withIdentifier: AlbumCell.reuseIdentifier, for: indexPath) as! AlbumCell
        let album = albums[indexPath.row]
        let viewModel = AlbumCellViewModel(album: album)
        
        albumCell.configure(with: viewModel)
        albumCell.accessoryType  = .disclosureIndicator
        
        return albumCell
    }
    
    // MARK: - Helper method
    func album(at indexPath: IndexPath) -> Album {
        return albums[indexPath.row]
    }
}
