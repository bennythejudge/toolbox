#!/bin/bash

echo "Using string interpolation to extract entries and print them"

echo "JSON"
cat << EOF
{
    "users": [
        {
            "first": "Stevie",
            "last": "Wonder"
        },
        {
            "first": "Michael",
            "last": "Jackson"
        }
    ]
}
EOF

echo "JQ"

echo
echo
echo "example #1"

cat << EOF
jq -r '.users[] | "\(.first) \(.last)"'
EOF


echo
echo
echo "In action:"
cat << EOF | jq -r '.users[] | "\(.first) \(.last)"'
{
    "users": [
        {
            "first": "Stevie",
            "last": "Wonder"
        },
        {
            "first": "Michael",
            "last": "Jackson"
        }
    ]
}
EOF

echo
echo
echo "example #2"

cat << EOF
jq '.users[] | "\(.first) \(.last)"'
EOF



cat << EOF | jq '.users[] | "\(.first) \(.last)"'
{
    "users": [
        {
            "first": "Stevie",
            "last": "Wonder"
        },
        {
            "first": "Michael",
            "last": "Jackson"
        }
    ]
}
EOF

echo
echo
echo "example #3"

cat << EOF
jq -r '.users[] | .first + "," + .last'
EOF

cat << EOF | jq -r '.users[] | .first + "," + .last'
{
    "users": [
        {
            "first": "Stevie",
            "last": "Wonder"
        },
        {
            "first": "Michael",
            "last": "Jackson"
        }
    ]
}
EOF


echo "done!"