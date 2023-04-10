#!/system/bin/sh
# Two arguments are passed as inputs.
# Will calculate based on the user choice
# And exit the calculator program straightaway
if [[ $# -eq 2 ]] ; then
    # get num1 and num2 values from the arguments
    num1=$1
    num2=$2
    # Offer choices
    echo 1. Addition
    echo 2. Subtraction
    echo 3. Multiplication
    echo 4. Division
    echo 5. Exit
    echo Enter your choice:
    read choice
    # start computing
    if [[ $choice -eq 1 ]] ; then
        echo ----------------------------------------
        echo Addition of $num1 and $num2 is $((num1+num2))
        echo ----------------------------------------
        echo
    elif [[ $choice -eq 2 ]] ; then
        echo ----------------------------------------
        echo Subtraction of $num1 and $num2 is $((num1-num2))
        echo ----------------------------------------
        echo
    elif [[ $choice -eq 3 ]] ; then
        echo ----------------------------------------
        echo Multiplication of $num1 and $num2 is $((num1*num2))
        echo ----------------------------------------
        echo
    elif [[ $choice -eq 4 ]] ; then
        echo ----------------------------------------
        echo Division of $num1 and $num2 is $((num1/num2))
        echo ----------------------------------------
        echo
    elif [[ $choice -eq 5 ]] ; then
        exit
    else
        echo ----------------------------------------
        echo Invalid choice...
        echo ----------------------------------------
        echo
    fi
# This portion will run the calculator program infinitely unless
# the exit option 5 is given as input by the user
elif [[ $# -eq 0 ]] ; then
    while true
    do
        # Offer choices
        echo 1. Addition
        echo 2. Subtraction
        echo 3. Multiplication
        echo 4. Division
        echo 5. Exit
        echo Enter your choice:
        read choice
        # get nums and start computing based on the user's choice
        if [[ $choice -eq 1 ]] ; then
            echo Enter num1 value:
            read num1
            echo Enter num2 value:
            read num2
            echo ----------------------------------------
            echo Addition of $num1 and $num2 is $((num1+num2))
            echo ----------------------------------------
            echo
        elif [[ $choice -eq 2 ]] ; then
            echo Enter num1 value:
            read num1
            echo Enter num2 value:
            read num2
            echo ----------------------------------------
            echo Subtraction of $num1 and $num2 is $((num1-num2))
            echo ----------------------------------------
            echo
        elif [[ $choice -eq 3 ]] ; then
            echo Enter num1 value:
            read num1
            echo Enter num2 value:
            read num2
            echo ----------------------------------------
            echo Multiplication of $num1 and $num2 is $((num1*num2))
            echo ----------------------------------------
            echo
        elif [[ $choice -eq 4 ]] ; then
            echo Enter num1 value:
            read num1
            echo Enter num2 value:
            read num2
            echo ----------------------------------------
            echo Division of $num1 and $num2 is $((num1/num2))
            echo ----------------------------------------
            echo
        elif [[ $choice -eq 5 ]] ; then
            exit
        else
            echo ----------------------------------------
            echo Invalid choice.. Please try again
            echo ----------------------------------------
            echo
        fi
    done
else
    echo ----------------------------------------
    echo You either passed too many parameters or too less
    echo than the optimum requirement.
    echo
    echo This program accepts a maximum of 2 arguments or no
    echo argument at all in order to run successfully.
    echo ----------------------------------------
fi
