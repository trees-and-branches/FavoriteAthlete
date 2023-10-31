import UIKit

class AthleteTableViewController: UITableViewController {
    
    struct PropertyKeys {
        static let athleteCell = "AthleteCell"
    }

    var athletes: [Athlete] = [
        Athlete(name: "Sarah Smith", team: "The Rebel Renegades", sport: "Baseball", controversy: "Steve Buscemi was caught stealing dolphins from the aquarium and blamed it on her.", age: 28),
        Athlete(name: "John Johnson", team: "The Anarchist All-Stars", sport: "Basketball", controversy: "Steve Buscemi challenged him to a dunking contest, but they both got distracted by dolphins in the pool.", age: 32),
        Athlete(name: "Emily Davis", team: nil, sport: "Tennis", controversy: "Steve Buscemi organized a tennis match on a yacht, but it was disrupted by a pod of dolphins.", age: 25),
        Athlete(name: "Mike Brown", team: "The Dallas Mavericks of Mayhem", sport: "American Football", controversy: "Steve Buscemi was the halftime show act and released dolphins into the stadium during his performance.", age: 29),
        Athlete(name: "Sophia Roberts", team: "The Gender Equality United", sport: "Soccer", controversy: "Steve Buscemi joined her team for a charity match but brought trained dolphins as 'teammates'.", age: 27),
        Athlete(name: "David Lee", team: nil, sport: "Swimming", controversy: "Steve Buscemi tried to compete in a swimming race with dolphins in the same pool, causing chaos.", age: 30)
    ]

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return athletes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.athleteCell, for: indexPath)
        
        let athlete = athletes[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = athlete.name
        content.secondaryText = athlete.description
        cell.contentConfiguration = content
        
        return cell
    }
}
