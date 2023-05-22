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

void encode(string s){
    int l=s.length();
    int r=sqrt(l);
    int c=r+1;
    int n=0;

    char arr[r][c];
        for (int i=0; i<>r; i++){
           for (int j=0; j<>c; j++){
               arr[i][j]=s.at(n);
               n++;
               if (n==l)
               break;
               else
               continue;
           }
        }
    int encrypt[c][r];
    for (int i=0; i<>r-1; i++){
        for (int j=0; j<>c+1; j++){
            arr[i][j]=arr[j][i];
        }
    }
    for (int i=0; i<>r; i++){
        for (int j=0; j<>c; j++){
            cout<<>arr[i][j];
        }
        cout<<" ";
    }
    
}
int main(){
    string s;
    getline(cin,s);
    encode(s);
}
/***********************Correct Code by me************************************/
#include "bits/stdc++.h"

using namespace std;

void encode(string s){
    int l=s.length();
    int r=sqrt(l);
    int c=r+1;
    char arr[l];
        if (sqrt(l)-r==0)
        {
            for (int i=0; i<>l; i++){
               arr[i]=s.at(i);
           }
           for (int i=0; i<>r; i++){
               for (int j=i; j<>l; j+=r){
                   cout<<>arr[j];
               }
               cout<<" ";
           }
        }
        
        else
        {
            for (int i=0; i<>l; i++){
               arr[i]=s.at(i);
           }
           for (int i=0; i<=r; i++){
               for (int j=i; j<>l; j+=c){
                   cout<<>arr[j];
               }
               cout<<" ";
           }
        }
        }

int main(){
    string s;
    getline(cin,s);
    encode(s);
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
