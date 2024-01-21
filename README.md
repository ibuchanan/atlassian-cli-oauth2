# Atlassian REST API on the CLI

[![Apache license](https://img.shields.io/badge/license-Apache%202.0-blue.svg?style=flat-square)](LICENSE) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](CONTRIBUTING.md)

A collection of tools for exploring the Atlassian REST APIs and diagnosing problems.

## Usage

**Are you exploring the Atlassian REST APIs?**
Postman and the like are excellent tools for one-by-one API requests,
but sometimes you need something that scales up a bit better
or persists results to files for further processing.
CLI tools can be easily wired together with shell scripts.

**Are you hitting a REST API problem or bug?**
Curl can be a great way to express a REST request
that can be run almost universally.
However, what is often missing are the "arrangement" and "assertion".
Properly reproducing a bug may require additional steps as setup,
and the failure may need precise specification.
CLI tools (including curl) can provide better expression for both.

## Installation

* Clone the repo.
* Initialize the devcontainer.

## Exploration

As we know from tools like Postman and Curl,
it can be helpful to isolate an HTTP request
from the problems that might occur in code.
With a working HTTP request,
the code to implement it is usually trivial.

The examples provided in this project are intended
to demonstrate the Atlassian-specific nuances in executable form.
Sometimes these working examples are easier to understand than plain English.

* OAuth2

## Diagnostics

* Hurl

## Contributions

Contributions to "Atlassian REST API on the CLI" are welcome!
Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details. 

## License

Copyright (c) [2024] Atlassian US., Inc.
Apache 2.0 licensed, see [LICENSE](LICENSE) file.

<br/> 

[![With ❤️ from Atlassian](https://raw.githubusercontent.com/atlassian-internal/oss-assets/master/banner-with-thanks-light.png)](https://www.atlassian.com)
