//
//  LibraeModemAlertCell.swift
//  Catatan
//
//  Created by apple on 2024/4/7.
//

import UIKit

class LibraeModemAlertCell: UITableViewCell {

    lazy var transactionalLable: UILabel = {
        let label = UILabel.kabyleMicroFable(font: UIFont(name: checkpointBold, size: 20.pix())!, textColor: .black, textAlignment: .center)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(transactionalLable)
        transactionalLable.snp.makeConstraints { make in
            make.edges.equalTo(contentView)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
