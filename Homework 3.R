############## 1
# 4.5b
nzparty <- c("National" , "Labour" , "Greens" , "Maori", "Other")
nzperson <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
nzgender.num <- c(1,0,0,0,1,1,1,0,0,0,0,1,0,1,1,1,0,0,0,0)
nzgender.char <- c("F","M","M","M","F","F","F","M","M","M","M","F","M","F","F",
                   "F","M","M","M","M")
nzchoice.num <- c(1,0,0,1,0,2,0,0,2,3,2,1,0,0,1,1,0,0,1,3)
nzchoice.char <- c("Labour","National","National","Labour","National","Greens",
                   "National","National","Greens","Other","Greens","Labour",
                   "National","National","Labour","Labour","National",
                   "National","Labour","Other")

nzgender.fac <- factor(nzgender.char, ordered = TRUE)
nzgender.fac

nzgender.fac <- factor(nzgender.char)
nzgender.fac

nzchoice.fac <- factor(nzchoice.char, ordered = TRUE)
nzchoice.fac

nzchoice.fac <- factor(nzchoice.char)
nzchoice.fac

# In both cases of creating the factor vectors based on sex and party in 4.5b,
# it doesn't matter if we use ordered=TRUE since both factor vectors are
# comprised of categorical-nominal elements, meaning that both gender and party
# cannot be logically ranked. R arranges the levels of the factor vectors based 
# on the elemental value of the first letter in each character such that if we
# use ordered=TRUE Greens is less than Labour since G is the 7th element in the 
# alphabet and L is the 12th element, and since 7 < 12, Greens is the first 
# level since it is less than Labour based on the fact that element value of G
# is less than L

# 4.5c(i)
nzmalechoice.fac <- nzchoice.fac[nzgender.fac == "M"]
nzmalechoice.fac

# 4.5c(ii)
nznationalgender.fac <- nzgender.fac[nzchoice.fac == "National"]
nznationalgender.fac

# 4.5d
newparty.char <- c("National","Maori","Maori","Labour","Greens",
                            "Labour")
newparty.fac <- factor(newparty.char)

newgender.char <- c("M","M","F","F","F","M")
newgender.fac <- factor(newgender.char)

updatednzchoice.fac <-factor(c(nzchoice.fac, newparty.fac))
updatednzchoice.fac

updatednzgender.fac <- factor(c(nzgender.fac,newgender.fac))
updatednzgender.fac



############## 2
list1 <- list(seq(from = -4, to = 4,length.out=20), 
          matrix(data=c(F,T,T,T,F,T,T,F,F),nrow=3,ncol=3), c("don","quixote"),
          factor(c("LOW","MED","LOW","MED","MED","HIGH")))
names(list1) <- c("sequence","matrix","charactervector","factorvector")
list1

# 5.1a(i)
list1[[2]][c(2,1),c(2,3)]



############## 3

# 5.1a(ii)
list1[[3]][1] <- sub(pattern = "d", replacement="D", x=list1[[3]][1])
list1[[3]][2] <- sub(pattern = "q", replacement="Q", x=list1[[3]][2])
list1

cat("\"Windmills! ATTACK!\" \n    -\\", list1[[3]][1]," ",list1[[3]][2],"/-", 
    sep ="")



############## 4

# a) 
?which()

# b)
which(LETTERS == "L")
# The result is that which(LETTERS == "B") returns a value of 2 probably because
# B is the second element in the alphabet

# c)
x <- c(3,7,7,8,9,10,1)
which(x == 7)
which(x > 7)

# d)
m <- matrix(rep(c(-1, 0, 1), 4), nrow = 4)
m
PracticeWhich <- which(m==0,arr.ind=TRUE)
PracticeWhich
# The order of the result is that PracticeWhich returns the index position of 
# all zeros in the martix m, in a matrix due to the use of arr.ind=TRUE

class(PracticeWhich)
# PracticeWhich is a matrix class



############## 5
which(list1[[1]] > 1)

