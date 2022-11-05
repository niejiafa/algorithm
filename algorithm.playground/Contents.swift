// 二叉树的深度
class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func maxDepth(_ tree: TreeNode?) -> Int {
    guard tree != nil else {
        return 0
    }
    
    let leftCount = maxDepth(tree?.left)
    let rightCount = maxDepth(tree?.right)
    
    return max(leftCount, rightCount) + 1
}

let oneTreeNode = TreeNode(1)
let twoTreeNode = TreeNode(2)
let threeTreeNode = TreeNode(3)
let fourTreeNode = TreeNode(4)

oneTreeNode.left = twoTreeNode
oneTreeNode.right = threeTreeNode
twoTreeNode.left = fourTreeNode
print(maxDepth(oneTreeNode))



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


