print <<EOF
This is the first way of creating
    here document ie. multiple line string.
EOF

print <<"EOF";
    This is the first way of creating
    here document ie. multiple line string.
EOF

print <<`EOC`
    echo hi here
    echo hi there
EOC

print <<"foo", <<"bar"
    i said foo.
foo
    i sais bar
bar