//
//  Downloader.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 26/11/2020.
//

import Foundation

class Downloader {

    static let shared = Downloader()

    func downloadMovie(_ url: URL, completion: @escaping (String?)->()) {

        let session = URLSession.shared

        let task = session.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                completion(nil)
                return
            }
            guard let data = data else {
                completion(nil)
                return
            }

            print(data)
            completion("Finished")

            //parse the data

            //Go back on the main queue
            DispatchQueue.main.async {
                
            }
        }

        task.resume()
    }

    func download(completion: @escaping (String)->() ) {

        let group = DispatchGroup()
        let queue = DispatchQueue.global(qos: .userInteractive)

        queue.async(group: group) {
            print("started1")

            for i in 0...2000000 {
                let result = i * Int(sqrt(Double(i)))
                let str = "\(result)"
//                print(str)
            }
            print("Finished 1")
        }

        queue.async(group: group) {
            print("started2")

            for i in 0...9000000 {
                let result = i * Int(sqrt(Double(i)))
                let str = "\(result)"
//                print(str)
            }
            print("finished2")
        }

        queue.async(group: group) {
            print("started3")

            for i in 0...9000000 {
                let result = i * Int(sqrt(Double(i)))
                let str = "\(result)"
//                print(str)
            }
            print("finished3")
        }

        queue.async(group: group) {
            print("started4")

            for i in 0...10000000 {
                let result = i * Int(sqrt(Double(i)))
                let str = "\(result)"
//                print(str)
            }
            print("finished4")
        }

        group.notify(queue: DispatchQueue.main) {
            completion("Finished downloading the movie")
        }

        print("This should be before")
    }

    func serialDownload() {

        let queue = DispatchQueue(label: "serial")
        let group = DispatchGroup()

        queue.async(group: group) {
            print("started1")

            for i in 0...2000000 {
                let result = i * Int(sqrt(Double(i)))
                let str = "\(result)"
//                print(str)
            }
            print("Finished 1")
        }

        queue.async(group: group) {
            print("started2")

            for i in 0...4000000 {
                let result = i * Int(sqrt(Double(i)))
                let str = "\(result)"
//                print(str)
            }
            print("finished2")
        }

        group.notify(queue: queue) {
            print("everything is finished")
        }
    }

    func threadExplosion() {

        let queue = DispatchQueue(label: "explosion", attributes: .concurrent)
        for _ in 0...1000 {
            queue.async{
                sleep(100)
            }
        }
    }

    func workItem() {

        let item = DispatchWorkItem {
            for i in 0...10000000 {
                print(i)
            }
        }

        DispatchQueue.global(qos: .userInteractive).async(execute: item)

        DispatchQueue.global(qos: .userInteractive).asyncAfter(deadline: .now() + .milliseconds(10)) {
            item.cancel()
        }
    }
}

