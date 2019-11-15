autocmd! BufRead,BufNewFile Jenkinsfile,jenkinsfile call JenkinsfileOpts()
function! JenkinsfileOpts()
    set filetype=groovy
    syntax sync minlines=512
endfunction

autocmd! FileType make call MakefileOpts()
function! MakefileOpts()
    syntax sync minlines=512
endfunction
