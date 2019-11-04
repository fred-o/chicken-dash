# Download the relevant docs
wget --mirror --convert-links --adjust-extension --page-requisite --no-parent --reject-regex "(.*)\?(.*)" http://wiki.call-cc.org/man/5/

# Adjust chicken.css
cat <<EOF >> wiki.call-cc.org/chicken.css

#menu, #search, #page-specific-links, #toc {
    display: none;
}
#content {
    padding-top: 70px;
}
EOF

dashing build
