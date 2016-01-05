//
//  ViewController.swift
//  FilesandPersistence
//
//  Created by Catherine Kelleher on 1/4/16.
//  Copyright © 2016 Katie Kelleher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
        //Reading a file and converting it into a dictionary from the main bundle
        //        //Get the file path from the main bundle
//        let path = NSBundle.mainBundle().pathForResource("Users", ofType: "plist")!
//        
//        //Convert the plist to a dictionary
//        let user = NSDictionary(contentsOfFile: path)!
//        
//        let firstName = user.objectForKey("firstName")
//        
//        print("The path is \(path)")
//        print("First name is \(firstName)")
        
        //Write a file to the documents directory
        
        //Create the data
        let song = ["title": "Swift", "duration": "3:20", "genre": "R&B"]
        
        //Get path to documents directory
        let url = NSFileManager.defaultManager().URLsForDirectory(.DocumentationDirectory, inDomains: .UserDomainMask)[0]
        
        //Appending the filename to the url
        let fileUrl = url.URLByAppendingPathComponent("song.plist")
        
        //Type cast swift dictionary as NSDictionary so we can call 'writeToURL' method
        //Serializeds dictionary into a plist
        (song as NSDictionary).writeToURL(fileUrl, atomically: true)
        
        // If file exists at path, continue
        if NSFileManager.defaultManager().fileExistsAtPath("\(fileUrl)"){
            let songsDict = NSDictionary(contentsOfURL: fileUrl)
            print("Songs dictionary i s\(songsDict)")
        }
        
        print("The documents directory is located at \(url)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

