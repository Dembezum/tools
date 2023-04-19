if [[ "$1" =~ ^[0-9]+$ ]] && [[ "$2" =~ ^[0-9]+$ ]]; then   
   max=$1
   count=$2
   shift
   shift
   for ((i=1; i <= max ; i++)); do
      sleep $count
      eval "$@"
   done
else
   echo "Usage: $0 [count] [interval] command"
fi
