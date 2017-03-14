//main.js
defineClass("ViewController", {
  tableView_didSelectRowAtIndexPath: function(tableView, indexPath)
  {
            var arr = new Array(5,4,3,2);
            var row = indexPath.row();
	if (arr.length > row)
	{
		var text1 = arr[row] + '';
//		var alert = new UIAlertView();
        var temAlertView = require('UIAlertView').alloc().
initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles(text1,"已购物品用展示", self, "OK", null);
            temAlertView.show()
	}
  }
})


