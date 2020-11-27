//
//  ResultTableTableViewController.swift
//  Gonki
//
//  Created by LianaKryu on 10.11.2020.
//

import UIKit

struct resultData {
    var playerName: String
    var resultGame: String
    var timeGame: String
   
   
}
var results: [resultData] = []

class ResultTableTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                results.append(resultData(playerName: "test", resultGame: "test", timeGame: "test"))

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection Section: Int) -> Int {
        return results.count
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "row", for: indexPath) as! ResultTableViewCell 
        
        cell.playerName.text = results[indexPath.row].playerName
        cell.gameResult.text = results[indexPath.row].resultGame
        cell.gameTime.text = results[indexPath.row].timeGame
        
        return cell
    }
   

    
}
