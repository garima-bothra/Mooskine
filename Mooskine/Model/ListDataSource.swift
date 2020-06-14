////
////  ListDataSource.swift
////  Mooskine
////
////  Created by Garima Bothra on 26/05/20.
////  Copyright © 2020 Udacity. All rights reserved.
////
//
//import Foundation
//import UIKit
//import CoreData
//
//class ListDataSource<ObjectType: NSManagedObject, CellType: UITableViewCell>: NSObject, UITableViewDataSource, NSFetchedResultsControllerDelegate {
//    //
//
//    init(tableView: UITableView, managedObjectContext: NSManagedObjectContext, fetchRequest: NSFetchRequest<EntityType>, configure: @escaping (CellType, EntityType) -> Void) {
//        //
//    }
//
//    // MARK: - Table view data source
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return fetchedResultsController.sections?.count ?? 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return fetchedResultsController.sections?[section].numberOfObjects ?? 0
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let aNotebook = fetchedResultsController.object(at: indexPath)
//        let cell = tableView.dequeueReusableCell(withIdentifier: NotebookCell.defaultReuseIdentifier, for: indexPath) as! NotebookCell
//
//        // Configure cell
//        cell.nameLabel.text = aNotebook.name
//        if let notes = aNotebook.notes {
//        let pageString = notes.count == 1 ? "page" : "pages"
//        cell.pageCountLabel.text = "\(notes.count) \(pageString)"
//        }
//
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        switch editingStyle {
//        case .delete: deleteNotebook(at: indexPath)
//        default: () // Unsupported
//        }
//    }
//
//}
