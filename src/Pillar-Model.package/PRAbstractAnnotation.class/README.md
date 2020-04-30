I represent an open-ended syntax for special text such as:

- ${todo} to represent a position in the text where things must be changed
- ${note:value=some text}$ (equivalent to previous one) (the default value= works the same as for Java annotations);
- ${index:AClass}$ to add AClass to the document index;
- ${cite:Duca99b}$ to reference a particular item of a bibliography;
- ${cite:value=Duca99b|page=90}$ (equivalent to previous one but additionaly specifies a page number;
- ${background:file://foobar.png}$ to specify the background of the current section;
- ${toc:maxLevel=2}$ to show a table of content with only level 1 and 2 section headings.
- ${note:some text with a curly brace \} inside}$ (shows how to escape a curly brace).

The name at the begining of each annote is called the tag (e.g., 'index', 'note', 'cite'). The tag is followed by a series of associations (key/value pairs).