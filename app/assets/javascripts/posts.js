var form = document.querySelector("#post_content_md");
if (form) {
  simplemde = new SimpleMDE({
    autofocus: true,
  	blockStyles: {
  		bold: "__",
  		italic: "_"
  	},
    element: document.getElementById("post_content_md"),
  	hideIcons: ["guide", "heading"],
  	indentWithTabs: true,
  	insertTexts: {
  		horizontalRule: ["", "\n\n-----\n\n"],
  		image: ["![](http://", ")"],
  		link: ["[", "](http://)"],
  		table: ["", "\n\n| Column 1 | Column 2 | Column 3 |\n| -------- | -------- | -------- |\n| Text     | Text      | Text     |\n\n"],
  	},
  	lineWrapping: false,
  	parsingConfig: {
  		allowAtxHeaderWithoutSpace: true,
  		strikethrough: false,
  		underscoresBreakWords: true,
  	},
  	placeholder: "Type here...",
  	promptURLs: true,
  	renderingConfig: {
  		singleLineBreaks: false,
  		codeSyntaxHighlighting: true,
  	},
  	shortcuts: {
  		drawTable: "Cmd-Alt-T"
  	},
  	showIcons: ["code", "table"],
  	spellChecker: false,
  	styleSelectedText: false,
  	tabSize: 2,
  });
}
