this.file <- list.files()[grep(paste('*.csv', sep = ''), list.files())]
file.remove(this.file)

tmp <- tempfile()
df.proj <- download.file('https://data.humdata.org/dataset/29d5f1e8-062e-4d30-be0c-bc50fab2a7c1/resource/4c934a8f-123c-45e3-8191-cfa8ce5c3158/download/covid19_forecast_file_formatted_2020-12-24.zip', tmp)
unzip(tmp, exdir = './')