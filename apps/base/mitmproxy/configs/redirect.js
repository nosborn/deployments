function redirectToUrlParameter(r) {
  var url = r.args.url;
  if (url) {
    r.return(307, decodeURIComponent(url));
  } else {
    r.return(400);
  }
}

export default { redirectToUrlParameter };
