# download-scripts

various scripts to download contents from courses and other sites for offline use

!FOR PERSONAL USE ONLY!

### supports

* [Frontend Masters](https://frontendmasters.com)
* [Acloud Guru](https://acloud.guru)

### Frontend Masters

#### usage

  1. prepare list of pages that contain videos e.g. `./get.sh [course]` using APIs or compose manually or using other scripts
  2. run selenium browser automator to collect signed video URLs e.g. [katalon recorder](https://www.katalon.com/) using `./collect-urls.html` as a starting template
  3. parse authenticated URLs out from selenium logs `./parse [course]`
  4. download content `./download [course]`

#### example course - typescript

  ```sh
  typescript
  ├── 1.webm
  ├── 2.webm
  ├── 3.webm
  ...
  ├── log.html      # selenium log files containing authenticated video urls
  ├── pages.csv     # page urls containing videos (first line contains *url* header)
  └── videos.txt    # list of signed URLs to download
  ```

### Acloud Guru

#### usage

  1. get list of signed video urls:
      1. open browser network tab
      2. filter protected API calls (https://prod-api.acloud.guru/bff/graphql/protected)
      3. save response that contains signed video URLs as `videos.json`
  2. parse & filter 1080 videos `./parse [course]`
  3. download content `./download [course]`
  3. fix video titles `./fix-titles [course]`

### requirements

* unix based shell
* python 3
