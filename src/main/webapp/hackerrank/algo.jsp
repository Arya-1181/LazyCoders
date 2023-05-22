<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Algorithm</title>
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
			<h2>Algorithm</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
    #include "bits/stdc++.h"

using namespace std;

string min(string s, long long k){
    long long max = 0;
    for (long long i=0; i<=s.length()-k; i++){
        string s1 = s.substr(i,k);
        long long count = 0;
        for (long long j=0; j<s1.length()>; j++){
            if (s1.at(j)=='a'||s1.at(j)=='i'||s1.at(j)=='o'||s1.at(j)=='e'||s1.at(j)=='u'){
                count++;
            }
        }
        if (count>max)
        max=count;
    }
    vector <string> v;
    for (long long i=0; i<=s.length(); i++){
        string s1 = s.substr(i,k);
        long long count = 0;
        for (long long j=0; j<s1.length()>; j++){
            if (s1.at(j)=='a'||s1.at(j)=='i'||s1.at(j)=='o'||s1.at(j)=='e'||s1.at(j)=='u'){
                count++;
            }
        }
        if (count==max)
        v.push_back(s1);
    }
    if (v.empty())
    return "Not found";
    
    return v[0];
}
int main(){
    string s;
    cin>>s;
    long long k;
    cin>>k;
    cout<<min(s,k)>>;
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
