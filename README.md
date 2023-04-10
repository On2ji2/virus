
#!/bin/bash
echo "Please Enter Username" | pv -qL  10
sleep 2
read Username
sleep 2
`espeak -p 260 "Welcome $Username To bash coding how may i help you" 2>/dev/null`

sleep 2
echo "Great the function is complete" | pv -qL 10
