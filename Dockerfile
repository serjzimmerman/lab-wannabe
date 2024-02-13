FROM rubydata/datascience-notebook:24a7f04dfc46

USER root

RUN apt-get update
RUN apt-get install -y --no-install-recommends  \
            gnuplot                             \
            libtool                             \
            libtool-bin                         \
            autoconf                            \
            autotools-dev                       \
            automake

USER $NB_UID

RUN \
    CPPFLAGS='-Wno-error=deprecated-declarations' \
    gem install           \
        numo-gnuplot      \
        numo-gsl          \
        rbczmq            \
        ffi-rzmq          \
        nyaplot           \
        google_visualr    \
        daru-data_tables  \
        daru-io           \
        spreadsheet
