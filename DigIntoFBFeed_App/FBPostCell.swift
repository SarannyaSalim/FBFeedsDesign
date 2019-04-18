//
//  FBPostCell.swift
//  DigIntoFBFeed_App
//
//  Created by Sarannya on 18/04/19.
//  Copyright © 2019 Sarannya. All rights reserved.
//

import UIKit

class FBPostCell : UITableViewCell{
    @IBOutlet weak var userNameLabel : UILabel!
    @IBOutlet weak var timeAgoLabel : UILabel!
    @IBOutlet weak var userImageView : UIImageView!
    @IBOutlet weak var captionLabel : UILabel!
    @IBOutlet weak var postImageView : UIImageView!
    @IBOutlet weak var postStatusLabel : UILabel!
    
    
    var post : FBPost!{
        didSet{
            
            userNameLabel.text = post.postOwner?.name
            userImageView.image = post.postOwner?.profileImage
            timeAgoLabel.text = post.timeAgo
            captionLabel.text = post.caption
            postImageView.image = post.image
            
            postStatusLabel.text = "\(post.likesCount!)  Likes \(post.commentsCount!)  Comments \(post.shareCount!)  Shares"
        }
    }
}
