An introduction
===============

This package provides all of the files needed to support the production and typesetting of a PhD thesis at UCL. For contributions, comments, and bug reports, please contact Pim Messelink at pim.messelink.10@ucl.ac.uk.

This template is essentially a modified version of Jordan Suchow's (suchow@fas.harvard.edu), all credits go to him.

Contributions were made by Andrew Leifer (leifer@fas.harvard.edu), and thanks to Clemens Eppner for the Ubuntu instructions.

Installation
============

### For Windows XP: ###

1.	Download basic-miktex-#.#.####.exe from [http://miktex.org/](http://miktex.org/)

2.	Download SumatraPDF-#.#.#-install.exe from [http://blog.kowalczyk.info/software/sumatrapdf/free-pdf-reader.html](http://blog.kowalczyk.info/software/sumatrapdf/free-pdf-reader.html)

3.	Copy the contents of fonts\ into 

		C:\Program Files\MiKTeX 2.9\fonts\opentype\public\ChaparralPro

4.	To compile, from the MSYS command prompt run: 

		xelatex -synctex=-1 thesis.tex


### For Mac OS X ###

1.	Download MacTeX.pkg from [http://tug.org/mactex/](http://tug.org/mactex/) or from a mirror (e.g. [http://archive.cs.uu.nl/mirror/CTAN/systems/mac/mactex/MacTeX.pkg](http://archive.cs.uu.nl/mirror/CTAN/systems/mac/mactex/MacTeX.pkg)). It should be roughly 2 GB.

2.	Install.

I use the free PDF reader Skim and the non-free editor TextMate. Both integrate well with latex:

Skim is available at [http://skim-app.sourceforge.net/](http://skim-app.sourceforge.net/)
Set Skim->Preferences->Sync to the Preset "TextMate." You can command-shift-click in the PDF to pull up a line in the code in Textmate.

Now to setup TextMate, go to the Bundle->LaTex->Preferences and choose xelatex and Skim respectively.
Then go to Bundles->Latex-> File Preferences -> Set Master file and select your master file: thesis.tex

To compile, from the terminal run:

	xelatex thesis

I also use Zotero [http://www.zotero.org/](http://www.zotero.org/) with the following modification to enable drag and drop cite keys:
For Bibtex Drag and Drop Functionality from Zotero see: [http://forums.zotero.org/discussion/5094/drag-and-drop-bibtex-cite/](http://forums.zotero.org/discussion/5094/drag-and-drop-bibtex-cite/) and in particular: [http://pastebin.com/GXmCJevn](http://pastebin.com/GXmCJevn)

### For Ubuntu ###

1.	Installing xetex: 

		sudo apt-get install texlive-xetex
	
2.	Copy the fonts (from the template folder): 

		sudo cp fonts/*/usr/local/share/fonts/

3.	(Not necessary for recent verions of Ubuntu) 
	Add 

		\aliasfontfeatureoption{Ligatures}{Historic}{Historical}
  
	in ucl-thesis.cls just above the \setromanfont... command.
	This is because the syntax changed at some point from "Historical" to "Historic" but the ubuntu package is obviously a little behind. See here: [http://tug.org/pipermail/xetex/2010-September/018106.html](http://tug.org/pipermail/xetex/2010-September/018106.html)

4.	(Necessary for recent versions of Ubuntu)
	Copy fltpage.sty to the template's main folder as it is no longer distributed by the texlive-latex-extra package. A copy can be obtained by downloading fltpage.ins and running

		latex fltpage.ins

5.	Run 

		xelatex thesis.tex


General Links
=============

UCL Approved Binding Sites:
[http://www.ucl.ac.uk/current-students/research_degrees/binders_printers](http://www.ucl.ac.uk/current-students/research_degrees/binders_printers)

+	THE BOOK BINDER - www.the-book-binder.co.uk
+	BLISSETT BOOKBINDERS - www.blissetts.com
+	BOOKBINDERS OF LONDON LTD - www.bookbindersoflondon.com
+	CITY BINDERS - www.citybinders.co.uk
+	COLLIS-BIRD & WITHEY - www.thesisbookbinding.co.uk
+	THE DOCUMENT CENTRE - www.thesis-binding.co.uk
+	J.MUIR & COMPANY - www.jmuirbookbinders.co.uk
+	DARWIN PRESS - www.darwinpress.co.uk
+	LONDON BOOKBINDING - www.londonbookbinding.co.uk
+	WALTER NEWBURY PARTNERS LTD - www.walternewbury.co.uk
+	STUDENT BOOKBINDING - www.studentbookbinding.co.uk
+	THE HERTS BOOK BINDER - www.thehertsbookbinder.co.uk
+	BOOKOBSCURE - www.bookobscure.co.uk


License
=======

This software is free and is covered under the MIT License, given here:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
