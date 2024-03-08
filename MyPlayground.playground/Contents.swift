let s = "([)]"
var i = 0
        var j = 0
        var k = 0
        var l = 0
        var m = 0
        var n = 0

if (s.count % 2 == 0){

                for each in s {

                    switch each{

                        case "(":
                                i+=1
                        case "[":
                                j+=1
                        case "{":
                                k+=1
                        case ")":
                                l+=1
                        case "]":
                                m+=1
                        case "}":
                                n+=1
                        default:
                                n = 10
                    }
                }

                if (i==l && k==n && j==m){
                    print("true")
                }
                else{
                    print("false")
                }

        }
        else{
            print ("false")
        }
        

