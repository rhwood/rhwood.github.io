import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct ShyRamblings: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case mutterings
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://rhwood.github.io")!
    var name = "Shy Ramblings"
    var description = "Yet another site Randall does not maintain."
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try ShyRamblings().publish(withTheme: .foundation)
