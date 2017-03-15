//main.js
defineClass("ViewController", 
{
	doSomeThing_IndexPath: function(tableView, indexPath) 
	{
		var cell = tableView.cellForRowAtIndexPath(indexPath);
		if (cell.textLabel().text().isEqualToString("add")) {
    		cell.textLabel().setText("add2");
		} else {
    		cell.textLabel().setText("add");
		}
   	}	
})
