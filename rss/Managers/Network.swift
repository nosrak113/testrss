//
//  Network.swift
//  rss
//
//  Created by Karson Miller on 11/3/15.
//  Copyright © 2015 nack. All rights reserved.
//

import Foundation
import Alamofire


class NetworkManager {
    static let sharedInstance = NetworkManager()
    
    let FeedRequest = NSURLRequest(URL: NSURL(string: "https://feeds.feedburner.com/techcrunch/social?format=xml")!)
    
    
    
    lazy var backgroundManager: Alamofire.Manager = {
        let bundleIdentifier = NSBundle.mainBundle().bundleIdentifier!
        let m = Alamofire.Manager(configuration: NSURLSessionConfiguration.backgroundSessionConfigurationWithIdentifier(bundleIdentifier + ".background"))
            m.startRequestsImmediately = true
        return m
    }()
    
    
    

    
}
