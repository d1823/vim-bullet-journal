if exists("b:current_syntax")
    finish
endif

highlight JournalAll ctermfg=white guifg=#9ea7b2
highlight JournalDateTime cterm=bold gui=bold guifg=#fe6b6c
highlight JournalTodoSign cterm=bold gui=bold ctermfg=white guifg=white
highlight JournalTodo ctermfg=white guifg=white
highlight JournalDoneSign cterm=bold gui=bold guifg=#9ea7b2
highlight JournalEventSign cterm=bold gui=bold ctermfg=cyan guifg=#b780fa
highlight JournalEvent ctermfg=cyan guifg=#b780fa
highlight JournalNoteSign cterm=bold gui=bold ctermfg=yellow guifg=#df9b2f
highlight JournalNote ctermfg=yellow guifg=#df9b2f
highlight JournalMovedSign cterm=bold gui=bold ctermfg=magenta guifg=#ee6faf
highlight JournalMoved ctermfg=magenta guifg=#ee6faf

syntax match JournalAll /.*/
syntax match JournalDateTime /^@\d\{2}\/\d\{2}\/\d\{4}/

syntax match JournalDoneSign /^×/ contained
syntax region JournalDone contains=JournalDoneSign start=/^×\s\w*/ end=/\(^\ze[×·o\->]\)\|\(^\s*$\)/

syntax match JournalTodoSign /^·/
syntax region JournalTodo contains=JournalTodoSign start=/^·\s\w*/ end=/\(^\ze[×·o\->]\)\|\(^\s*$\)/

syntax match JournalEventSign /^o/ contained
syntax region JournalEvent contains=JournalEventSign start=/^o\s\w*/ end=/\(^\ze[×·o\->]\)\|\(^\s*$\)/

syntax match JournalNoteSign /^-/ contained
syntax region JournalNote contains=JournalNoteSign start=/^-\s\w*/ end=/\(^\ze[×·o\->]\)\|\(^\s*$\)/

syntax match JournalMovedSign /^>/ contained
syntax region JournalMoved contains=JournalMovedSign start=/^>\s\w*/ end=/\(^\ze[×·o\->]\)\|\(^\s*$\)/

let b:current_syntax="journal"
