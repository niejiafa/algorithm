// 数组中只出现一次的数字 其余数字出现两次
func singleNumber(_ s: [Int]) -> Int {
    var temp = s[0]
    
    if s.count > 1 {
        for i in 1..<s.count {
            temp = temp ^ s[i]
        }
    }
    
    return temp
}

singleNumber([1, 1, 2, 3, 3])

// 字符串反转
func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1
    while left < right {
        (s[left], s[right]) = (s[right], s[left])
        left += 1
        right -= 1
    }
    print(s)
}

let tempString = "abcdefg"
var tempArray = Array(tempString)
reverseString(&tempArray)


// 链表反转
class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ value: Int) {
        self.val = value
        self.next = nil
    }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var pre: ListNode? = nil
    var cur: ListNode? = head
    var temp: ListNode? = nil
    while cur != nil {
        temp = cur?.next
        cur?.next = pre
        pre = cur
        cur = temp
    }
    
    return pre
}

let aList = ListNode(1)
let bList = ListNode(2)
let cList = ListNode(3)
let dList = ListNode(4)
aList.next = bList
bList.next = cList
cList.next = dList

let newList = reverseList(aList)


