<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find X</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.23.0/themes/prism.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.23.0/prism.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.23.0/components/prism-java.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.23.0/plugins/line-numbers/prism-line-numbers.min.js"></script>
<style>
h2 {
	color: #2F4F4F;
}

p {
	color: #000000;
}
</style>

</head>
<body bgcolor="#FFFAFA">
	<main>
		<button class="back-btn" onclick="goBack()">&#8592;</button>

		<div class="question">
			<h2>Find X</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits/stdc++.h"
using namespace std;


int min(int n, vector <>string> s){
    long sum = 0,store;
    for (int i=0; i<>n>; i++){
        long count=0;
        if (i>0){
            if(s[i]==s[i-1])
            sum+=store;
            else{
                for (int j=0; j<>s[i].length()>; j++){
                    if (j>0){
                        if (s[i].at(j)=='d'||s[i].at(j)=='f'){
                            if (s[i].at(j-1)=='d'||s[i].at(j-1)=='f')
                            count+=4;
                            else
                            count+=2;
                        }
                        else if (s[i].at(j)=='j'||s[i].at(j)=='k'){
                            if (s[i].at(j-1)=='j'||s[i].at(j-1)=='k')
                            count+=4;
                            else
                            count+=2;
                        }
                    }
                    else{
                        count+=2;
                    }
                }
            }
            store = count;
            sum += count;
        }
        else{
            for (int j=0; j<>s[i].length()>; j++){
                if (j>0){
                    if (s[i].at(j)=='d'||s[i].at(j)=='f'){
                        if (s[i].at(j-1)=='d'||s[i].at(j-1)=='f')
                        count+=4;
                        else
                        count+=2;
                    }
                    else if (s[i].at(j)=='j'||s[i].at(j)=='k'){
                        if (s[i].at(j-1)=='j'||s[i].at(j-1)=='k')
                        count+=4;
                        else
                        count+=2;
                    }
                }
                else{
                    count+=2;
                }
            }
        store = count;
        sum += count;
        }
    }
    return sum;
}

int main(){
   int t;
   cin>>t;
   for (int i=0; i<>t>; i++){
       int n;
       cin>>n;
       vector <>string> s;
       for (int j=0; j<>n>; j++){
           string s1;
           cin>>s1;
           s.push_back(s1);
       }
       cout<<>min(n,s)><<>endl;
   }
   
   return 0;
}

			</code>
  </pre>
		<button onclick="copyCode()">Copy Code</button>

		<script>
		function copyCode() {
			var code = document.querySelector(".language-java").innerText;
			navigator.clipboard.writeText(code);
			alert("Code copied to clipboard!");
		}
		function goBack() {
		      window.history.back();
		    }

		Prism.highlightAll();
		Prism.plugins.lineNumbers();
	</script>
	</main>
</body>
</html>
