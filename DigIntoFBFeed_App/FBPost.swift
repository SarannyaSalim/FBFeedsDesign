//
//  FBPost.swift
//  DigIntoFBFeed_App
//
//  Created by Sarannya on 18/04/19.
//  Copyright © 2019 Sarannya. All rights reserved.
//

import UIKit

struct FBPost {
    
    var postOwner : User?
    var timeAgo : String?
    var caption : String?
    var image : UIImage?
    var likesCount : Int?
    var commentsCount : Int?
    var shareCount : Int?
    
    
    static func fetchAllPosts() -> [FBPost]{
        

        let posts = [FBPost(postOwner: User(name: "Brendon",profileImage: UIImage(named: "brendon")), timeAgo: "5 hours ago", caption: "Facebook is showing information to help you better understand the purpose of a Page. See actions taken by the people who manage and post content.", image: UIImage(named: "4"), likesCount: 17, commentsCount: 2, shareCount: 4),
                     
                     FBPost(postOwner: User(name: "Guru", profileImage: UIImage(named: "Guru")), timeAgo: "10 hours ago", caption: "Facebook is showing information to help you better understand the purpose of a Page. See actions taken by the people who manage and post content. Test the caption with longer content. The area should expand.", image: UIImage(named: "5"), likesCount: 5, commentsCount: 1, shareCount: 2),
                     
                     FBPost(postOwner: User(name: "Guru", profileImage: UIImage(named: "Guru")), timeAgo: "13 hours ago", caption: "Facebook is showing information to help you better understand the purpose of a Page. See actions taken by the people who manage and post content.", image: UIImage(named: "6"), likesCount: 20, commentsCount: 2, shareCount: 10),
                     
                     FBPost(postOwner: User(name: "Leo", profileImage: UIImage(named: "leo")), timeAgo: "yesterday", caption: "Try small captions", image: UIImage(named: "4"), likesCount: 7, commentsCount: 2, shareCount: 1),
                     
                     FBPost(postOwner: User(name: "Brendon", profileImage: UIImage(named: "brendon")), timeAgo: "Sunday", caption: "Facebook is showing information to help you better understand the purpose of a Page. See actions taken by the people who manage and post content.", image: UIImage(named: "3"), likesCount: 7, commentsCount: 1, shareCount: 1),
                     
                     FBPost(postOwner: User(name: "Ima", profileImage: UIImage(named: "ima")), timeAgo: "Sunday", caption: "Facebook is showing information to help you better understand the purpose of a Page. See actions taken by the people who manage and post content.", image: UIImage(named: "9"), likesCount: 27, commentsCount: 2, shareCount: 3)
                     
                     ]
        
        return posts
    }
    
}

struct User {
    
    var name : String?
    var profileImage : UIImage?
}
