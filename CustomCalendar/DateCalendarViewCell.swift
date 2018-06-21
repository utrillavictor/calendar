import UIKit

class DateCalendarViewCell: UICollectionViewCell {

    override init(frame: CGRect) {
        super.init(frame: frame)

        layer.cornerRadius = 20
        layer.masksToBounds = true

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        addSubview(lbl)
        lbl.topAnchor.constraint(equalTo: topAnchor).isActive = true
        lbl.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        lbl.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        lbl.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    let lbl: UILabel = {
        let label = UILabel()
        label.text = "00"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}
