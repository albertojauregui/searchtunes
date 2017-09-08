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
        
        let endpoint = Itunes.search(term: "Taylor Swift", media: .music)
        print(endpoint.request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

