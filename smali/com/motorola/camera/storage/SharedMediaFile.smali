.class public interface abstract Lcom/motorola/camera/storage/SharedMediaFile;
.super Ljava/lang/Object;
.source "SharedMediaFile.kt"

# interfaces
.implements Lcom/motorola/camera/storage/MediaFile;


# virtual methods
.method public abstract closeWriteFileDescriptor()V
.end method

.method public abstract getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;
.end method

.method public abstract getMediaStoreUri()Landroid/net/Uri;
.end method

.method public abstract getProcessingMediaUri()Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isInMediaStore()Z
.end method

.method public abstract rename(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setFileName(Ljava/lang/String;)V
.end method
