function handler () {
    LOG_FILE_URL=$1
    EVENT_DATA=$2
    EVENT_DATA=$(echo $EVENT_DATA | sed 's/"//g')
    
    curl "$LOG_FILE_URL" >> /tmp/log.csv
    LINES=$(cat /tmp/log.csv | wc -l)
    LINES_MATCH=$(cat /tmp/log.csv | grep $EVENT_DATA | wc -l)
    URLS=$(cat /tmp/log.csv | grep $EVENT_DATA | tail | cut -d ',' -f3)
    RESPONSE="{\"lines\": $LINES, \"match\": $LINES_MATCH, \"urls\":\"$URLS\"}"
    echo $RESPONSE
    return 0
}
handler $*
