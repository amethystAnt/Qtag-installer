function Component() {

}

Component.prototype.createOperations = function() {

    component.createOperations();

    if (systemInfo.productType === "windows") {
        component.addOperation("CreateShortcut", "@TargetDir@/Qtag.exe", "@StartMenuDir@/Qtag.lnk");
    }
}
