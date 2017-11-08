FROM docker:stable

MAINTAINER Basilio Vera <basilio.vera@softonic.com>

ARG version="0.1.0-dev"
ARG build_date="unknown"
ARG commit_hash="unknown"
ARG vcs_url="unknown"
ARG vcs_branch="unknown"

LABEL org.label-schema.vendor="softonic" \
    org.label-schema.name="docker-system-prune" \
    org.label-schema.description="Executes the `docker system prune` command" \
    org.label-schema.usage="/src/README.md" \
    org.label-schema.url="https://github.com/softonic/docker-system-prune/blob/master/README.md" \
    org.label-schema.vcs-url=$vcs_url \
    org.label-schema.vcs-branch=$vcs_branch \
    org.label-schema.vcs-ref=$commit_hash \
    org.label-schema.version=$version \
    org.label-schema.schema-version="1.0" \
    org.label-schema.build-date=$build_date

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["--all"]
