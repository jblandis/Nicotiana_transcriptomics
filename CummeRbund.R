
library(cummeRbund)

#create a CummeRbund database from the Cuffdiff output first time
cuff_data <- readCufflinks("/Users/jacoblandis/Desktop/Nicotiana_DE/Tab_genome_cuffdiff/diff_out_95", genome="/Users/jacoblandis/Desktop/Nicotiana_DE/Tab_genome_cuffdiff/Nitab_v4_5_genome_Scf.fasta",gtfFile="/Users/jacoblandis/Desktop/Nicotiana_DE/Tab_genome_cuffdiff/Ntab_scf.gtf", rebuild=T)

cuff_data

#second run
cuff_data <- readCufflinks("/Users/jacoblandis/Desktop/Nicotiana_DE/Tab_genome_cuffdiff/diff_out_60", genome="/Users/jacoblandis/Desktop/Nicotiana_DE/Tab_genome_cuffdiff/Nitab_v4_5_genome_Scf.fasta",gtfFile="/Users/jacoblandis/Desktop/Nicotiana_DE/Tab_genome_cuffdiff/Ntab_scf.gtf", rebuild=F)

cuff_data


#create a FPKM-matrix between replicates
gene.rep.matrix <- repFpkmMatrix(genes(cuff_data))
write.table(gene.rep.matrix, "Replicate values of FPKM.txt", sep='\t', row.names = T, col.names= T, quote = F)
head(gene.rep.matrix)

#report number of genes and transcripts that are DE
gene_diff_data <- diffData(genes(cuff_data))
sig_gene_data <- subset(gene_diff_data, (significant == 'yes'))
nrow(sig_gene_data)
write.table(sig_gene_data, 'diff_genes.txt', sep='\t', row.names = F, col.names= T, quote = F)

#pull out expression information from a list of geneID's
mygenes <- c("XLOC_001199","XLOC_065889","XLOC_062138","XLOC_068674","XLOC_002462","XLOC_035131","XLOC_028204","XLOC_053568","XLOC_020756","XLOC_021392","XLOC_034547","XLOC_035858","XLOC_024762","XLOC_020108","XLOC_011788","XLOC_022097","XLOC_015503","XLOC_065234","XLOC_014773","XLOC_027868","XLOC_029888","XLOC_059423","XLOC_045660","XLOC_062742","XLOC_046993","XLOC_057368","XLOC_023386","XLOC_014955","XLOC_033245","XLOC_033368","XLOC_044505","XLOC_049807","XLOC_001318","XLOC_025634","XLOC_025635","XLOC_044584","XLOC_038840","XLOC_038835","XLOC_016387","XLOC_032306","XLOC_069352","XLOC_063699","XLOC_038634","XLOC_057945","XLOC_057948","XLOC_018289","XLOC_057891","XLOC_016701","XLOC_027455","XLOC_034369","XLOC_062227","XLOC_043426","XLOC_045102","XLOC_044250","XLOC_048882","XLOC_063744","XLOC_050627","XLOC_014409","XLOC_014611","XLOC_051682","XLOC_010097","XLOC_023846","XLOC_062865","XLOC_011639","XLOC_069359","XLOC_011641","XLOC_024408","XLOC_029631","XLOC_068658","XLOC_050865","XLOC_013804","XLOC_027580","XLOC_027581","XLOC_010236","XLOC_066473","XLOC_057601")
#mygenes <- c("XLOC_068658","XLOC_010097","XLOC_050865","XLOC_062742","XLOC_025635","XLOC_057948","XLOC_048882","XLOC_043426","XLOC_029631","XLOC_027455","XLOC_066473","XLOC_023386","XLOC_020756")
sampleIDs <- mygenes
mytargets <- getGenes(cuff_data,sampleIDs)
mytargets
EL <- fpkm(mytargets)
write.table(EL, 'tageted_genes.txt', sep='\t', row.names = F, col.names= T, quote = F)


#distribution of FPKM scores with density plots
dens <- csDensity(genes(cuff_data))
dens
densRep <- csDensity(genes(cuff_data), replicates=T)
densRep

#assess distribution of FPKM scores with boxplots
b <- csBoxplot(genes(cuff_data))
b
brep <- csBoxplot(genes(cuff_data), replicates=T)
brep

#compare expression of each gene in two conditions
csScatter(genes(cuff_data), 'small', 'large')

#dendrogram of replicates
dend.rep <- csDendro(genes(cuff_data), replicates=T)
dend.rep


#create a volcano plot fo differentially expressed genes
v <- csVolcanoMatrix(genes(cuff_data))
v

#look at expression levels within a rep
gene.fpkm <- fpkm(genes(cuff_data))
head(gene.fpkm)

#look at expression levels between replicates
gene.repFpkm <- repFpkm(genes(cuff_data))
head(gene.repFpkm)

#create a FPKM-matrix for conditions
gene.matrix <- fpkmMatrix(genes(cuff_data))
head(gene.matrix)


#coding regions
cds_diff_data <- diffData(CDS(cuff_data), 'small', 'large')
sig_cds_data <- subset(cds_diff_data, significant == 'yes')
nrow(sig_cds_data)
write.table(sig_cds_data, 'coding_regions.txt', sep='\t', row.names = F, col.names= T, quote = F)

#creat a matrix of significant features
mySigMat <- sigMatrix(cuff_data, level='genes', alpha=0.05)
mySigMat

#create a gene set from significantly regulated genes
mySigGenIds <- getSig(cuff_data, alpha=0.05, level='genes')
head(mySigGenIds)

length(mySigGenIds)

#table of significant features
mySigTable <- getSigTable(cuff_data, alpha=0.01, level='genes')
head(mySigTable, 20)


#distance matrix
myDistHeat <- csDistHeat(genes(cuff_data))
myDistHeat

myRepDistHeat <- csDistHeat(genes(cuff_data), replicates=T)
myRepDistHeat

genes.PCA <- PCAplot(genes(cuff_data), "PC1","PC2")
genes.PCA

#find genes with similiar expression to gene of interest
mySimilar <- findSimilar(cuff_data, "gene name", n=20)
mySimilar.expression <- expressionPlot(mySimiliar, logMode=T, showErrorbars=F)



#heat map of targeted genes
h<- csHeatmap(mytargets, cluster='both')
h
h.rep <- csHeatmap(mytargets, cluster='both', replicates=T)
h.rep

#boxplot of targeted genes
b <- expressionBarplot(mytargets,showErrorbars=FALSE)
b

#expression plot of a single gene
myGeneId <- ' '
singlegene <- getGene(cuff_data, myGeneID)
g1 <- expressionPlot(singlegene)