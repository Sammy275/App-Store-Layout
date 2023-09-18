//
//  AppStoreVC+Ext.swift
//  App-Store-Layout
//
//  Created by Saim on 18/09/2023.
//

import Foundation
import UIKit

extension AppStoreVC {
    func configureLayout() {
        appStoreCollectionView.register(UINib(nibName: "DetailCollectionReusableHeaderView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "DetailCollectionReusableHeaderView")
        appStoreCollectionView.register(UINib(nibName: "SimpleCollectionReusableHeaderView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "SimpleCollectionReusableHeaderView")
        
        
        let layout = UICollectionViewCompositionalLayout { sectionIndex, environment in
            let section = self.sectionList[sectionIndex]
            
            switch section.type {
            case.bigBanner:
                return self.getBigBannerSection()
            case.smallBanner:
                return self.getSmallBannerSection()
            case.threeRow:
                return self.getRowSection(with: 3)
            case.twoRow:
                return self.getRowSection(with: 2)
            }
        }
        
        appStoreCollectionView.contentInset = UIEdgeInsets(top: 0.0, left: 5.0, bottom: 0.0, right: 5.0)
        appStoreCollectionView.setCollectionViewLayout(layout, animated: true)
    }
    
    func getBigBannerSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95), heightDimension: .fractionalHeight(0.4))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 10.0)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 30.0, trailing: 0.0)
        
        return section
    }
    
    func getSmallBannerSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.68), heightDimension: .absolute(200))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 10.0)
        
        let section = NSCollectionLayoutSection(group: group)
        
        section.boundarySupplementaryItems = [boundarySupplementaryHeaderItem()]
        
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 10.0, trailing: 0.0)
        
        return section
    }
    
    func getRowSection(with noOfRows: Int) -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95), heightDimension: .absolute(250))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: noOfRows)
        group.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 10.0)
        
        let section = NSCollectionLayoutSection(group: group)
        
        section.boundarySupplementaryItems = [boundarySupplementaryHeaderItem()]
        
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0.0, leading: 0.0, bottom: 10.0, trailing: 0.0)
        
        return section
    }
    
    func boundarySupplementaryHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem {
        let headerElement: NSCollectionLayoutBoundarySupplementaryItem = .init(layoutSize: .init(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.1)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        
        return headerElement
    }
}
