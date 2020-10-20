#npm run-script build
rm -rf /srv/websites/files.brycec.me/_h5ai
cp -r build/_h5ai /srv/websites/files.brycec.me/
chmod 777 /srv/websites/files.brycec.me/_h5ai/public/cache
chmod 777 /srv/websites/files.brycec.me/_h5ai/private/cache
curl "https://raw.githubusercontent.com/GraphtyLove/h5ai/master/src/_h5ai/public/css/styles.css" > /srv/websites/files.brycec.me/_h5ai/public/css/styles.css
cat >> /srv/websites/files.brycec.me/_h5ai/public/css/styles.css <<EOL
#pv-content-txt {
  color: black;
}
#pv-content-txt img {
  max-width: 100%;
}
#pv-content-aud {
    width: 100% !important;
    max-width:100%;
    max-height:100%;
    bottom: 50px !important;
}
option {
   color: black;
}
#root.info #tests .label {
   color: black;
}
#root.info #header a {
   color: white;
}

/* width */
::-webkit-scrollbar {
  width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #f1f1f1; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: #888; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #555; 
}

#toolbar .tool img {
  fill: white
}

#view.view-icons .landscape {
  background: inherit;
}
EOL
