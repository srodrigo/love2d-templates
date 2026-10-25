./build-web.dev.sh

http-server ./dist-dev -p 8085 --cors -c-1 \
  --headers "Cross-Origin-Opener-Policy:same-origin,Cross-Origin-Embedder-Policy:require-corp"

