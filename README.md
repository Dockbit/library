# Dockbit Library

![Deploy status](https://img.shields.io/dockbit/dockbit/library.svg?token=Hstg3Cjd4CAPJb573HKAN57d&logo=dockbit)

Every deployment that launches on the Dockbit platform is backed by a [Provider](http://docs.dockbit.com/integrations/). Providers are modeled after a Docker image plus a UI component. 

Dockbit runs each deployment in a container, offering isolation and a clean-slate for every deployment step. This makes sure that no state is persistent between deployments. Capitalizing on [Docker](https://www.docker.com/) containers not only allows us to launch your deployments on Dockbit really fast, but also depend on the Dockerfile as a standardized format for building and extending integrations.

The Library is a composed of Dockbit-maintained Docker images. Each image includes a set of requirements needed to seamlessly integrate and run various software tools on the Dockbit platform.

All images are built on top of the [Base image](base/). There are no Providers that utilize the Base image directly, each Provider builds it's corresponding image(s) on top of Base.

The Base image utilizes the [latest LTS](https://github.com/Dockbit/library/blob/master/base/Dockerfile#L1) release of Ubuntu.


## Image types 

There are multiple types of Images. The difference mainly stems from the nature of the Provider:
  * _Webhook-based Providers_: No Docker Images are needed for those. Only UI components for displaying the hook URL. Examples include [Jenkins](https://docs.dockbit.com/integrations/jenkins/) and [Travis CI](https://docs.dockbit.com/integrations/travis/).
  * _Non-versioned Providers_: Tools or API clients where the only version available is the latest. Examples include [Packer](packer/) and [AWS CLI](aws_cli).
  * _Multi-versioned Providers_: Those provide the capability of choosing between multiple versions of the Provider. Mostly needed when dealing with Providers that are about languages or API clients with versioning constraints. Each version of the Provider matches a Docker image tag that is named after the specific version. Examples include [Ruby](ruby/) and [Chef](chef/).
    * Dockerfiles for versioned images are generated off [templates](https://blog.dockbit.com/templating-your-dockerfile-like-a-boss-2a84a67d28e9#.yx245zv1e).

We’re continuously pushing image updates to the [Dockbit organization on Docker Hub](https://hub.docker.com/u/dockbit/).


## Contributing

 * Open a [GitHub Issue](https://github.com/Dockbit/library/issues/new) to submit a request for Providers or improvements.
 * Submit a [GitHub Pull Request](https://help.github.com/articles/using-pull-requests/) with new Providers or patches.


## License

Licensed under the Apache License, Version 2.0 (the "License"); you
may not use this file except in compliance with the License. You may
obtain a copy of the License at


```
http://www.apache.org/licenses/LICENSE-2.0
```
