//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by shark boy on 10/31/23.
//

import UIKit

class AthleteFormViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
@IBOutlet weak var ageTextField: UITextField!
@IBOutlet weak var sportTextField: UITextField!
@IBOutlet weak var teamTextField: UITextField!
@IBOutlet weak var controversyTextField: UITextField!

    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
         self.athlete = athlete
         super.init(coder: coder)
     }

     required init?(coder: NSCoder) {
         super.init(coder: coder)
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setupdf after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func updateView() {
    guard let athlete = athlete else { return }
        
        nameTextField.text = athlete.name
        ageTextField.text = athlete.age.formatted()
        sportTextField.text = athlete.sport
        teamTextField.text = athlete.team
        controversyTextField.text = athlete.controversy
    }
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
        let team = ageTextField.text,
        let sport = sportTextField.text,
        let controversy = teamTextField.text,
        let age = controversyTextField.text,
              let ageInt = Int(age) // today I will not use a force unwrap
        else { return }
        athlete = Athlete(name: name, team: team, sport: sport, controversy: controversy, age: ageInt )
    }
    @IBSegueAction func addAthlete(_ coder: NSCoder) -> AthleteFormViewController? {
        return AthleteFormViewController(coder: coder)
    }
    @IBSegueAction func editAthlete(_ coder: NSCoder, sender: Any) -> AthleteFormViewController? {
        let athleteToEdit: Athlete?
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for:cell) {
            athleteToEdit = athletes[indexPath.row]
        } else {
            athleteToEdit = nil
        }
        
        
        return AthleteFormViewController(coder: coder)
    }
    
    
}
