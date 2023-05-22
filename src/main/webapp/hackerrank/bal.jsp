<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Balanced Brackets</title>
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
			<h2>Balanced Brackets</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits/stdc++.h"

using namespace std;

int balanced_brackets1(string s){
    if (s.length()%2!=0){
    return 0;
    }
    
    for (long i=0; i<s.length()/2>; i++){
        if (s.at(i)!=s.at((s.length()-1)-i)-1&&s.at(i)!=s.at((s.length()-1)-i)-2)
        return 0;
    }
    return 1;
}


int balanced_brackets2(string s){
    if (s.length()%2!=0){
    return 0;
    }
    long count1=0,count2=0,count3=0;
    for (long i=0; i<s.length()>; i++){
        if (s[i]=='{')
        count1++;
        else if (s[i]=='}')
        count1--;
        else if (s[i]=='[')
        count2++;
        else if (s[i]==']')
        count2--;
        else if (s[i]=='(')
        count3++;
        else
        count3--;
    }
    if (count1!=0||count2!=0||count3!=0)
    return 0;
    
    return 1;
}
int main(){
    long n;
    cin>>n;
    for(int i=0; i<n; i++){
        string s;
        cin>>s;
        if (balanced_brackets1(s)==0&&balanced_brackets2(s)==0)
        cout<<"NO"<<endl>>;
        else
        cout<<"YES"<<endl>>;
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
