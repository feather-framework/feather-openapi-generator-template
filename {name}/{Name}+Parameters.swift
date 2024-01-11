//
//  Created by {author} on {date}.
//

import Foundation
import OpenAPIKit
import FeatherOpenAPIKit

extension {Name} {

    enum Parameters {

        static var sampleId: OpenAPI.Parameter {
            .init(
                name: "sampleId",
                context: .path,
                schema: Generic.Fields.uuid()
            )
        }
    }
}
