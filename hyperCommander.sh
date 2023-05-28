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
                        while [ true ]; do
                            echo "---------------------------------------------------------------------"
                            echo "| 0 Back | 1 Delete | 2 Rename | 3 Make writable | 4 Make read-only |"
                            echo "---------------------------------------------------------------------"
                            read userChoice
                            if [ "$userChoice" == 1 ]; then
                                rm "$input"
                                echo "$input has been deleted."
                                break
                            elif [ "$userChoice" == 2 ]; then
                                echo "Enter the new file name:"
                                read newName
                                mv $input $newName
                                echo "$input has been renamed as $newName"
                                break
                            elif [ "$userChoice" == 3 ]; then
                                chmod 666 $input
                                echo "Permissions have been updated."
                                ls -l $input
                                break
                            elif [ "$userChoice" == 4 ]; then
                                chmod 664 $input
                                echo "Permissions have been updated."
                                ls -l $input
                                break
                            elif [ "$userChoice" == 0 ]; then
                                break
                            else
                                continue
                            fi
                        done
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
