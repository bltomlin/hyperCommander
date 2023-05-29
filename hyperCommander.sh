#! /usr/bin/env bash

echo "Hello $USER!"

# prints main menu
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

# runs an infinite until '0' is the input by user

while [ true ]
    do
    menu
        case $input in
        
        # break the infinite loop
        0)
            echo "Farewell!"
            break;
            ;;
            
        # Prints OS info
        1)
            uname -on
            ;;
            
        # Prints user info
        2)
            whoami
            ;;
            
        # runs infinite until '0' is the input by user
        3)
            while [ true ]; do
            echo "The list of files and directories:"
            
            # iterates through and labels files and directories
                arr=(*)
                for item in "${arr[@]}"; do
                  if [[ -f "$item" ]]; then
                    echo "F $item"
                  elif [[ -d "$item" ]]; then
                    echo "D $item"
                  fi
                done
                
                # prints menu to navigate around the directory
                echo "---------------------------------------------------"
                echo "| 0 Main menu | 'up' To parent | 'name' To select |"
                echo "---------------------------------------------------"
                
                # logic for menu
                
                read input
                if [[ $(find ./ -name "$input") ]]; then
                
                    # logic if a file is chosen
                    if [[ -f "$input" ]]; then
                           
                        # each option selected by user will execute then  break this infinite loop
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
                     
                    # logic for user selecting a directory
                    
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
                
                # if user selects 'up', nav to parent directory and ls
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
        
        # logic for executable commands
        
        4)
            echo "Enter an executable name:"
            read input
            if [ $(command -v "$input") ]; then
                echo "Located in: $(which -a "$input")"
                echo "Enter arguments:"
                read arguments
                $input $arguments
            else
                echo "The executable with that name does not exist!"
            fi
            ;;
        *)
            echo "Invalid option!"
  esac
done
