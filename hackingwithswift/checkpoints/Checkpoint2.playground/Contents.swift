import UIKit

var bands: [String] = ["AC/DC", "Queen", "Led Zeppelin", "Pink Floyd", "The Rolling Stones","Tool","A Perfect Circle", "The Cure", "The Smiths", "Radiohead", "Tool", "Tool"]



print(bands.count)

var setOfBands:Set<String> = Set(bands)

print(setOfBands.count)

print("List of bands: \(bands) \n Count: \(bands.count) ")

print("Set of bands: \(setOfBands) \n Unique Count: \(setOfBands.count) ")
