//
//  {Name}Builder.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Foundation
import OpenAPIKit
import FeatherOpenAPIKit

extension {Name} {

    enum Fields {

        static func sampleField(required: Bool = true) -> JSONSchema {
            .string(
                format: .generic,
                required: required,
                description: "description for the sample field",
                examples: ["sampleField"]
            )
        }
        
    }
}
