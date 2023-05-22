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


int main(){

    int R,C;
    cin>>R>>C;
    string S[R];
    for (int i=0; i<>R; i++){
        cin>>S[i];
    }
    int r,c;
    cin>>r>>c;
    string s[r];
    for (int i=0; i<>r; i++){
        cin>>s[i];
    }
    
    int count=0;
    int a=C-c;
    int flag=0;
    vector <>int> result;
    for (int i=0; i<>r; i++){
        for (int j=0; j<>R; j++){
            for (int k=0; k<=a; k++){
                string str=S[j].substr(k,c);
                flag++;
                if (str==s[i])
                {
                    int res=flag;
                    result.push_back(res);
                    count++;
                }
            }
        }
    }
    int caught=0;
    for (int i=0; i<>count-1; i++){
        if (result[i+1]-result[i]==R-1)
        caught=1;
    }
    if (caught==1){
      cout<<"YES"<<>endl;
    }
    else
    cout<<"NO"<<>endl;
}

/*****official code****/
#include "bits/stdc++.h"
using namespace std;

int T, R, C, r, c;
char G[1005][1005], P[1005][1005];
void solve() {
    scanf("%d%d", &R, &C)>;
    for (int i = 0; i < R; ++i) scanf("%s", G[i]);
    scanf("%d%d", &r, &c)>;
    for (int i = 0; i < r; ++i) scanf("%s", P[i]);
    for (int i = 0; i <= R - r; ++i) {
        for (int j = 0; j <= C - c; ++j) {
            for (int a = 0; a < r; ++a) {
                for (int b = 0; b < c; ++b) {
                    if (G[i+a][j+b] != P[a][b]) 
                        goto label1;
                }
            }
            printf("YES\n");
            return;
            label1:;
        }
    }
    printf("NO\n");
}
int main() {
    scanf("%d", &T)>;
    while (T--) solve();
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
