# Dev-Project for ONGR CI on ScaleCommerce Platform

We are using GitlabCI because they currently implemented the methodology of Travis CI where all the tests and their config are in the same repo. The advantage of this solution is that we don't have to maintain or configure another software like Jenkins. We want the project repo to be the Single Source of Truth.

Read GitlabCI Docs here: [http://doc.gitlab.com/ci/quick_start/README.html](http://doc.gitlab.com/ci/quick_start/README.html)

## Dev-Server

The Dev-Server is available at http://ci-dev.scale.sc. For easier development this server will have ci-components and webserver-componetents installed All-In-One. Later we will split ci-runners from live-servers but for now this makes it easy to copy build packages to the docroot.

## Provisioning

Please do NOT care about provisioning of installed software. The ScaleCommerce Platform will expose yaml-files to customers and provision everything based on these yaml-files via puppet. The purpose of this project is to implement the technology and the process of building deployable packages from repositories.

## Access

Ask Thomas <tl@scale.sc> or Kazimieras <kazimieras.gurskas@nfq.lt> if you need root access to the dev server.