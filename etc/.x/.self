function pfind() {
    ps -aux|grep $1
}

function findFile() {
    find . -name $1
}

function findDir() {
    find . -type d -name $1
}
