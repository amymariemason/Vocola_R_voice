# Voice commands for outlook


switchToFolder(folder) := {Ctrl+y}{Up_40}{Left}  # close "Archive Folders"
                          Inbox{Right}           # open "Inbox"
                          {Up_40} $folder {Enter};
<folder> := Inbox | Drafts | Sent | Calendar | Contacts | Tasks | For Follow Up | Deleted | 1| 2| 3|4|5|6|7|8|9;

Folder <folder> = switchToFolder($1);
Move To <folder> = {Ctrl+x} switchToFolder($1) {Ctrl+v};

include utilities.vch;

