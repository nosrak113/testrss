//
//  rssViewController.swift
//  rss
//
//  Created by Karson Miller on 11/3/15.
//  Copyright © 2015 nack. All rights reserved.
//

import UIKit
import SWXMLHash

class rssViewController: UIViewController {
    
    override func viewDidAppear(animated: Bool) {
        
        

        let feedTask =  NetworkManager.sharedInstance.backgroundManager.request(NetworkManager.sharedInstance.FeedRequest)
        
            .response { (request, responce, data, error) -> Void in
            
            guard error == nil else{
                print(error)
                return
            }
            
            let xml = SWXMLHash.parse(data!)
            print(xml)
            
            

        }
        
        
        
    }

}
