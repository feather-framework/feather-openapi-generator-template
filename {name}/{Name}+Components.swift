//
//  Created by {author} on {date}.
//

import Foundation
import OpenAPIKit
import FeatherOpenAPIKit

extension {Name} {

    enum Components {

        // MARK: -

        static var reference: JSONSchema {
            .object(
                properties: [
                    "id": Generic.Fields.uuid(),
                    "sampleField": Fields.sampleField()
                ]
            )
        }

        // MARK: - list

        static var listItem: JSONSchema {
            .object(
                properties: [
                    "id": Generic.Fields.uuid(),
                    "sampleField": Fields.sampleField()
                ]
            )
        }

        static var listSortBy: JSONSchema {
            .enumeration(
                description: "The sort key for the list",
                allowedValues: ["sampleField"],
                defaultValue: "sampleField"
            )
        }

        static var listFilterKey: JSONSchema {
            .enumeration(
                description: "The sort key for the list",
                allowedValues: ["sampleField"],
                examples: ["sampleField"]
            )
        }

        // MARK: -

        static var detail: JSONSchema {
            .object(
                properties: [
                    "id": Generic.Fields.uuid(),
                    "sampleField": Fields.sampleField()
                ]
            )
        }

        static var create: JSONSchema {
            .object(
                properties: [
                    "sampleField": Fields.sampleField()
                ]
            )
        }

        static var update: JSONSchema {
            .object(
                properties: [
                    "sampleField": Fields.sampleField()
                ]
            )
        }

        static var patch: JSONSchema {
            .object(
                properties: [
                    "sampleField": Fields.sampleField(required: false)
                ]
            )
        }
    }

}
