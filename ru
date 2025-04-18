#!/data/data/com.termux/files/usr/bin/bash

RYELLOW='\033[1;33m'
YELLOW='\033[0;33m'
RGREEN='\033[1;32m'
GREEN='\033[0;32m'
COMMENT='\033[0;90m'
NC='\033[0m'

TEMP_FILE="/data/data/com.termux/files/usr/tmp/disk_speed_test_file"

mkdir -p /data/data/com.termux/files/usr/tmp

echo -e "\n${YELLOW}Тестирование скорости записи (Запись)...${NC}"
sleep 0.$(( $RANDOM % 9 ))
WRITE_RESULT=$(dd if=/dev/zero of="$TEMP_FILE" bs=64M count=64 oflag=direct,sync 2>&1)
WRITE_SPEED=$(echo "$WRITE_RESULT" | tail -n 1 | cut -d',' -f 4)
echo -e "${YELLOW}Результат скорости записи:${RYELLOW} ${WRITE_SPEED}${NC}"

echo -e "\n${COMMENT}Удаление временных файлов.${NC}"
sleep 0.$(( $RANDOM % 9 ))
rm "$TEMP_FILE"
echo

echo -e "${COMMENT}Создание файла для теста чтения...${NC}"
sleep 0.$(( $RANDOM % 9 ))
dd if=/dev/zero of="$TEMP_FILE" bs=64M count=64 2>/dev/null 1>/dev/null

echo -e "${GREEN}Тестирование скорости чтения (Чтение)...${NC}"
sleep 0.$(( $RANDOM % 9 ))
TEMP=$(mktemp)
dd if="$TEMP_FILE" of=/dev/null iflag=direct,sync bs=64M 2>$TEMP
READ_RESULT=$(cat $TEMP)
rm $TEMP
READ_SPEED=$(printf "$READ_RESULT" | tail -n 1 | cut -d',' -f 4)
echo -e "${GREEN}Результат скорости чтения: ${RGREEN}${READ_SPEED}${NC}"

echo -e "\n${COMMENT}Удаление временных файлов.${NC}"
sleep 0.$(( $RANDOM % 9 ))
rm "$TEMP_FILE"
echo
