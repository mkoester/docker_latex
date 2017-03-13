# Run

    sudo docker run --rm=true -i -t -v <full-path-to-folder-with-tex-project>:/latex mkoester/latex:texlive2016full -shell-escape -pvc -bibtex-cond -gg -pdf <tex-file>
