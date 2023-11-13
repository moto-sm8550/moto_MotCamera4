.class public interface abstract Lcom/motorola/camera/background/service/jms/TransactionDao;
.super Ljava/lang/Object;
.source "TransactionDao.kt"


# virtual methods
.method public abstract count()I
.end method

.method public abstract deleteById(J)I
.end method

.method public abstract insert(Lcom/motorola/camera/background/service/jms/Transaction;)J
.end method

.method public abstract selectAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/service/jms/Transaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selectById(J)Lcom/motorola/camera/background/service/jms/Transaction;
.end method

.method public abstract update(JLjava/lang/String;)I
.end method

.method public abstract update(Lcom/motorola/camera/background/service/jms/Transaction;)I
.end method

.method public abstract updateMarkForDelete(JZ)I
.end method

.method public abstract updateMsg(JIILjava/lang/String;I)I
.end method

.method public abstract updateRetryCount(JI)I
.end method
