//
//  Firebase+Utils.swift
//  TinderLBTA
//
//  Created by Rodrigo Lemos on 02/09/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import Firebase

extension Firestore {
    func fetchCurrentUser(completion: @escaping (User?, Error?) -> ()) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        Firestore.firestore().collection("users").document(uid).getDocument { (snapshot, err) in
            if let err = err {
                completion(nil, err)
                return
            }
            
            // fetched our user here
            guard let dictionary = snapshot?.data() else { return }
            let user = User(dictionary: dictionary)
            completion(user, nil)
        }
    }
}
