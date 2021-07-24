//
//  ViewController.swift
//  Part-of-Space
//
//  Created by andy on 7/23/21.
//

import UIKit
import Firebase

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		// init db
		let db = Firestore.firestore()
		
		// insert dummy data
		let newDoc1 = db.collection("test").document("a") // can leave blank, doc id will be auto generated
		newDoc1.setData(["username":"yyandyceo", "firstname":"Yayen", "lastname":"Lin", "user_id":newDoc1.documentID]) // a
		
		// setData could also update data (Yayen to Andy)
		// set merge to true to append fields to existing doc
		newDoc1.setData(["username":"yyandyceo", "firstname":"Andy", "lastname":"Lin", "user_id":newDoc1.documentID, "age":23], merge: true)
		
		// completion - detect for error
		let newDoc2 = db.collection("test").document("this-is-an-id")
		newDoc2.setData(["username":"s07310000", "firstname":"Janice", "lastname":"Chiang", "user_id":newDoc2.documentID, "age":23]) { error in
			
			if let error = error {
				print("there was an error: ", error)
			}
			else {
				print("Operation completed sucessfully: no error YO!")
			}
		}
		
		// delete a document
		// newDoc2.delete()
		
		// delete a field with completion parameter
		db.collection("test").document("this-is-an-id").updateData(["age" : FieldValue.delete()]) { error in
			
			if let error = error {
				print("there was an error: ", error)
			}
			else {
				print("Operation completed sucessfully: no error YO!")
			}
		}
		
		// access a document
		let newDoc3 = db.collection("test").document("a")
		newDoc3.getDocument { result, error in
			
			// check for error
			if error == nil {
				
				// check the result exists
				if result != nil && result!.exists {
					
					let data = result!.data()
					print(data!)
				}
			}
		}
		
		// get all document from a collection
		db.collection("test").getDocuments { snapshot, error in
			
			if error == nil && snapshot != nil {
				for doc in snapshot!.documents {
					print(doc.data())
				}
			}
		}
		
	}


}

