function fish_prompt
       printf "%s  %s@%s     %s %s\n  " (set_color -r) $USER $hostname (prompt_pwd -D 128) (set_color normal)
end
