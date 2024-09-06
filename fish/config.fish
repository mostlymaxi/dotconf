
function fish_greeting
    hyfetch
end

# for strim
alias env="sl -lFa"

alias ls="exa -lha"
alias cat=bat
alias top=btm
alias please=sudo
alias ff=fastfetch
alias hf=hyfetch
alias pip=pip3
alias hx=helix
# alias nv=nvim
alias grep=rg
alias maxi="printf \n\n\n\n\n\n\n\n\n\n && echo mostlymaxi | toilet | lolcat && printf \n\n\n\n\n\n\n\n"

fish_add_path /usr/local/bin
fish_add_path .local/bin
fish_add_path .cargo/bin

function mostly
    printf \n\n\n\n\n\n\n\n\n\n && echo $argv | toilet -W --termwidth | lolcat && printf \n\n\n\n\n\n\n\n
end

