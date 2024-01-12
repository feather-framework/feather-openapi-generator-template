//
//  Created by {author} on {date}.
//

import OpenAPIKit
import OpenAPIKitCore
import FeatherOpenAPIKit

extension {Name} {

    public struct DocumentComponent: OpenAPIDocumentComponent {

        public func tags() -> [OpenAPI.Tag] {
            [
                .init(
                    name: Identifiers.Tags.id,
                    description: "add a description here"
                )
            ]
        }

        public func paths() -> OpenAPI.PathItem.Map {
            [
                "/api/path": .init(
                    get: Operations.list,
                    post: Operations.create,
                    delete: Operations.bulkDelete
                ),
                "/api/path/{sampleId}": .init(
                    get: Operations.detail,
                    put: Operations.update,
                    delete: Operations.delete,
                    head: Operations.head,
                    patch: Operations.patch
                ),
            ]
        }

        public func components()
            -> OpenAPI.ComponentDictionary<JSONSchema>
        {
            [
                Identifiers.Components.reference: Components.reference,
                Identifiers.Components.detail: Components.detail,
                Identifiers.Components.create: Components.create,
                Identifiers.Components.update: Components.update,
                Identifiers.Components.patch: Components.patch,
                Identifiers.Components.list: Generic.Components.list({Name}),
                Identifiers.Components.listItem: Components.listItem,
                Identifiers.Components.listSortBy: Components.listSortBy,
                Identifiers.Components.listSortItem: Generic.Components.listSortItem({Name}),
                Identifiers.Components.listFilter: Generic.Components.listFilter({Name}),
                Identifiers.Components.listFilterKey: Components.listFilterKey,
                Identifiers.Components.listFilterQueryItem:Generic.Components.listFilterQueryItem({Name}),
            ]
        }

        public func parameters()
            -> OpenAPI.ComponentDictionary<OpenAPI.Parameter>
        {
            [
                Identifiers.Parameters.id: Parameters.id,
                Identifiers.Parameters.listSortBy: Generic.Parameters.sortBy({Name}),
                Identifiers.Parameters.listFilterKey: Generic.Parameters.filterKey({Name}),
            ]
        }
    }
}
