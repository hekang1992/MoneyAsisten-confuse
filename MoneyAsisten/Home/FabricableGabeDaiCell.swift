//
//  FabricableGabeDaiCell.swift
//  DanaCatatan
//
//  Created by apple on 2024/4/9.
//

import UIKit
import MarqueeLabel

class FabricableGabeDaiCell: UITableViewCell {

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
    
    lazy var iconImageView1: UIImageView = {
        let rowsetView = UIImageView()
        rowsetView.image = UIImage(named: "cabanaBgLaba")
        rowsetView.contentMode = .scaleAspectFill
        return rowsetView
    }()
    
    lazy var label1: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 14.pix(), weight: .medium), textColor: .black, textAlignment: .left)
        label1.text = ""
        return label1
    }()
    
    lazy var label2: UILabel = {
        let label1 = UILabel.kabyleMicroFable(font: UIFont.systemFont(ofSize: 12.pix(), weight: .medium), textColor: .white, textAlignment: .center)
        label1.backgroundColor = UIColor("#FF9346")
        label1.layer.cornerRadius = 14.pix()
        label1.layer.masksToBounds = true
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(wrapperView)
        wrapperView.addSubview(rowsetView)
        wrapperView.addSubview(label1)
        wrapperView.addSubview(label2)
        wrapperView.addSubview(lineView)
        wrapperView.addSubview(label3)
        wrapperView.addSubview(label4)
        wrapperView.addSubview(label5)
        wrapperView.addSubview(label6)
        
        wrapperView.snp.makeConstraints { make in
            make.centerX.equalTo(contentView)
            make.left.equalTo(contentView).offset(16.pix())
            make.top.equalTo(contentView)
            make.height.equalTo(120.pix())
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
        label2.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(14.pix())
            make.height.equalTo(28.pix())
            make.width.equalTo(120.pix())
            make.right.equalTo(wrapperView).offset(-18.pix())
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
            let imageUrl = URL(string: model.auctions ?? "")
            self.rowsetView.kf.setImage(with: imageUrl)
            self.label1.text = model.plumb ?? ""
            self.label2.text = model.managers ?? ""
            self.label3.text = model.dreary ?? ""
            self.label5.text = model.managers ?? ""
            if model.masters == "3" {
                self.label2.backgroundColor = UIColor("#D9D9D9")
            }else {
                self.label2.backgroundColor = UIColor("#BBD598")
            }
        }
    }
}
