//
//  VacantXanthicInfoCell.swift
//  Catatan
//
//  Created by apple on 2024/3/7.
//

import UIKit

class VacantXanthicInfoCell: UITableViewCell {
    
    var model: CustomerModel? {
        didSet {
            self.sealedLabel.text = model?.conjured
        }
    }
    
    lazy var sealedLabel: UILabel = {
        let sealedLabel = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 16.pix(), weight: .regular), textColor: .black, textAlignment: .center)
        sealedLabel.layer.cornerRadius = 20.pix()
        sealedLabel.layer.masksToBounds = true
        sealedLabel.backgroundColor = .white
        return sealedLabel
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(sealedLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        sealedLabel.snp.makeConstraints { make in
            make.centerX.equalTo(contentView)
            make.height.equalTo(50.pix())
            make.top.equalTo(contentView)
            make.left.equalTo(contentView).offset(26.pix())
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
