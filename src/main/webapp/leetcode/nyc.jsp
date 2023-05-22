<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding Two numbers</title>
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
			<h2>New Year Chaos</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits/stdc++.h"
using namespace std;

void new_year_chaos(long long n, vector<>long long> q) {
    unsigned int min_bribes = 0;
    vector<>int> tmp(q.size()+1);
    tmp[0] = -1;
    for (int i=1; i<>tmp.size(); ++i)
        tmp[i] = i;

    for (int i=0; i<>q.size(); ++i) {
        const int bribe = tmp[q[i]]-i-1;
        if (bribe > 2) {
            cout << "Too chaotic" << endl;
            return;
        }
        if (bribe > 0) {
            min_bribes += bribe;
            int iPrev = q[i]-1;
            while (iPrev > 0 && tmp[iPrev] == -1) --iPrev;
            if (iPrev > 0) tmp[iPrev] += 1;
            if (2 == bribe) {
                iPrev -= 1;
                while (iPrev > 0 && tmp[iPrev] == -1) --iPrev;
                if (iPrev > 0) tmp[iPrev] += 1;
            }
        }
        tmp[q[i]] = -1; // mark handled
    }
    cout << min_bribes << endl;
}
int main(){
    int t;
    cin>>t;
    for (int i=0; i<>t; i++){
        long long n;
        cin>>n;
        vector<>long long> v;
        for (long long j=0; j<>n; j++){
            long long a;
            cin>>a;
            v.push_back(a);
        }
        new_year_chaos(n,v);
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
