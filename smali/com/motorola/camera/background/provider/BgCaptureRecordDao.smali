.class public interface abstract Lcom/motorola/camera/background/provider/BgCaptureRecordDao;
.super Ljava/lang/Object;
.source "BgCaptureRecordDao.kt"


# virtual methods
.method public abstract deleteById(J)I
.end method

.method public abstract insert(Lcom/motorola/camera/background/provider/BgCaptureRecord;)J
.end method

.method public abstract selectAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/provider/BgCaptureRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(JLjava/lang/String;II)I
.end method
