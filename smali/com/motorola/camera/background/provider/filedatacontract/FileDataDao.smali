.class public interface abstract Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao;
.super Ljava/lang/Object;
.source "FileDataDao.kt"


# virtual methods
.method public abstract deleteAll()I
.end method

.method public abstract deleteById(J)I
.end method

.method public abstract insert(Lcom/motorola/camera/background/provider/filedatacontract/FileData;)J
.end method

.method public abstract selectAllCursors()Landroid/database/Cursor;
.end method

.method public abstract selectByIdCursor(J)Landroid/database/Cursor;
.end method

.method public abstract update(Lcom/motorola/camera/background/provider/filedatacontract/FileData;)I
.end method
