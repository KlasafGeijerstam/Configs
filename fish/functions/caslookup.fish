function caslookup
    
    ldapsearch -z 1 -x -LLL -h "ldap.cs.umu.se" -b "dc=cs,dc=umu,dc=se" "(uid=$argv[1])" casid | grep "casid: " | sed 's/casid: //g'
end
