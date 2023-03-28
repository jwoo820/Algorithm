import Foundation

func solution(_ s:String) -> Bool
{
    
    var str = s.map{$0.lowercased()}
    
    return str.filter{$0 == "p"}.count == str.filter{$0 == "y"}.count ? true : false
}