//
//  Created by {author} on {date}.
//

import OpenAPIKit
import OpenAPIKitCore
import FeatherOpenAPIKit

extension SystemVariable {

    enum Identifiers {

        //TODO: check
        enum Tags {
            static let id: String = "Add a valid tag id here"
        }

        enum Parameters {
            static let id: Shared.ComponentKey = "{name}Id"
            static let listSortBy: Shared.ComponentKey =
                "{name}ListSortBy"
            static let listFilterKey: Shared.ComponentKey =
                "{name}ListFilterKey"
        }

        enum Components {
            static let reference: Shared.ComponentKey = "{Name}Reference"
            static let detail: Shared.ComponentKey = "{Name}Detail"
            static let create: Shared.ComponentKey = "{Name}Create"
            static let update: Shared.ComponentKey = "{Name}Update"
            static let patch: Shared.ComponentKey = "{Name}Patch"
            static let list: Shared.ComponentKey = "{Name}List"
            static let listItem: Shared.ComponentKey = "{Name}ListItem"
            static let listSortBy: Shared.ComponentKey = "{Name}ListSortBy"
            static let listSortItem: Shared.ComponentKey = "{Name}ListSortItem"
            static let listFilter: Shared.ComponentKey = "{Name}ListFilter"
            static let listFilterKey: Shared.ComponentKey = "{Name}ListFilterKey"
            static let listFilterQueryItem: Shared.ComponentKey = "{Name}ListFilterQueryItem"
        }
    }
}
