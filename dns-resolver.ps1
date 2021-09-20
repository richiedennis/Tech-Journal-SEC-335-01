param ($ip, $server)
1..254 | ForEach-Object {Resolve-DnsName -DnsOnly "$ip.$_" -Server $server -ErrorAction Ignore}
