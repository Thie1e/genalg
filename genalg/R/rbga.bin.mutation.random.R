rbga.bin.mutation.random <- function(population=NA, mutationChance=NA) {
    if (is.na(population)) stop("A population must be given as input.")
    if (is.matrix(population)) stop("The population must be matrix.")

    vars = ncol(population)
    popSize = nrow(population)

    if (is.na(mutationChance)) mutationChance = 1/(vars+1)

    mutationCount = 0
    for (object in 1:popSize) { # don't mutate the best
        for (var in 1:vars) {
            if (runif(1) < mutationChance) { # ok, do mutation
                ## sample new bit with zeroToOneRatio change
                population[object,var] = sample(c(rep(0,zeroToOneRatio),1), 1);
                mutationCount = mutationCount + 1;
            }
        }
    }
    mutationCount
}
