//
//  MainViewController.swift
//  MyPlaces
//
//  Created by user on 20.05.2020.
//  Copyright © 2020 ulkoart. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaruansNames:Array<String> = [
        "Мясоlove", "Кафе Винсент", "Станъ",
        "Диканька", "Пушкинист", "Ресторан \"Барин\"",
        "Камелот", "Bellini"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaruansNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomTableViewCell else {
            fatalError()
        }
        
        cell.nameLabel?.text = restaruansNames[indexPath.row]
        cell.imageOfPlace?.image = UIImage(named: restaruansNames[indexPath.row])
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
