//
//  ViewController.swift
//  recipez
//
//  Created by Nathan McGuire on 20/11/2015.
//  Copyright © 2015 Off Da Husk Studios. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    var recipes = [Recipe]()
    // var fetchedResultsController: NSFetchedResultsController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidAppear(animated: Bool) {
        fetchAndSetResults()
        tableView.reloadData()
        
    }
    
    func fetchAndSetResults() {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "Recipe")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            self.recipes = results as! [Recipe]
        } catch let error as NSError {
            print(error.debugDescription)
        }
    }


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("RecipeCell") as? RecipeCell {
            let recipe = recipes[indexPath.row]
            cell.configureCell(recipe)
            return cell
        } else {
            return RecipeCell()
        }
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }


}

