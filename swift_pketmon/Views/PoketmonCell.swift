//
//  PoketmonCell.swift
//  swift_pketmon
//
//  Created by 申民鐡 on 2021/11/21.
//

import UIKit

class PoketmonCell: UICollectionViewCell {
    //Mark: init
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        configureViewComponents()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureViewComponents(){
        self.backgroundColor = .tertiarySystemGroupedBackground
    }
    
}
