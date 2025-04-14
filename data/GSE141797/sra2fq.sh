for sra in `ls sra/*/*.sra`;
do
	fasterq-dump --split-files $sra -O /home/qzhang/data/projects/bioinformatics/powerhouse/data/RNA-seq/fastq/
done
