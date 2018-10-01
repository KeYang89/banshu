webpackJsonp([44],{1983:function(e,t,a){"use strict";function s(){var e=[];return e.push((0,h.localizeMessage)("help.formatting.title","# Formatting Text\n_____")),e.push((0,h.localizeMessage)("help.formatting.intro","Markdown makes it easy to format messages. Type a message as you normally would, and use these rules to render it with special formatting.")),e.push((0,h.localizeMessage)("help.formatting.style","## Text Style\n\nYou can use either `_` or `*` around a word to make it italic. Use two to make it bold.\n\n* `_italics_` renders as _italics_\n* `**bold**` renders as **bold**\n* `**_bold-italic_**` renders as **_bold-italics_**\n* `~~strikethrough~~` renders as ~~strikethrough~~")),e.push((0,h.localizeMessage)("help.formatting.code","## Code Block\n\nCreate a code block by indenting each line by four spaces, or by placing ``` on the line above and below your code.")),e.push((0,h.localizeMessage)("help.formatting.example","Example:")+"\n\n"),e.push("    ```\n    "+(0,h.localizeMessage)("help.formatting.codeBlock","code block")+"\n    ```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")),e.push("```\n"+(0,h.localizeMessage)("help.formatting.codeBlock","code block")+"\n```"),e.push((0,h.localizeMessage)("help.formatting.syntax","### Syntax Highlighting\n\nTo add syntax highlighting, type the language to be highlighted after the ``` at the beginning of the code block. Mattermost also offers four different code themes (GitHub, Solarized Dark, Solarized Light, Monokai) that can be changed in **Account Settings** > **Display** > **Theme** > **Custom Theme** > **Center Channel Styles**")),e.push((0,h.localizeMessage)("help.formatting.supportedSyntax","Supported languages are:\n`as`, `applescript`, `osascript`, `scpt`, `bash`, `sh`, `zsh`, `clj`, `boot`, `cl2`, `cljc`, `cljs`, `cljs.hl`, `cljscm`, `cljx`, `hic`, `coffee`, `_coffee`, `cake`, `cjsx`, `cson`, `iced`, `cpp`, `c`, `cc`, `h`, `c++`, `h++`, `hpp`, `cs`, `csharp`, `css`, `d`, `di`, `dart`, `delphi`, `dpr`, `dfm`, `pas`, `pascal`, `freepascal`, `lazarus`, `lpr`, `lfm`, `diff`, `django`, `jinja`, `dockerfile`, `docker`, `erl`, `f90`, `f95`, `fsharp`, `fs`, `gcode`, `nc`, `go`, `groovy`, `handlebars`, `hbs`, `html.hbs`, `html.handlebars`, `hs`, `hx`, `java`, `jsp`, `js`, `jsx`, `json`, `jl`, `kt`, `ktm`, `kts`, `less`, `lisp`, `lua`, `mk`, `mak`, `md`, `mkdown`, `mkd`, `matlab`, `m`, `mm`, `objc`, `obj-c`, `ml`, `perl`, `pl`, `php`, `php3`, `php4`, `php5`, `php6`, `ps`, `ps1`, `pp`, `py`, `gyp`, `r`, `ruby`, `rb`, `gemspec`, `podspec`, `thor`, `irb`, `rs`, `scala`, `scm`, `sld`, `scss`, `st`, `styl`, `sql`, `swift`, `tex`, `vbnet`, `vb`, `bas`, `vbs`, `v`, `veo`, `xml`, `html`, `xhtml`, `rss`, `atom`, `xsl`, `plist`, `yaml`")),e.push((0,h.localizeMessage)("help.formatting.example","Example:")+"\n\n"),e.push("    ```go\n"+(0,h.localizeMessage)("help.formatting.syntaxEx",'    package main\n    import "fmt"\n    func main() {\n        fmt.Println("Hello, 世界")\n    }')+"\n    ```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")),e.push((0,h.localizeMessage)("help.formatting.githubTheme","**GitHub Theme**")),e.push("![go syntax-highlighting](https://docs.mattermost.com/_images/syntax-highlighting-github.PNG)"),e.push((0,h.localizeMessage)("help.formatting.solirizedDarkTheme","**Solarized Dark Theme**")),e.push("![go syntax-highlighting](https://docs.mattermost.com/_images/syntax-highlighting-sol-dark.PNG)"),e.push((0,h.localizeMessage)("help.formatting.solirizedLightTheme","**Solarized Light Theme**")),e.push("![go syntax-highlighting](https://docs.mattermost.com/_images/syntax-highlighting-sol-light.PNG)"),e.push((0,h.localizeMessage)("help.formatting.monokaiTheme","**Monokai Theme**")),e.push("![go syntax-highlighting](https://docs.mattermost.com/_images/syntax-highlighting-monokai.PNG)"),e.push((0,h.localizeMessage)("help.formatting.inline","## In-line Code\n\nCreate in-line monospaced font by surrounding it with backticks.")),e.push("```\n`monospace`\n```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")+" `monospace`"),e.push((0,h.localizeMessage)("help.formatting.links","## Links\n\nCreate labeled links by putting the desired text in square brackets and the associated link in normal brackets.")),e.push("`"+(0,h.localizeMessage)("help.formatting.linkEx","[Check out Mattermost!](https://about.mattermost.com/)")+"`"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")+" "+(0,h.localizeMessage)("help.formatting.linkEx","[Check out Mattermost!](https://about.mattermost.com/)")),e.push((0,h.localizeMessage)("help.formatting.images","## In-line Images\n\nCreate in-line images using an `!` followed by the alt text in square brackets and the link in normal brackets. Add hover text by placing it in quotes after the link.")),e.push("```\n"+(0,h.localizeMessage)("help.formatting.imagesExample",'![alt text](link "hover text")\n\nand\n\n[![Build Status](https://travis-ci.org/mattermost/platform.svg?branch=master)](https://travis-ci.org/mattermost/platform) [![Github](https://assets-cdn.github.com/favicon.ico)](https://github.com/mattermost/platform)')+"\n```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")),e.push((0,h.localizeMessage)("help.formatting.imagesExample",'![alt text](link "hover text")\n\nand\n\n[![Build Status](https://travis-ci.org/mattermost/platform.svg?branch=master)](https://travis-ci.org/mattermost/platform) [![Github](https://assets-cdn.github.com/favicon.ico)](https://github.com/mattermost/platform)')),e.push((0,h.localizeMessage)("help.formatting.emojis","## Emojis\n\nOpen the emoji autocomplete by typing `:`. A full list of emojis can be found [here](http://www.emoji-cheat-sheet.com/). It is also possible to create your own [Custom Emoji](http://docs.mattermost.com/help/settings/custom-emoji.html) if the emoji you want to use doesn't exist.")),e.push("```\n"+(0,h.localizeMessage)("help.formatting.emojiExample",":smile: :+1: :sheep:")+"\n```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")),e.push((0,h.localizeMessage)("help.formatting.emojiExample",":smile: :+1: :sheep:")),e.push((0,h.localizeMessage)("help.formatting.lines","## Lines\n\nCreate a line by using three `*`, `_`, or `-`.")),e.push("`***` "+(0,h.localizeMessage)("help.formatting.renders","Renders as:")+"\n***"),e.push((0,h.localizeMessage)("help.formatting.quotes","## Block quotes\n\nCreate block quotes using `>`.")),e.push((0,h.localizeMessage)("help.formatting.quotesExample","`> block quotes` renders as:")),e.push((0,h.localizeMessage)("help.formatting.quotesRender","> block quotes")),e.push((0,h.localizeMessage)("help.formatting.lists","## Lists\n\nCreate a list by using `*` or `-` as bullets. Indent a bullet point by adding two spaces in front of it.")),e.push("```\n"+(0,h.localizeMessage)("help.formatting.listExample","* list item one\n* list item two\n    * item two sub-point")+"\n```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")),e.push((0,h.localizeMessage)("help.formatting.listExample","* list item one\n* list item two\n    * item two sub-point")),e.push((0,h.localizeMessage)("help.formatting.ordered","Make it an ordered list by using numbers instead:")),e.push("```\n"+(0,h.localizeMessage)("help.formatting.orderedExample","1. Item one\n2. Item two")+"\n```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")),e.push((0,h.localizeMessage)("help.formatting.orderedExample","1. Item one\n2. Item two")),e.push((0,h.localizeMessage)("help.formatting.checklist","Make a task list by including square brackets:")),e.push("```\n"+(0,h.localizeMessage)("help.formatting.checklistExample","- [ ] Item one\n- [ ] Item two\n- [x] Completed item")+"\n```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")),e.push((0,h.localizeMessage)("help.formatting.checklistExample","- [ ] Item one\n- [ ] Item two\n- [x] Completed item")),e.push((0,h.localizeMessage)("help.formatting.tables","## Tables\n\nCreate a table by placing a dashed line under the header row and separating the columns with a pipe `|`. (The columns don’t need to line up exactly for it to work). Choose how to align table columns by including colons `:` within the header row.")),e.push("```\n"+(0,h.localizeMessage)("help.formatting.tableExample","| Left-Aligned  | Center Aligned  | Right Aligned |\n| :------------ |:---------------:| -----:|\n| Left column 1 | this text       |  $100 |\n| Left column 2 | is              |   $10 |\n| Left column 3 | centered        |    $1 |")+"\n```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")),e.push((0,h.localizeMessage)("help.formatting.tableExample","| Left-Aligned  | Center Aligned  | Right Aligned |\n| :------------ |:---------------:| -----:|\n| Left column 1 | this text       |  $100 |\n| Left column 2 | is              |   $10 |\n| Left column 3 | centered        |    $1 |")),e.push((0,h.localizeMessage)("help.formatting.headings","## Headings\n\nMake a heading by typing # and a space before your title. For smaller headings, use more #’s.")),e.push("```\n"+(0,h.localizeMessage)("help.formatting.headingsExample","## Large Heading\n### Smaller Heading\n#### Even Smaller Heading")+"\n```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")),e.push((0,h.localizeMessage)("help.formatting.headingsExample","## Large Heading\n### Smaller Heading\n#### Even Smaller Heading")),e.push((0,h.localizeMessage)("help.formatting.headings2","Alternatively, you can underline the text using `===` or `---` to create headings.")),e.push("```\n"+(0,h.localizeMessage)("help.formatting.headings2Example","Large Heading\n-------------")+"\n```"),e.push((0,h.localizeMessage)("help.formatting.renders","Renders as:")),e.push((0,h.localizeMessage)("help.formatting.headings2Example","Large Heading\n-------------")),n.default.createElement("div",null,n.default.createElement("span",{dangerouslySetInnerHTML:{__html:(0,r.formatText)(e.join("\n\n"))}}),n.default.createElement("p",{className:"links"},n.default.createElement(i.FormattedMessage,{id:"help.learnMore",defaultMessage:"Learn more about:"})),n.default.createElement("ul",null,n.default.createElement("li",null,n.default.createElement(o.Link,{to:"/help/messaging"},n.default.createElement(i.FormattedMessage,{id:"help.link.messaging",defaultMessage:"Basic Messaging"}))),n.default.createElement("li",null,n.default.createElement(o.Link,{to:"/help/composing"},n.default.createElement(i.FormattedMessage,{id:"help.link.composing",defaultMessage:"Composing Messages and Replies"}))),n.default.createElement("li",null,n.default.createElement(o.Link,{to:"/help/mentioning"},n.default.createElement(i.FormattedMessage,{id:"help.link.mentioning",defaultMessage:"Mentioning Teammates"}))),n.default.createElement("li",null,n.default.createElement(o.Link,{to:"/help/attaching"},n.default.createElement(i.FormattedMessage,{id:"help.link.attaching",defaultMessage:"Attaching Files"}))),n.default.createElement("li",null,n.default.createElement(o.Link,{to:"/help/commands"},n.default.createElement(i.FormattedMessage,{id:"help.link.commands",defaultMessage:"Executing Commands"})))))}Object.defineProperty(t,"__esModule",{value:!0}),t.default=s;var l=a(1),n=function(e){return e&&e.__esModule?e:{default:e}}(l),i=a(17),o=a(34),r=a(100),h=a(16)}});
//# sourceMappingURL=44.4c73ee56c02b5daa6531.js.map