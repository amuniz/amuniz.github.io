if [[ $# -eq 0 ]] ; then    
    echo "Post name required as argument"
    exit 1
fi
bundle exec rake new_post["$1"]
