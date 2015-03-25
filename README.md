# Dynamic table view cell height
Demonstrates how dynamically resize a table view cell for `UILabels` with an arbitrary number of lines and how to mix customized table view cells with system-defined ones.

The data used in this project is the opening sentence of well-known, English-language novels.

<img src="https://raw.githubusercontent.com/jkereako/dynamic-table-view-cell-height/master/example.png" alt="Dynamic table view cell height" width="320" height="568" />

Most of the magic is defined in the Storyboard via constraints. The principle is the expanding `UILabel` must have 2 vertical space contraints for the top and bottom. You can set each constraint equal to the top and bottom margins of the superview (set the constant to 0). This will guarantee your `UILabel` to appear in the center of the cell. 

>NOTE

>The built-in table view cell styles prevent the developer from defining constraints. Because of this, you must subclass `UITableViewCell` and design your own cell prototype in Storyboard builder.

# Requirements
* Xcode 6 or higher
* iOS 8.0 or higher

# Links
- [Moby Dick](http://www.amazon.com/Moby-Dick-Bantam-Classics-Herman-Melville/dp/0553213113)
- [A Tale of Two Cities](http://www.amazon.com/Tale-Cities-Dover-Thrift-Editions/dp/0486406512)
- [The Adventures of Huckleberry Finn](http://www.amazon.com/Adventures-Huckleberry-Finn-Mark-Twain/dp/0486280616)
- [On the Road](http://www.amazon.com/On-Road-Jack-Kerouac/dp/0140283293)
- [The Catcher in the Rye](http://www.amazon.com/The-Catcher-Rye-J-D-Salinger/dp/0316769487)
