addEventListener("fetch", event => {
  let url = new URL(event.request.url);
  if (url.pathname == "/" && url.search == "") {
    url.href="https://jpksvh-8787.csb.app"
    let request = new Request(url, event.request);
    event.respondWith(fetch(request));
  }
})