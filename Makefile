all:
	$(CC)  hello_github_code_scanning.c

upload_sarif:
	echo '{"commit_sha":"632d75d3ac6de25d1384766e3da94fee196424b9","ref":"refs/heads/main","sarif":' "\"`gzip -c sample_scan_build_run.sarif | base64 -w0`\"" "}" > file
	curl   -X POST   -H "Accept: application/vnd.github.v3+json" -u riteshja88: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  https://api.github.com/repos/riteshja88/hello_github_code_scanning/code-scanning/sarifs   -d '@file'
