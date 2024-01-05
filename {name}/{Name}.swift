//
//  {Name}Builder.swift
//  {project}
//
//  Created by {author} on {date}.
//

import Foundation
import OpenAPIKit
import FeatherOpenAPIKit

enum {Name} {

    public enum Document {

        //TODO: check tags
        public static func tags() -> [OpenAPI.Tag] {
            [
                .init(
                    name: "Name here",
                    description: "a longer description here"
                )
            ]
        }

        //TODO: check paths
        public static func paths() -> OpenAPI.PathItem.Map {
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

        //TODO: check components
        public static func components()
            -> OpenAPI.ComponentDictionary<JSONSchema>
        {
            [
                "{Name}Reference": Components.reference,
                "{Name}Detail": Components.detail,
                "{Name}Create": Components.create,
                "{Name}Update": Components.update,
                "{Name}Patch": Components.patch,
                "{Name}List": Generic.Components.list("{Name}"),
                "{Name}ListItem": Components.listItem,
                "{Name}ListSortBy": Components.listSortBy,
                "{Name}ListSortItem": Generic.Components.listSortItem("{Name}"),
                "{Name}ListFilter": Generic.Components.listFilter("{Name}"),
                "{Name}ListFilterKey": Components.listFilterKey,
                "{Name}ListFilterQueryItem": Generic.Components
                    .listFilterQueryItem(
                        "{Name}"
                    ),
            ]
        }

        //TODO: check parameters
        public static func parameters()
            -> OpenAPI.ComponentDictionary<OpenAPI.Parameter>
        {
            [
                "systemVariableId": Parameters.id,
                "systemVariableListSortBy": Generic.Parameters.sortBy("{Name}"),
                "systemVariableListFilterKey": Generic.Parameters.filterKey("{Name}"),
            ]
        }
    }
}
