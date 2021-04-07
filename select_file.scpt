ObjC.import('stdlib')                               

var args = $.NSProcessInfo.processInfo.arguments   
var argv = []
var argc = args.count
for (var i = 4; i < argc; i++) {
    // skip 3-word run command at top and this file's name
    argv.push(ObjC.unwrap(args.objectAtIndex(i))) 
}
var chrome = Application("Microsoft Edge Canary");
var window = chrome.windows[0];
chrome.includeStandardAdditions = true;
chrome.openLocation("https://remnote.io/");
delay(2);
events = Application("System Events")
loading = true
currtab =window.tabs[-1]
var found;
//while (found!==true){spans=document.querySelectorAll('[contenteditable="false"]');for (var i=0;i<spans.length;i++){if (spans[i].textContent.includes("Undefined")){found=spans[i]; break;};};delay(0.1);};
delay(2.5)
events.keystroke("n", {
    using:"control down"
});
delay(0.5)
while(currtab.execute({javascript: "document.readyState"})!="complete"){delay(0.05);};
currtab.execute({javascript: "document.querySelector('.document-source .document-source__upload-button').click();"});
while(currtab.execute({javascript: "document.readyState"})!="complete"){delay(0.05);};
delay(0.5)
events.keystroke("g",{using:["command down","shift down"]});
events.keystroke(argv[0])
delay(0.2)
events.keyCode("76");
delay(0.2)
events.keyCode("76");
delay(0.2)
events.keyCode("76");
delay(0.2)
