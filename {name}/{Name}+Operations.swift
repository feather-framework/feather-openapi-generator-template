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

    /**
     replace #TAG,'#VALUE,'#VALUES and '#ID with your own values
    */
    enum Operations {

        static var list: OpenAPI.Operation {
            .init(
                tags: ["#TAG"],
                summary: "List #VALUES",
                description: "List available #VALUES",
                operationId: "list{Name}",
                parameters: [
                    
                ] + Generic.Parameters.list("systemVariable"),
                responses: .list("{Name}List"),
                security: Generic.Security.bearerAuth
            )
        }

        static var create: OpenAPI.Operation {
            .init(
                tags: ["#TAG"],
                summary: "Create a #VALUE",
                description: "Creates a new #VALUE",
                operationId: "create{Name}",
                parameters: [
                    
                ],
                requestBody: .init(
                    content: [
                        .json: .ref("{Name}Create")
                    ]
                ),
                responses: .create("{Name}Detail"),
                security: Generic.Security.bearerAuth
            )
        }

        static var bulkDelete: OpenAPI.Operation {
            .init(
                tags: ["#TAG"],
                summary: "Bulk delete #VALUES",
                description: "Removes multiple #VALUES at once",
                operationId: "delete{Name}",
                parameters: [
                
                ],
                requestBody: .bulkDelete(),
                responses: .bulkDelete(),
                security: Generic.Security.bearerAuth
            )
        }

        // MARK: -

        static var head: OpenAPI.Operation {
            .init(
                tags: ["#TAG"],
                summary: "#VALUE head",
                description: "Get the head of a #VALUE",
                operationId: "head{Name}",
                parameters: [
                    .ref("#ID"),
                ],
                responses: .head(),
                security: Generic.Security.bearerAuth
            )
        }

        static var detail: OpenAPI.Operation {
            .init(
                tags: ["#TAG"],
                summary: "#VALUE details",
                description: "Get the details of a #VALUE",
                operationId: "get{Name}",
                parameters: [
                    .ref("#ID"),
                ],
                responses: .detail("{Name}Detail"),
                security: Generic.Security.bearerAuth
            )
        }

        static var update: OpenAPI.Operation {
            .init(
                tags: ["#TAG"],
                summary: "Update a #VALUE",
                description: "Updates a #VALUE",
                operationId: "update{Name}",
                parameters: [
                    .ref("#ID"),
                ],
                requestBody: .init(
                    content: [
                        .json: .ref("{Name}Update")
                    ]
                ),
                responses: .update("{Name}Detail"),
                security: Generic.Security.bearerAuth
            )
        }

        static var patch: OpenAPI.Operation {
            .init(
                tags: ["#TAG"],
                summary: "Patch a #VALUE",
                description: "Patch a #VALUE",
                operationId: "patch{Name}",
                parameters: [
                    .ref("#ID"),
                ],
                requestBody: .init(
                    content: [
                        .json: .ref("{Name}Patch")
                    ]
                ),
                responses: .patch("{Name}Detail"),
                security: Generic.Security.bearerAuth
            )
        }

        static var delete: OpenAPI.Operation {
            .init(
                tags: ["#TAG"],
                summary: "Delete a #VALUE",
                description: "Removes a #VALUE using an id",
                operationId: "delete{Name}",
                parameters: [
                    .ref("#ID"),
                ],
                responses: .delete(),
                security: Generic.Security.bearerAuth
            )
        }
    }
}
