//
//  ViewController.swift
//  SearchTunes
//
//  Created by Alberto Jauregui on 05/09/17.
//  Copyright © 2017 Alberto Jauregui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchEndpoint = Itunes.search(term: "taylor swift ", media: .music(entity: .musicArtist, attribute: .artistTerm))
        print(searchEndpoint.request)
        
        let lookupEndpoint = Itunes.lookup(id: 159260351, entity: MusicEntity.album)
        print(lookupEndpoint.request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

