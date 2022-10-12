FROM fukamachi/sbcl:2.2.3

WORKDIR /app
COPY . /app

RUN set -x; \
  ros install qlot clack && qlot install

ENV QUICKLISP_HOME /app/.qlot/

ENTRYPOINT [ \
  "qlot", "exec", "ros", \
  "-e", "(ql:quickload :swank)", \
  "-e", "(setf swank::*loopback-interface* \"0.0.0.0\")", \
  "-e", "(swank:create-server :port 6005 :dont-close t :style :spawn)", \
  "-l", "bundle-libs/bundle.lisp", \
  "-S", ".", "~/.roswell/bin/clackup", "--server", ":woo", "--address", "0.0.0.0", "--port", "3000", "app.lisp" \
]
