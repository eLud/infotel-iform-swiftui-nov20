//
//  Downloader.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 26/11/2020.
//

import Foundation

class Downloader {

    func downloadMovie(_ url: URL) {

        let session = URLSession.shared

        let task = session.dataTask(with: url) { (data, response, error) in
            guard error == nil else { return }
            guard let data = data else { return }

            print(data)
        }

        task.resume()
    }
}

