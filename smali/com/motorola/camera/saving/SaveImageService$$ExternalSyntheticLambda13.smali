.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/saving/FileName;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

.field public final synthetic f$3:Lcom/motorola/camera/storage/SharedMediaFile;

.field public final synthetic f$4:Lcom/motorola/camera/saving/FileName;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/saving/FileName;Ljava/io/File;Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;Lcom/motorola/camera/storage/SharedMediaFile;Lcom/motorola/camera/saving/FileName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;->f$0:Lcom/motorola/camera/saving/FileName;

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;->f$2:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    iput-object p4, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;->f$3:Lcom/motorola/camera/storage/SharedMediaFile;

    iput-object p5, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;->f$4:Lcom/motorola/camera/saving/FileName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;->f$0:Lcom/motorola/camera/saving/FileName;

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;->f$2:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    iget-object v3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;->f$3:Lcom/motorola/camera/storage/SharedMediaFile;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda13;->f$4:Lcom/motorola/camera/saving/FileName;

    .line 1
    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v4

    .line 2
    invoke-static {v4}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v4

    .line 3
    invoke-static {v1, v4}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    move-result v5

    .line 4
    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    if-nez v5, :cond_0

    const-string p0, "saveSuperSlowMotion: cannot copy "

    .line 5
    invoke-static {p0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SaveImageService"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 10
    invoke-interface {v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;->onProcessingError()V

    goto :goto_1

    .line 11
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_SUPER_SLOW_MOTION_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Lcom/motorola/camera/storage/SharedMediaFile;->rename(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    .line 16
    :catch_0
    :goto_0
    check-cast v4, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v4}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;->onSaveComplete(Landroid/net/Uri;)V

    :goto_1
    return-void
.end method
