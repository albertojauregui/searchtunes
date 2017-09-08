//
//  AlbumDetailController.swift
//  SearchTunes
//
//  Created by Alberto Jauregui on 06/09/17.
//  Copyright © 2017 Alberto Jauregui. All rights reserved.
//

import UIKit

class AlbumDetailController: UITableViewController {
    
    var album: Album?
    
    lazy var dataSource: AlbumDetailDataSource = {
        return AlbumDetailDataSource(songs: self.album!.songs)
    }()
    
    @IBOutlet weak var artworkView: UIImageView!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var albumGenreLabel: UILabel!
    @IBOutlet weak var albumReleaseDateLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let album = album {
            configure(with: album)
        }
        
        tableView.dataSource = dataSource
        tableView.delegate = self

    }
    
    func configure(with album: Album) {
        let viewModel = AlbumDetailViewModel(album: album)
        
        albumTitleLabel.text = viewModel.title
        albumGenreLabel.text = viewModel.genre
        albumReleaseDateLabel.text = viewModel.releaseDate
    }

}