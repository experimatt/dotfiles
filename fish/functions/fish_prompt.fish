function fish_prompt --description 'Write out the prompt'
  # last status
  # set -l last_status $status
  # 
  # if not test $last_status -eq 0
  #   set_color $fish_color_error
  # end
  
  # pwd
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal

  # git
  set -g __fish_git_prompt_color_branch yellow
	set -g __fish_git_prompt_char_stateseparator ""
  
  # only show dirty state
  set -g __fish_git_prompt_showdirtystate 1
  set -g __fish_git_prompt_char_dirtystate "✱"
  set -g __fish_git_prompt_color_dirtystate red
  set -g __fish_git_prompt_char_stagedstate "✚"
  set -g __fish_git_prompt_color_stagedstate red
  
  # show informative status
  # set -g __fish_git_prompt_show_informative_status 1
  # set -g __fish_git_prompt_color_flags red
  # set -g __fish_git_prompt_char_cleanstate ""

  printf '%s ' (__fish_git_prompt)

  # suffix
  switch $USER
    case root toor
      set suffix '#'
    case '*'
      set suffix '$'
  end
  
  echo -n -s "$suffix "  
end
