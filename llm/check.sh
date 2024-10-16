grep "step: 500," ./log/workerlog.0 |tail -1 | awk -F ',' '{print $9}' | awk -F ":" '{print $2}'  | while read -r num_str; do  
    if [ "$num_str" -lt 7200 ]; then  
        echo "Assertion passed: $num_str is less than 7200"  
        exit 1
    else  
        echo "Assertion failed: $num_str is not less than 7200"  
        exit 1
    fi  
done
