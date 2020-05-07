# Voice commands for rstudio

$set numbers "zero,one,two,three,four,five,six,seven,eight,nine";

# Move around document
Jump Back = {Ctrl+Shift+F9};
Jump Forward = {Ctrl+F10};
Jump to Section={Alt+Shift+J};
Select that={Enter};
Last Section = {Ctrl+PgUp}; yeah #Move to line
Go to Line 1..99 = {Shift+Ctrl+G} Wait(2) $1 {Enter};
Go to Line 1..99  Oh 1..9 = {Shift+Ctrl+G} Wait(2) $1 0 $2 {Enter};
Go to Line 1..99 1..99 1..99 = {Shift+Ctrl+G} Wait(2) $1 $2 $3  {Enter};
(Left | Right | Up | Down)  1..99= {$1_$2};
Back 1..99={Backspace_$1};


#Find text
Find Text <_anything> = {Ctrl+f}$1 {Enter}; 
Find Next = {F3};
Find Previous={Shift+F3};
Find Function = {F2};


# R specific function commands
Comment = {Ctrl+Shift+C};
New Script = {Ctrl+Shift+N};
Assign = {Alt+"-"};
Complete function={Tab};
Create function={Ctrl+Alt+x};
Create variable={Ctrl+Alt+v};
Rename variable={Ctrl+Alt+Shift+m};


# R session commands
Restart R = {Ctrl+Shift+F10};

# Select Text
Select Bracket={Ctrl+p}{Shift+Alt+E};
Select Previous 1..99 = {Shift+Up_$1};
Select Next 1..99 = {Shift+Down_$1};
Select Before = {Shift+Home};
Select After= {Shift+End};
Start Select = Keys.SendInput({LeftButton_hold});
Stop Select = Keys.SendInput({LeftButton_release});

#Tidy Text
Fold that = {Alt+F1};
Unfold that = {Shift+Alt+L};
Unfold All= {Shift+Alt+O};
Indent={Tab};
Outdent={Shift+Tab};

#Move Text
Delete That = {Backspace};
Copy That ={Ctrl+c};
Paste That = {Ctrl+v};
Cut That = Wait(2){Ctrl+x};
Undo That ={Ctrl+z}



# Move within program
Go to Console = {Ctrl+2};
Go to Edit = {Ctrl+1};
First Doc = {Ctrl+Shift+F11};
Last Doc = {Ctrl+Shift+F12};
Next Doc = {Ctrl+F12};
Previous Doc = {Ctrl+F11};
Open File = {Ctrl+o};
Close File = {Ctrl+w};
Save File = {Ctrl+s};
Save As = {Ctrl+Shift+Alt+S};


# Help
Help Function = {F1};


# Running code
Run That = {Ctrl+Enter};
Run Function={Ctrl+Alt+F};
Run All = {Ctrl+Alt+R};
Knit All = {Ctrl+Shift+K};
Run Next = {Ctrl+Alt+N};
Run Previous = {Ctrl+Alt+P};
Run to here = {Ctrl+Alt+B};
Stop Run = {Esc};

# Brackets
Open Square = "[]"{Left};
#Open Bracket = "()"{Left};
Open Curve = "{"{Enter}{Left_2}; 
Open Vector =  "c()"{Left};
Open Quote = '""'{Left};

#variable naming

Underful(x) := EvalTemplate('("" + %s).lower()[:].replace(" . ", "_").replace(". ", "_").replace(" ","_")', $x);
Terse(x) := EvalTemplate('("" + %s).lower()[:].replace(" ","")', $x); 
Dotty(x) := EvalTemplate('("" + %s).lower()[:].replace(" . ", ".").replace(". ", ".").replace(" ",".")', $x); 

Under <_anything> under = Underful($1);
dots <_anything> [1..99] dots = Dotty($1) $2;
no space <_anything> space= Terse($1);


# include basic set
include utilities.vch;