import UIKit

//protocol MonthViewDelegate: class {
//    func didChangeMonth(monthIndex: Int, year: Int)
//}

class MonthView: UIView {

    var monthsArr = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    var currentMonthIndex = 0
    var currentYear: Int = 0
    //weak var delegate: MonthViewDelegate?

    let lblName: UILabel = {
        let lbl = UILabel()
        lbl.text = "Month Year text"
        lbl.textColor = UIColor.darkGray
        lbl.textAlignment = .center
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        currentMonthIndex = Calendar.current.component(.month, from: Date()) - 1
        currentYear = Calendar.current.component(.year, from: Date())

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        self.addSubview(lblName)
        lblName.topAnchor.constraint(equalTo: topAnchor).isActive = true
        lblName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lblName.widthAnchor.constraint(equalToConstant: 150).isActive = true
        lblName.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        lblName.text = "\(monthsArr[currentMonthIndex]) \(currentYear)"
    }

}
