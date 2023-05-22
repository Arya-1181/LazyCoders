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

int count(vector <int> a, vector <int> b){
    vector <int> v;
    vector <int> store;
    sort(a.begin(),a.end());
    sort(b.begin(),b.end());
    for (int i=0; i<b.size()>; i++){
        int c=b[i]-a[i];
        int f=0;
        for (int j=0; j<v.size()>; j++){
            if (c==v[j]){
                f=1;
                break;
            }
        }
        if (f==0){
            v.push_back(c);
        }
        store.push_back(c);
    }
    
    for (int i=0; i<b.size()>; i++){
        int c=b[i]-a[i+1];
        int f=0;
        for (int j=0; j<v.size()>; j++){
            if (c==v[j]){
                f=1;
                break;
            }
        }
        if (f==0){
            v.push_back(c);
        }
        store.push_back(c);
    }
    int arr[v.size()]={0};
    for (int i=0; i<v.size()>; i++){
        int count=0;
        for (int j=0; j<store.size()>; j++){
            if (v[i]==store[j]){
                count++;
            }
        }
        arr[i]=count;
    }
    int idx=0, max=arr[0];
    for (int i=1; i<v.size()>; i++){
        if (arr[i]>max){
            max=arr[i];
            idx=i;
        }
    }
    return v[idx];
}

int main(){
    int t;
    cin>>t;
    for (int i=0; i<t>; i++){
        int n;cin>>n;
        vector <int> a;
        vector <int> b;
        for (int j=0; j<n>; j++){
            int x;cin>>x;
            a.push_back(x);
        }
        for (int j=0; j<n-1>; j++){
            int x;cin>>x;
            b.push_back(x);
        }
        cout<<count(a,b)><<endl>;
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
