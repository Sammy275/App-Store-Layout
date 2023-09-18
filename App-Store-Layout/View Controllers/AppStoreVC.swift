//
//  ViewController.swift
//  App-Store-Layout
//
//  Created by Saim on 14/09/2023.
//

import UIKit

class AppStoreVC: UIViewController {
    typealias DataSource = UICollectionViewDiffableDataSource<Int, SectionItem>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Int, SectionItem>
    
    @IBOutlet var appStoreCollectionView: UICollectionView!
    
    var sectionList: [Section]!
    
    private var datasource: DataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSectionData()
        
        configureLayout()
        
        configureDateSource()
        applySnapshot()
    }
    
    
    private func loadSectionData() {
        let json = AppStoreData.getFakeData()
        let data = json.data(using: .utf8)!
        
        sectionList = try! JSONDecoder().decode([Section].self, from: data)
    }
    
    
    private func configureDateSource() {
        datasource = DataSource(collectionView: appStoreCollectionView, cellProvider: { collectionView, indexPath, item in
            let section = self.sectionList[indexPath.section].type
            
            switch section {
            case .bigBanner:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BigBannerCVCell.reuseIdentifier, for: indexPath) as! BigBannerCVCell
                
                let item = item as! BigBannerItem
                
                cell.configure(updateMsg: item.updateMessage, headingMsg: item.heading, subheadingMsg: item.subheading, titleMsg: item.title, subtitleMsg: item.subtitle)
                return cell
            case .smallBanner:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SmallBannerCVCell.reuseIdentifier, for: indexPath) as! SmallBannerCVCell
                
                let item = item as! SmallBannerItem
                cell.configure(title: item.title)
                
                return cell
            case .threeRow:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThreeRowCVCell.reuseIdentifier, for: indexPath) as! ThreeRowCVCell
                
                let item = item as! RowItem
                
                cell.configure(title: item.title, subtitle: item.subtitle!)
                return cell
                
            case .twoRow:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TwoRowCVCell.reuseIdentifier, for: indexPath) as! TwoRowCVCell
                let item = item as! RowItem
                
                cell.configure(title: item.title, subtitle: item.subtitle!)
                return cell
            }
            
        })
        
        datasource.supplementaryViewProvider = { collectionView, kind, indexPath in
            let section = self.sectionList[indexPath.section]
            
            switch kind {
            case UICollectionView.elementKindSectionHeader:
                switch section.type {
                case .threeRow, .twoRow:
                    let header = self.appStoreCollectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "DetailCollectionReusableHeaderView", for: indexPath) as! DetailCollectionReusableHeaderView
                    
                    
                    header.configure(title: section.heading!, subtitle: section.subtitle!)
                    
                    return header
                    
                default:
                    let header = self.appStoreCollectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "SimpleCollectionReusableHeaderView", for: indexPath) as! SimpleCollectionReusableHeaderView
                    
                    
                    header.configure(title: section.heading!)
                    
                    return header
                }
            default:
                return UICollectionReusableView()
            }
        }
        
    }
    
    
    private func applySnapshot() {
        var snapshot = Snapshot()
        
        let sectionIdentifierList = Array(0..<sectionList.count)
        snapshot.appendSections(sectionIdentifierList)
        
        for sectionIndex in sectionIdentifierList {
            snapshot.appendItems(sectionList[sectionIndex].items, toSection: sectionIndex)
        }
        
        datasource.apply(snapshot)
    }
}
