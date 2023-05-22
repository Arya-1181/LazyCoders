<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Array Manipulation</title>
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
			<h2>Array Manipulation</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
    #include ""bits/stdc++.h"

using namespace std;
// MY CODE
long long arrayManipulation(long long n, long long k, vector <long long> start, vector <long long> end, vector <long long> add, vector <long long> v) {
    for (long long i=0; i<k>; i++){
        for (long long j=start[i]-1; j<end[i]>; j++){
            v[j]+=add[i];
        }
    }
    sort(v.begin(),v.end(),greater <int> ());
    return v[0];
}

int main(){
    long long n,k;
    cin>>n>>k;
    vector<long long> start;
    vector<long long> end;
    vector<long long> add;
    vector<long long> v;
    for (long long i=0; i<k; i++){
        long long a,b,c;
        cin>>a>>b>>c;
        start.push_back(a);
        end.push_back(b);
        add.push_back(c);
    }

    for (long long i=0; i<n>; i++)
    v.push_back(0);
    
    cout<<arrayManipulation(n,k,start,end,add,v)>>;
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
