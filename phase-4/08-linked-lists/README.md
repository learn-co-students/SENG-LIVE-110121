# Data Structures & Algorithms: Building a Link List

Data structures and algorithms are the backbone of every piece of software and program. It involves the way that data is collected and managed as well as how to perform behaviors on the data.

### What are data structures?

- The essential building blocks used to organize all digital information.
- A data organization, management, and storage format that enables efficient access and modification.
- More precisely, a data structure is a collection of data values, the relationships among them, and the functions or operations that can be applied to the data
- Data structures handle four main functions for us:
  - Inputting information
  - Processing information
  - Maintaining information
  - Retrieving information
- There are built in data structures to choose from for different purposes or custom data structures can be built

### Common Data Structures

[8 Common Data Structures](https://towardsdatascience.com/8-common-data-structures-every-programmer-must-know-171acf6a1a42)

- Arrays
- Linked lists:
- Stacks
- Queues
- Hash Tables
- Trees
- Heaps
- Graphs

### How to choose the best data structure to use:

- Using the correct data structure will ensure efficient runtime and code responses
- A few factors are involved in choosing the right data structure:
  - Identify the purpose for the data and expectations of how the data will be dealt with
  - How should memory be handled? Controlled or set by default
  - While two data structures can be used for similar tasks, which data structure will have a better runtime(less expensive)

### What is an algorithm?

- "An algorithm is a set of instructions for solving a problem or accomplishing a task. One common example of an algorithm is a recipe, which consists of specific instructions for preparing a dish or meal. Every computerized device uses algorithms to perform its functions in the form of hardware- or software-based routines." https://www.investopedia.com/terms/a/algorithm.asp

### About linked lists

- A linear collection of data that is ordered
- Each element is referred to as a node
- Linked lists must be traversed from start to end to access a particular node
- Big O for linked list is O(1)

### 3 types of linked lists:

<p align="center">
    <img src="./assets/singlylinkedlist.png" width="500" height="100">
</p>

- Traversal can only be done moving forward

<p align="center">
    <img src="./assets/doublylinkedlist.png" width="500" height="100">
</p>

- Traversal can be done moving backward and forward

<p align="center">
    <img src="./assets/circularlinkedlist.png" width="500" height="100">
</p>

### Linked List Structure

- Contains nodes, one head and tail
- Each node has 2 attributes: data and next. If working with doubly linked lists, will also have a previous attribute
  - Data is a value bound to the node
  - Next points to the next node that the current node is linked to. If the next node is `null`, it is the tail. If there are no other nodes, then the node is a head.

### Linked lists vs arrays

- Linked lists are not indexed
- Arrays must be reindexed when adding or removing elements which can be costly
- Arrays have a static memory allocation meaning it will manage memory for you and assume a fixed amount of memory
- Data structures that utilize dynamic memory allocation (e.g., heaps or linked lists) allow you to allocate and reallocate memory within the life of the program.
- Linked lists are less expensive for inserting and removing
- Arrays are less expensive for searching due to indexing

Image credits: https://www.geeksforgeeks.org/types-of-linked-list/


### Lecture deliverables:

1. Create a class `Node`. What attributes should a node be initialized with? 
2. Create a `SinglyLinkedList` class. What attributes will this class have?
3. Define a method `SinglyLinkedList#add_to_list` that receives a node as an argument. If the list is currently empty, the node should be set as the head. If not, traverse the list to add the node to the end. Return the linked list.
4. Define a method `SinglyLinkedList#add_to_beggining` that receives a node as an argument. The goal will be to set the passed in node at the beginning of the list. Consider what will happen to the head of the linked list.
5. Define a method `SinglyLinkedList#find` that receives some data as an argument and returns the node that matches the given data. If there are no matches, return "0 Results".
6. Define a method `SinglyLinkedList#delete` that receives some data as an argument. The goal will be to remove the node that matches the given argument from the linked list. If the matched node is the head, then the following node should be set as the new head. 