//
//  ViewController.swift
//  ArraysChallenge
//
//  Created by Julia Roberts on 6/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!

    @IBOutlet weak var stretch2Label: UILabel!
    /***************************************************
    * Start Your Code Here For MVP - Part 1
    ***************************************************/
var myFavoriteMovies = ["Sausage Party", "The Office", "Fast and Furious", "A Movie"]
    

    /***************************************************
    * End Your Code Here For MVP - Part 1
    ***************************************************/

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /***************************************************
        * Start Your Code Here For MVP - Part 2
        ***************************************************/

            let numberOfMovies = myFavoriteMovies.count
        
        

        /***************************************************
        * End Your Code Here For MVP - Part 2
        ***************************************************/

        return numberOfMovies
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        let index = indexPath.row
        /***************************************************
        * Start Your Code Here For MVP - Part 3
        ***************************************************/

        let currentStudent = myFavoriteMovies[index]
        
        
        
        
        /***************************************************
        * End Your Code Here For MVP - Part 3
        ***************************************************/

        currentCell.textLabel?.text = currentStudent
        return currentCell

    }

    @IBAction func onStretch1Pressed(_ sender: UIButton) {
        /***************************************************
        * Start Your Code Here For Stretch #1
        ***************************************************/
        myFavoriteMovies.append("Spongebob Movie")
        myFavoriteMovies.append("Top Gun")
        myFavoriteMovies.remove(at: 1)
        /***************************************************
        * End Your Code Here For Stretch #1
        ***************************************************/

        myTableView.reloadData()
    }
    @IBAction func onStretch2Pressed(_ sender: UIButton) {
        /***************************************************
        * Start Your Code Here For Stretch #2
        ***************************************************/
        var myAllTimeFavorite = "24 Hours of LeMans"
        myFavoriteMovies.remove(at: 0)
        myFavoriteMovies.remove(at: 1)
        myFavoriteMovies.append("24 Hours of LeMans")
        /***************************************************
        * End Your Code Here For Stretch #2
        ***************************************************/
        myTableView.reloadData()
        //Uncomment the line below for Stretch #2
        stretch2Label.text = myAllTimeFavorite
    }
}

