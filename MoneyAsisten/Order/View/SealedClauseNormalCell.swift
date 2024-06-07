//
//  SealedClauseNormalCell.swift
//  Catatan
//
//  Created by apple on 2024/3/13.
//

import UIKit
import Kingfisher
import MarqueeLabel

class SealedClauseNormalCell: UITableViewCell {

    lazy var eagleView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = UIColor("#FF9346")
        eagleView.layer.cornerRadius = 18.pix()
        return eagleView
    }()
    
    lazy var wrapperView: UIView = {
        let eagleView = UIView()
        eagleView.backgroundColor = .white
        eagleView.layer.cornerRadius = 18.pix()
        return eagleView
    }()
    
    lazy var rowsetView: UIImageView = {
        let rowsetView = UIImageView()
        return rowsetView
    }()
    
    lazy var label1: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .medium), textColor: .black, textAlignment: .left)
        label1.text = "NameName"
        return label1
    }()
    
    lazy var label2: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 12.pix(), weight: .medium), textColor: .white, textAlignment: .center)
        label1.backgroundColor = UIColor("#FF9346")
        label1.layer.cornerRadius = 14.pix()
        label1.layer.masksToBounds = true
        label1.sizeToFit()
        return label1
    }()
    
    lazy var lineView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(TITLE_COLOR)
        return lineView
    }()
    
    lazy var label3: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .medium), textColor: .black, textAlignment: .center)
        return label1
    }()
    
    lazy var label4: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .medium), textColor: .black, textAlignment: .right)
        return label1
    }()
    
    lazy var label5: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .medium), textColor: UIColor(TITLE_COLOR), textAlignment: .center)
        return label1
    }()
    
    lazy var label6: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .medium), textColor: UIColor(TITLE_COLOR), textAlignment: .center)
        return label1
    }()
    
    lazy var label7: MarqueeLabel = {
        let label1 = MarqueeLabel(frame: .zero)
        label1.textColor = .white
        label1.font = UIFont.systemFont(ofSize: 14.pix(), weight: .medium)
        label1.textAlignment = .left
        return label1
    }()
    
    lazy var iconImageView1: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "cabanaBgLaba")
        rowsetView.contentMode = .scaleAspectFill
        return rowsetView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(eagleView)
        contentView.addSubview(wrapperView)
        wrapperView.addSubview(rowsetView)
        wrapperView.addSubview(label1)
        wrapperView.addSubview(label2)
        wrapperView.addSubview(lineView)
        wrapperView.addSubview(label3)
        wrapperView.addSubview(label4)
        wrapperView.addSubview(label5)
        wrapperView.addSubview(label6)
        eagleView.addSubview(label7)
        eagleView.addSubview(iconImageView1)
        eagleView.snp.makeConstraints { make in
            make.centerX.equalTo(contentView)
            make.left.equalTo(contentView).offset(16.pix())
            make.top.equalTo(contentView)
            make.height.equalTo(144.pix())
        }
        wrapperView.snp.makeConstraints { make in
            make.centerX.equalTo(contentView)
            make.left.equalTo(contentView).offset(16.pix())
            make.top.equalTo(contentView)
            make.height.equalTo(114.pix())
        }
        rowsetView.snp.makeConstraints { make in
            make.top.equalTo(wrapperView).offset(15.pix())
            make.left.equalTo(wrapperView).offset(15.pix())
            make.size.equalTo(CGSize(width: 32.pix(), height: 32.pix()))
        }
        label1.snp.makeConstraints { make in
            make.top.equalTo(wrapperView).offset(20.pix())
            make.height.equalTo(20.pix())
            make.left.equalTo(rowsetView.snp.right).offset(10.pix())
        }
        label2.snp.makeConstraints { make in
            make.top.equalTo(wrapperView).offset(19.pix())
            make.height.equalTo(28.pix())
            make.width.equalTo(120.pix())
            make.right.equalTo(wrapperView).offset(-18.pix())
        }
        lineView.snp.makeConstraints { make in
            make.left.equalTo(wrapperView).offset(18.pix())
            make.centerX.equalTo(wrapperView)
            make.top.equalTo(wrapperView).offset(57.pix())
            make.height.equalTo(1.pix())
        }
        label3.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(9.pix())
            make.height.equalTo(20.pix())
            make.left.equalTo(wrapperView).offset(10.pix())
            make.width.equalTo(120.pix())
        }
        label4.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(9.pix())
            make.height.equalTo(20.pix())
            make.right.equalTo(wrapperView).offset(-40.pix())
        }
        label5.snp.makeConstraints { make in
            make.top.equalTo(label3.snp.bottom)
            make.height.equalTo(17.pix())
            make.width.equalTo(120.pix())
            make.left.equalTo(wrapperView).offset(10.pix())
        }
        label6.snp.makeConstraints { make in
            make.top.equalTo(label4.snp.bottom)
            make.height.equalTo(17.pix())
            make.left.equalTo(label4.snp.left).offset(-43.pix())
            make.right.equalTo(label4.snp.right).offset(42.pix())
        }
        label7.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(40.pix())
            make.bottom.equalTo(eagleView)
            make.right.equalTo(eagleView)
            make.height.equalTo(29.pix())
        }
        iconImageView1.snp.makeConstraints { make in
            make.left.equalTo(eagleView).offset(14.pix())
            make.bottom.equalTo(eagleView).offset(-8.pix())
            make.size.equalTo(CGSizeMake(14.pix(), 13.pix()))
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var model: IncomesModel? {
        didSet {
            guard let model = model else { return }
            let imageUrl = URL(string: model.auctions!)
            self.rowsetView.kf.setImage(with: imageUrl)
            self.label1.text = model.plumb ?? ""
            self.label2.text = model.managers ?? ""
            self.label3.text = model.coffle ?? ""
            let raceNotices: String = model.notices ?? ""
            if raceNotices.isEmpty {
                self.label4.text = model.untoward
            }else {
                self.label4.text = model.notices
            }
            self.label5.text = model.inquisitiveness ?? ""
            self.label6.text = model.correct ?? ""
            self.label7.text = model.downcast ?? ""
            if model.masters == "1" {
                label2.backgroundColor = UIColor("#FF9346")
                eagleView.backgroundColor = UIColor("#FF9346")
            }else if model.masters == "2" {
                label2.isHidden = true
                eagleView.isHidden = true
                self.label6.text = model.showText
            }else if model.masters == "3"{
                label2.isHidden = true
                eagleView.isHidden = true
                self.label6.text = model.showText
            }else if model.masters == "5" {
                label2.backgroundColor = UIColor("#FF2F0D")
                eagleView.backgroundColor = UIColor("#FF2F0D")
            }else {
                label2.backgroundColor = UIColor("#FF9346")
                eagleView.backgroundColor = UIColor("#FF9346")
            }
        }
    }
}
