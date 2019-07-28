//LINKED LISTS:
// - Data structure made up of a sequence of nodes.
// - Singly Linked List = Each node points to next node. A -> B -> C
// - Doubly Linked List = Each node points to both next and previous nodes. A <-> B <-> C
// - Does NOT provide O(1) access to a particular index, like array do.
    // - i.e If you want to find the Kth element, you need to iterate through K elements
// - Benefit is that you can ADD and REMOVE items from beginning and end of list in O(1) time.

public class Node {
    var value: String
    var next: Node?
    weak var previous: Node?    //For a doubly linked list, weak reference to avoid ownership cycles

    init(value: String) {
        self.value = value
    }
}

public class LinkedList {
    private var head: Node?
    private var tail: Node?
    
    //Check if LinkedList has no items
    public var isEmpty: Bool {
        return head == nil
    }
    
    //Get first item
    public var first: Node? {
        return head
    }
    
    //Get last item
    public var last: Node? {
        return tail
    }
    
    //Add item to end of list
    public func append(value: String) {
        let newNode = Node(value: value)
        
        if let tailNode = tail {            //If tail is not empty
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        
        tail = newNode
    }
    
    public func nodeAt(index: Int) -> Node? {
        if index >= 0 {
            var node = head
            var i = index
            
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        
        return nil
    }

    public func removeAll() {
        head = nil
        tail = nil
    }
    
    public func remove(node: Node) {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {        //if previous is not nil
            prev.next = next        //set previous.next to this.next
        } else {
            head = next
        }
        next?.previous = prev       //set next.previous to this.previous
        
        if next == nil {            //if this is tail
            tail = prev             //tail is now previous
        }
        
        node.previous = nil
        node.next = nil
    }

    public func removeAt(index: Int) {
        if let node = nodeAt(index: index) {
            remove(node: node)
        }
    }
    
}

let dogBreeds = LinkedList()
dogBreeds.append(value: "Husky")
dogBreeds.append(value: "Labrador")
dogBreeds.append(value: "German Sheppard")

print("Node at index 1: \(dogBreeds.nodeAt(index: 1)!.value)")
print("Remove index 1")
dogBreeds.removeAt(index: 1)
print("New node at index 1: \(dogBreeds.nodeAt(index: 1)!.value)")
