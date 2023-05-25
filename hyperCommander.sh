#! /usr/bin/env bash

echo "Hello $USER!"

menu() {
    echo "------------------------------"
    echo "| Hyper Commander            |"
    echo "| 0: Exit                    |"
    echo "| 1: OS info                 |"
    echo "| 2: User info               |"
    echo "| 3: File and Dir operations |"
    echo "| 4: Find Executables        |"
    echo "------------------------------"
    read -r input
}

while [ true ]
    do
    menu
        case $input in
        0)
            echo "Farewell!"
            break;
            ;;
        1)
            echo "Not implemented!"
            ;;
        2)
            echo "Not implemented!"
            ;;
        3)
            echo "Not implemented!"
            ;;
        4)
            echo "Not implemented!"
            ;;
        *)
            echo "Invalid option!"
  esac
done
