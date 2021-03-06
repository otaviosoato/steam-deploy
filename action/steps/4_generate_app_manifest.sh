#!/bin/sh

echo ""
echo "#################################"
echo "#    Generating App Manifest    #"
echo "#################################"
echo ""

cat << EOF > "manifest${appId}.vdf"
"appbuild"
{
  "appid" "$appId"
  "desc" "$buildDescription"
  "buildoutput" "BuildOutput"
  "contentroot" "$rootPath"
  "setlive" "$releaseBranch"
  "preview" "$previewEnabled"
  "local" "$localContentServer"

  "depots"
  {$(echo "$DEPOTS" | sed 's/\\n/\
/g')}
}
EOF

cat manifest.vdf
echo ""
