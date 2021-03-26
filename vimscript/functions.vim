" TODO find out why this thing follows me everywhere in java
let blacklist = ['java']
autocmd CursorHold,CursorHoldI * if index(blacklist, &ft) < 0 | lua require'nvim-lightbulb'.update_lightbulb()