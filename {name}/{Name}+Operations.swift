//
//  Created by {author} on {date}.
//

import Foundation
import OpenAPIKit
import FeatherOpenAPIKit
import OpenAPIKitCore

extension {Name} {

    /**
     replace #VALUE, #VALUES with your own values to change descriptions
    */
    enum Operations {

        static var list: OpenAPI.Operation {
            .init(
                tags: [Identifiers.Tags.id],
                summary: "List #VALUES",
                description: "List available #VALUES",
                operationId: "list{Name}s",
                parameters: Generic.Parameters.list("{name}"),
                responses: .list(Identifiers.Components.list),
                security: Generic.Security.bearerAuth
            )
        }

        static var create: OpenAPI.Operation {
            .init(
                tags: [Identifiers.Tags.id],
                summary: "Create a #VALUE",
                description: "Creates a new #VALUE",
                operationId: "create{Name}",
                requestBody: .init(
                    content: [
                        .json: .ref(
                            Identifiers.Components.create
                        )
                    ]
                ),
                responses: .create(
                    Identifiers.Components.detail
                ),
                security: Generic.Security.bearerAuth
            )
        }

        static var bulkDelete: OpenAPI.Operation {
            .init(
                tags: [Identifiers.Tags.id],
                summary: "Bulk delete #VALUES",
                description: "Removes multiple #VALUES at once",
                operationId: "delete{Name}s",
                requestBody: .bulkDelete(),
                responses: .bulkDelete(),
                security: Generic.Security.bearerAuth
            )
        }

        // MARK: -

        static var head: OpenAPI.Operation {
            .init(
                tags: [Identifiers.Tags.id],
                summary: "#VALUE head",
                description: "Get the head of a #VALUE",
                operationId: "head{Name}",
                parameters: [
                    .ref(Identifiers.Parameters.id)
                ],
                responses: .head(),
                security: Generic.Security.bearerAuth
            )
        }

        static var detail: OpenAPI.Operation {
            .init(
                tags: [Identifiers.Tags.id],
                summary: "#VALUE details",
                description: "Get the details of a #VALUE",
                operationId: "get{Name}",
                parameters: [
                    .ref(Identifiers.Parameters.id)
                ],
                responses: .detail(
                    Identifiers.Components.detail
                ),
                security: Generic.Security.bearerAuth
            )
        }

        static var update: OpenAPI.Operation {
            .init(
                tags: [Identifiers.Tags.id],
                summary: "Update a #VALUE",
                description: "Updates a #VALUE",
                operationId: "update{Name}",
                parameters: [
                    .ref(Identifiers.Parameters.id)
                ],
                requestBody: .init(
                    content: [
                        .json: .ref(
                            Identifiers.Components.update
                        )
                    ]
                ),
                responses: .update(
                    Identifiers.Components.detail
                ),
                security: Generic.Security.bearerAuth
            )
        }

        static var patch: OpenAPI.Operation {
            .init(
                tags: [Identifiers.Tags.id],
                summary: "Patch a #VALUE",
                description: "Patch a given #VALUE",
                operationId: "patch{Name}",
                parameters: [
                    .ref(Identifiers.Parameters.id)
                ],
                requestBody: .init(
                    content: [
                        .json: .ref(Identifiers.Components.patch)
                    ]
                ),
                responses: .patch(Identifiers.Components.detail),
                security: Generic.Security.bearerAuth
            )
        }

        static var delete: OpenAPI.Operation {
            .init(
                tags: [Identifiers.Tags.id],
                summary: "Delete a #VALUE",
                description: "Removes a #VALUE using an id",
                operationId: "delete{Name}",
                parameters: [
                    .ref(Identifiers.Parameters.id)
                ],
                responses: .delete(),
                security: Generic.Security.bearerAuth
            )
        }
    }
}
