//main.js
defineClass("ViewController", {
            require('UIAlertController,UIAlertAction');
            tableView_didSelectRowAtIndexPath: function(tableView, indexPath) {
            if (self.dataArray().count() > indexPath.row()) {
            var alert = UIAlertController.alertControllerWithTitle_message_preferredStyle("提示", self.dataArray[indexPath().row](), UIAlertControllerStyleAlert);
            var cancelAction = UIAlertAction.actionWithTitle_style_handler("取消", UIAlertActionStyleCancel, null);
            
            var okAction = UIAlertAction.actionWithTitle_style_handler("好的", UIAlertActionStyleDefault, null);
            
            alert.addAction(cancelAction);
            alert.addAction(okAction);
            self.presentViewController_animated_completion(alert, YES, null);
            }
            }
})


