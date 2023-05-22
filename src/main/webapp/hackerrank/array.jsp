<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Array N</title>
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
			<h2>Array N</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include ""bits/stdc++.h"


using namespace std;

void sherlock(string s){
    int count=0;
    for (int i=0; i<s.length()>; i++){
        for (int j=i+1; j<s.length()>; j++){
            if(s.at(i)==s.at(j))
            count++;
        }
    }
    int k=2;
    while (k<=s.length()-1){
        for (int i=0; i<s.length()-k>; i++){
            string s1=s.substr(i,k);
            for (int j=i+1; j<=s.length()-k; j++){
                string s2=s.substr(j,k);
                int flag=0;
                vector <char> v1;
                vector <char> v2;
                for (int k=0; k<s2.length()>; k++){
                    v1.push_back(s1.at(k));
                    v2.push_back(s2.at(k));
                }
                sort(v1.begin(),v1.end());
                sort(v2.begin(),v2.end());
                if (v1==v2)
                count++;
            }
        }
        k++;
    }
    cout<<count><<endl>;
}
int main(){
    int t=0;
    cin>>t;
    vector <string> v;
    for (int i=0; i<t; i++){
        string s;
        cin>>s;
        v.push_back(s);
    }
    for (int i=0; i<t>; i++){
        sherlock(v[i]);
    }
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
