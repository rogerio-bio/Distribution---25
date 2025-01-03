# Clipping variables - v.0.0.2

# Carregar bibliotecas
library(terra)
library(magrittr)

# Caminhos para os arquivos
shapefile_path <- "C:/Users/roger/OneDrive/Projetos - Onça/Distribution - 25/Data - shp and tiffs/shs's - data/occurrence.shp"
tif_folder <- "C:/Users/roger/OneDrive/Projetos - Onça/Distribution - 25/Data - shp and tiffs/Earthenv - raw"

# Carregar shapefile
shp <- vect(shapefile_path)

# Importar e combinar preditores diretamente
predictors <- list.files(tif_folder, pattern = "\\.tif$", full.names = TRUE) %>% rast()

# Definir diretório de saída para Chelsa
chelsa_output_folder <- "C:/Users/roger/OneDrive/Projetos - Onça/Distribution - 25/Data - shp and tiffs/Chelsa - processed"
if (!dir.exists(chelsa_output_folder)) dir.create(chelsa_output_folder, recursive = TRUE)

# Processar e salvar variáveis Chelsa individualmente - v.0.0.2
bio1 <- terra::crop(predictors$`CHELSA_bio1_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio1, filename = file.path(chelsa_output_folder, "bio1.tif"), overwrite = TRUE)

bio2 <- terra::crop(predictors$`CHELSA_bio2_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio2, filename = file.path(chelsa_output_folder, "bio2.tif"), overwrite = TRUE)

bio3 <- terra::crop(predictors$`CHELSA_bio3_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio3, filename = file.path(chelsa_output_folder, "bio3.tif"), overwrite = TRUE)

bio4 <- terra::crop(predictors$`CHELSA_bio4_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio4, filename = file.path(chelsa_output_folder, "bio4.tif"), overwrite = TRUE)

bio5 <- terra::crop(predictors$`CHELSA_bio5_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio5, filename = file.path(chelsa_output_folder, "bio5.tif"), overwrite = TRUE)

bio6 <- terra::crop(predictors$`CHELSA_bio6_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio6, filename = file.path(chelsa_output_folder, "bio6.tif"), overwrite = TRUE)

bio7 <- terra::crop(predictors$`CHELSA_bio7_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio7, filename = file.path(chelsa_output_folder, "bio7.tif"), overwrite = TRUE)

bio8 <- terra::crop(predictors$`CHELSA_bio8_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio8, filename = file.path(chelsa_output_folder, "bio8.tif"), overwrite = TRUE)

bio9 <- terra::crop(predictors$`CHELSA_bio9_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio9, filename = file.path(chelsa_output_folder, "bio9.tif"), overwrite = TRUE)

bio10 <- terra::crop(predictors$`CHELSA_bio10_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio10, filename = file.path(chelsa_output_folder, "bio10.tif"), overwrite = TRUE)

bio11 <- terra::crop(predictors$`CHELSA_bio11_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio11, filename = file.path(chelsa_output_folder, "bio11.tif"), overwrite = TRUE)

bio12 <- terra::crop(predictors$`CHELSA_bio12_1981-2010_V.2.1(1)`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio12, filename = file.path(chelsa_output_folder, "bio12.tif"), overwrite = TRUE)

bio13 <- terra::crop(predictors$`CHELSA_bio13_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio13, filename = file.path(chelsa_output_folder, "bio13.tif"), overwrite = TRUE)

bio14 <- terra::crop(predictors$`CHELSA_bio14_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio14, filename = file.path(chelsa_output_folder, "bio14.tif"), overwrite = TRUE)

bio15 <- terra::crop(predictors$`CHELSA_bio15_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio15, filename = file.path(chelsa_output_folder, "bio15.tif"), overwrite = TRUE)

bio16 <- terra::crop(predictors$`CHELSA_bio16_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio16, filename = file.path(chelsa_output_folder, "bio16.tif"), overwrite = TRUE)

bio17 <- terra::crop(predictors$`CHELSA_bio17_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio17, filename = file.path(chelsa_output_folder, "bio17.tif"), overwrite = TRUE)

bio18 <- terra::crop(predictors$`CHELSA_bio18_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio18, filename = file.path(chelsa_output_folder, "bio18.tif"), overwrite = TRUE)

bio19 <- terra::crop(predictors$`CHELSA_bio19_1981-2010_V.2.1`, shp, touches = TRUE) %>% mask(shp)
writeRaster(bio19, filename = file.path(chelsa_output_folder, "bio19.tif"), overwrite = TRUE)

# Diretório de saída para Earthenv
earthenv_output_folder <- "C:/Users/roger/OneDrive/Projetos - Onça/Distribution - 25/Data - shp and tiffs/Earthenv - processed"
if (!dir.exists(earthenv_output_folder)) dir.create(earthenv_output_folder, recursive = TRUE)

# Processar e salvar variáveis Earthenv individualmente - v.0.0.2
output_1 <- terra::crop(predictors$consensus_full_class_1, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_1, filename = file.path(earthenv_output_folder, "class_1.tif"), overwrite = TRUE)

output_2 <- terra::crop(predictors$consensus_full_class_2, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_2, filename = file.path(earthenv_output_folder, "class_2.tif"), overwrite = TRUE)

output_3 <- terra::crop(predictors$consensus_full_class_3, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_3, filename = file.path(earthenv_output_folder, "class_3.tif"), overwrite = TRUE)

output_4 <- terra::crop(predictors$consensus_full_class_4, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_4, filename = file.path(earthenv_output_folder, "class_4.tif"), overwrite = TRUE)

output_5 <- terra::crop(predictors$consensus_full_class_5, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_5, filename = file.path(earthenv_output_folder, "class_5.tif"), overwrite = TRUE)

output_6 <- terra::crop(predictors$consensus_full_class_6, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_6, filename = file.path(earthenv_output_folder, "class_6.tif"), overwrite = TRUE)

output_7 <- terra::crop(predictors$consensus_full_class_7, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_7, filename = file.path(earthenv_output_folder, "class_7.tif"), overwrite = TRUE)

output_8 <- terra::crop(predictors$consensus_full_class_8, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_8, filename = file.path(earthenv_output_folder, "class_8.tif"), overwrite = TRUE)

output_9 <- terra::crop(predictors$consensus_full_class_9, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_9, filename = file.path(earthenv_output_folder, "class_9.tif"), overwrite = TRUE)

output_11 <- terra::crop(predictors$consensus_full_class_11, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_11, filename = file.path(earthenv_output_folder, "class_11.tif"), overwrite = TRUE)

output_12 <- terra::crop(predictors$consensus_full_class_12, shp, touches = TRUE) %>% mask(shp)
writeRaster(output_12, filename = file.path(earthenv_output_folder, "class_12.tif"), overwrite = TRUE)

# Verificar a resolução de cada raster/banda
resolucoes <- sapply(1:nlyr(predictors), function(i) res(predictors[[i]]))

# Mostrar as resoluções
print(resolucoes)

# Verificar se todas as resoluções são iguais
res_iguais <- all(apply(resolucoes, 1, function(x) all(x == x[1])))
if (res_iguais) {
  print("Todos os rasters possuem a mesma resolução.")
} else {
  print("Os rasters possuem resoluções diferentes.")
}
