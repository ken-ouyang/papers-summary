url=[];
for (e of document.getElementsByClassName('rg_meta')) {
  obj=JSON.parse(e.innerHTML);
  url.push(obj.ou)
}
console.log(url.join('\n'));
console.log(url.length)
//Copy result URLs into xxx.url, then
//execute sh downloader.sh xxx.url
