function skimresources(r) {
  var url = r.args.url;
  if (url) {
    r.return(302, decodeURIComponent(url));
  } else {
    r.return(400);
  }
}

export default { skimresources };
