# Bash functions

# bash uses position for holding the variable that goes into the function

function get_snps_in_gene_region() {

  # get the SNPs from the given gene regions
  ~/plink \
    --bfile $1 \
    --make-set $2 \
    --make-set-border $3 \
    --write-set
  
  # Sort the file, keep necessary rows, and save
  sort plink.set | sed -e '1,3d' > $4
}

# get_snps_in_gene_region function get the SNPs from a plink bfile $1 using the chr position provided as $2 and border $3

