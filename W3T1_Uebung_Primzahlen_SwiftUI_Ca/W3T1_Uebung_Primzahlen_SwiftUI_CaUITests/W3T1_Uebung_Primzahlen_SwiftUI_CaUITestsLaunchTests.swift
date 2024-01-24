//
//  W3T1_Uebung_Primzahlen_SwiftUI_CaUITestsLaunchTests.swift
//  W3T1_Uebung_Primzahlen_SwiftUI_CaUITests
//
//  Created by alfa on 20.11.23.
//

import XCTest

final class W3T1_Uebung_Primzahlen_SwiftUI_CaUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
