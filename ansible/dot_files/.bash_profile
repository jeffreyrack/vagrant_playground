tmux new -A

pycd () {
    pushd `python -c "import os.path, $1; print(os.path.dirname($1.__file__))"`;
}