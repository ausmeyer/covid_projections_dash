this.file <- list.files()[grep(paste('*.csv', sep = ''), list.files())]
file.remove(this.file)

tmp <- tempfile()
data.folder <- paste('https://data.humdata.org/dataset/29d5f1e8-062e-4d30-be0c-bc50fab2a7c1/resource/4c934a8f-123c-45e3-8191-cfa8ce5c3158/download/')
new.data.file <- paste('covid19_forecast_file_formatted_2021-03-27.zip', sep = '')
df.proj <- download.file(paste(data.folder, new.data.file, sep = ''), tmp)
unzip(tmp, exdir = './')

#https://data.humdata.org/dataset/29d5f1e8-062e-4d30-be0c-bc50fab2a7c1/resource/4c934a8f-123c-45e3-8191-cfa8ce5c3158/download/covid19_forecast_file_formatted_2021-03-27.zip