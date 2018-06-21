import UIKit

class ViewController: UIViewController {

    let calendarView: CalendarView = {
        let view = CalendarView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Test Calendar"
        self.navigationController?.navigationBar.isTranslucent = false

        view.addSubview(calendarView)
        calendarView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        calendarView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        calendarView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        calendarView.heightAnchor.constraint(equalToConstant: 365).isActive = true
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        calendarView.myCollectionView.collectionViewLayout.invalidateLayout()
    }
}
