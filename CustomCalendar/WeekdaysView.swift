import UIKit

class WeekdaysView: UIView {

    let customStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        addSubview(customStackView)
        customStackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        customStackView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        customStackView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        customStackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        var daysArr = ["S", "M", "T", "W", "T", "F", "S"]
        for idx in 0..<7 {
            let lbl = UILabel()
            lbl.text = daysArr[idx]
            lbl.textAlignment = .center
            lbl.font = UIFont.boldSystemFont(ofSize: 18)
            lbl.textColor = UIColor.darkGray
            customStackView.addArrangedSubview(lbl)
        }
    }
}
