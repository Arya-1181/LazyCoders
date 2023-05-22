<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bomber man</title>
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
			<h2>Bomberman</h2>
		</div>

		<div class="solution">
			<h2>Solution :</h2>
		</div>

		<pre class="line-numbers language-java">
    <code>
#include "bits/stdc++.h"

using namespace std;

int main(){
    int r,c,n;
    cin>>r>>c>>n;
    string s[r];
    for (int i=0; i<r>; i++){
        cin>>s[i];
    }
    //input ends
    
    vector <int> v;
    for (int j=0; j<r>; j++){
            for (int k=0; k<c>; k++){
                if (s[j].at(k)=='O')
                v.push_back(j*10+k);
            }
        }
    //First second completed
    for (int i=2; i<=n; i++){
        if (i%2==0){
            for (int j=0; j<r>; j++){
            for (int k=0; k<c>; k++){
                if (s[j].at(k)=='.')
                s[j].at(k)='O';
            }
        }
        }
        
        else if (i%2!=0){
            for (int i=0; i<v.size()>; i++){
            int a=v[i]/10;
            int b=v[i]%10;
            s[a].at(b)='.';
            if (a==0&&b==0){
               s[a+1].at(b)='.';
               s[a].at(b+1)='.';
            }
            
            else if (a==0&&b==c-1){
                s[a+1].at(b)='.';
                s[a].at(b-1)='.';
            }
            
            else if (a==r-1&&b==0){
                s[a-1].at(b)='.';
                s[a].at(b+1)='.';
            }
            
            else if (a==r-1&&b==c-1){
                s[a-1].at(b)='.';
                s[a].at(b-1)='.';
            }
            
            else if (a==0){
                if (b==0||b==c-1)
                break;
                else{
                    s[a+1].at(b)='.';
                    s[a].at(b+1)='.';
                    s[a].at(b-1)='.';
                }
                
            }
            
            else if (a==r-1){
                if (b==0||b==c-1)
                break;
                else{
                    s[a-1].at(b)='.';
                    s[a].at(b+1)='.';
                    s[a].at(b-1)='.';
                }
            }
            
            else if (b==0){
                if (a==0||a==r-1)
                break;
                else{
                    s[a+1].at(b)='.';
                    s[a-1].at(b)='.';
                    s[a].at(b+1)='.';
                    
                }
            }
            
            else if (b==c-1){
                if (a==0||a==r-1)
                break;
                else{
                    s[a+1].at(b)='.';
                    s[a-1].at(b)='.';
                    s[a].at(b-1)='.';
                }
            }
            
            else{
                s[a+1].at(b)='.';
                s[a-1].at(b)='.';
                s[a].at(b+1)='.';
                s[a].at(b-1)='.';
            }
        
        }
        }
    }
    //output
    for (int i=0; i<r>; i++){
        cout<<s[i]><<endl>>;
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
