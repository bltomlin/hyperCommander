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
            uname -on
            ;;
        2)
            whoami
            ;;
        3)
            while [ true ]; do
            echo "The list of files and directories:"
                arr=(*)
                for item in "${arr[@]}"; do
                  if [[ -f "$item" ]]; then
                    echo "F $item"
                  elif [[ -d "$item" ]]; then
                    echo "D $item"
                  fi
                done
                echo "---------------------------------------------------"
                echo "| 0 Main menu | 'up' To parent | 'name' To select |"
                echo "---------------------------------------------------"
                read input
                if [[ $(find ./ -name "$input") ]]; then
                    if [[ -f "$input" ]]; then
                        echo "Not implemented!"
                    elif [[ -d "$input" ]]; then
                        cd "$input"
                        if [[ -f "$input" ]]; then
                            echo "F $input"
                        elif [[ -d "$input" ]]; then
                            echo "D $input"
                        else
                            echo "Error during listing!"
                        fi
                    fi
                elif [ "$input" == "up" ]; then
                    cd ..
                    if [[ -f "$item" ]]; then
                        echo "F $item"
                    elif [[ -d "$item" ]]; then
                        echo "D $item"
                    else
                        echo "Error during listing!"
                    fi
                elif [ "$input" == 0 ]; then
                    break
                else
                    echo "Invalid input!"
                fi
            done
            ;;
        4)
            echo "Not implemented!"
            ;;
        *)
            echo "Invalid option!"
  esac
done
