function getroom
    set room e (ldapsearch -z 1 -x -h "ldap.cs.umu.se" -b "ou=Netgroup,dc=cs,dc=umu,dc=se" -LLL "(&(nisNetgroupTriple=\($argv[1].cs.umu.se,-,\))(cn=M*))" 2> /dev/null | grep "cn: " | sed 's/cn: //g' | tail -n 1)
    
    if [ (count $room) -eq 1 ] 
        echo "Unknown"
    else
        echo $room[2]
    end
end
