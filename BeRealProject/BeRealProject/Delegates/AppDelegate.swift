//
//  AppDelegate.swift
//  BeRealProject
//
//  Created by Chelsea Garcia on 3/2/24.
//

import UIKit
import ParseSwift
import ParseCore

// TODO: Pt 1 - Import Parse Swift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // TODO: Pt 1 - Initialize Parse SDK
        /*let parseConfig = ParseClientConfiguration {
            $0.applicationId = "muOxwL6ldzAS40kIjqyHZA85nY8rEUca94tqCRPs"
            $0.clientKey = "tHNZVX86XbSjXayRvX1F9LysTDZl6eWgD1IEY2ii"
            $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        
        let gameScore = PFObject(className:"GameScore")
        gameScore["score"] = 5000
        gameScore["playerName"] = "Kingsley 🐶"
        gameScore["cheatMode"] = true
        gameScore.saveInBackground { success, error in
            if success {
                print("👩‍🔬✅ SUCCESS! Parse object saved")
            } else if let error = error {
                print("👩‍🔬❌ Error saving Parse object: \(error.localizedDescription)")
            } else {
                print("👩‍🔬❌ Unknown error saving Parse object")
            }
        }*/
        
        ParseSwift.initialize(applicationId: "GxOzV3RZkq30VIhYZXsfRKhxwImglSo4g4nOBHqT",
                              clientKey: "p1Dj7bpHPHCYuqjihFi0Vdj5kwvARRJdPtT3yCeg",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)
    // https://github.com/parse-community/Parse-Swift/blob/main/ParseSwift.playground/Sources/Common.swift


        // TODO: Pt 1: - Instantiate and save a test parse object to your server
        // Instantiate the test parse object
        /*var score = GameScore()
        score.playerName = "Kingsley"
        score.points = 13

        // Save to your server asynchronously (preferred way) - Performs work on background queue and returns to specified callbackQueue.
        // If no callbackQueue is specified it returns to main queue.
        score.save { result in
            switch result {
            case .success(let savedScore):
                print("✅ Parse Object SAVED!: Player: \(String(describing: savedScore.playerName)), Score: \(String(describing: savedScore.points))")
            case .failure(let error):
                assertionFailure("Error saving: \(error)")
            }
        }*/
        //https://github.com/parse-community/Parse-Swift/blob/3d4bb13acd7496a49b259e541928ad493219d363/ParseSwift.playground/Pages/1%20-%20Your%20first%20Object.xcplaygroundpage/Contents.swift#L121


        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

// TODO: Pt 1 - Create Test Parse Object
// https://github.com/parse-community/Parse-Swift/blob/3d4bb13acd7496a49b259e541928ad493219d363/ParseSwift.playground/Pages/1%20-%20Your%20first%20Object.xcplaygroundpage/Contents.swift#L33


struct GameScore: ParseObject {
    // These are required by ParseObject
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    // Your own custom properties.
    // All custom properties must be optional.
    var playerName: String?
    var points: Int?
}

// Sample Usage
//
// var score = GameScore()
// score.playerName = "Kingsley"
// score.points = 13

// OR Implement a custom initializer (OPTIONAL i.e. NOT REQUIRED)
// It's recommended to place custom initializers in an extension
// to preserve the memberwise initializer.
extension GameScore {

    // Use the init to set your custom properties
    // NOTE: Properties in custom init are NOT required to be optional
    init(playerName: String, points: Int) {
        self.playerName = playerName
        self.points = points
    }
}

// Sample Usage
//
// let score = GameScore(playerName: "Kingsley", points: 13)

