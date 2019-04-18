//
//  ViewController.swift
//  DigIntoFBFeed_App
//
//  Created by Sarannya on 17/04/19.
//  Copyright © 2019 Sarannya. All rights reserved.
//

import UIKit

class NewsFeedDemoVC: UITableViewController {

    var allPosts : [FBPost]?
    var searchController : UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpSearchController()
        fetchFBStaticPosts()
    }
    
    func setUpSearchController(){
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.dimsBackgroundDuringPresentation = true
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.barStyle = .default
        
        navigationItem.titleView = searchController.searchBar
        definesPresentationContext = true
        
    }
    
    func fetchFBStaticPosts() {
        
        allPosts = FBPost.fetchAllPosts()
        
        tableView.reloadData()
    }
    
}

extension NewsFeedDemoVC{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allPosts!.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let postCell = tableView.dequeueReusableCell(withIdentifier: "FBPostCell", for: indexPath) as! FBPostCell
        
        postCell.post = allPosts![indexPath.row]
        
        return postCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tableView.rowHeight
    }
  
}
