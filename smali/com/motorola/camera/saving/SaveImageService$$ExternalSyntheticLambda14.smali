.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/FileName;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/FileName;Ljava/io/File;ZJIIILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/saving/FileName;

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$1:Ljava/io/File;

    iput-boolean p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$2:Z

    iput-wide p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$3:J

    iput p6, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$4:I

    iput p7, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$5:I

    iput p8, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$6:I

    iput-object p9, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$7:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$0:Lcom/motorola/camera/saving/FileName;

    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$1:Ljava/io/File;

    iget-boolean v15, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$2:Z

    iget-wide v9, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$3:J

    iget v13, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$4:I

    iget v14, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$5:I

    iget v11, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$6:I

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda14;->f$7:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;

    .line 1
    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    .line 3
    invoke-static {v2, v1}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    move-result v3

    .line 4
    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    if-eqz v3, :cond_0

    .line 5
    check-cast v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v1}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v6

    .line 6
    iget-object v2, v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    .line 7
    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    new-instance v2, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v4

    .line 10
    iget-object v1, v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    .line 11
    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v3, v2

    move v1, v11

    move-wide/from16 v11, v16

    move/from16 v16, v15

    move v15, v1

    invoke-direct/range {v3 .. v16}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v2, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;->onProcessingComplete(Lcom/motorola/camera/CameraData;Landroid/os/Bundle;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;->onProcessingFailed()V

    :goto_0
    return-void
.end method
