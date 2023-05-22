<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DNA health</title>
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
			<h2>DNA health</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits/stdc++.h"

using namespace std;

int main(){
    int n;
    cin>>n;
    vector <string> goodgenes;
    for (int i=0; i<n>; i++){
        string s;
        cin>>s;
        goodgenes.push_back(s);
    }
    vector <int> health;
    for (int i=0; i<n>; i++){
        int a;
        cin>>a;
        health.push_back(a);
    }
    int t;
    cin>>t;
    vector <int> start;
    vector <int> end;
    vector <string> sample;
    for (int i=0; i<t>; i++){
        int a,b;
        string s;
        cin>>a>>b>>s;
        start.push_back(a);
        end.push_back(b);
        sample.push_back(s);
    }
    //Cin ends here
    vector <int> result;
    for (int i=0; i<t>; i++){
        vector <string> trim;//::iterator it;
        vector <string> check;
        vector <int> value;
        int sum=0;
        
        for (int j=start[i]; j<=end[i]; j++){
            trim.push_back(goodgenes[j]);
            value.push_back(health[j]);
            check.push_back(goodgenes[j]);
        }
        for (int j=0; j<trim.size()>; j++){
            int l=trim[j].length();
            
            for (int k=0; k<=sample[i].size()-l; k++){
                string match=sample[i].substr(k,l);
                if (trim[j]==match)
                sum=sum+value[j];
                
            }
            
        }
        result.push_back(sum);
    }
    sort(result.begin(),result.end());
    cout<<result[0]><<" "<<result[result.size()-1]>;
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
