.class public final Lcom/motorola/camera/panorama/PanoCaptureCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "PanoCaptureCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/panorama/PanoCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mPreviewImageSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoCaptureCallable;->mPreviewImageSize:Lcom/motorola/camera/PreviewSize;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/panorama/PanoCallableReturn<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoCaptureCallable;->mPreviewImageSize:Lcom/motorola/camera/PreviewSize;

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iput v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageWidth:I

    .line 4
    iput p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageHeight:I

    .line 5
    iget-object p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 6
    monitor-exit v0

    goto/16 :goto_2

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->applySettings()V

    .line 8
    iget-object p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v1, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    invoke-virtual {p0, v2, v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->start(II)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    const-string v3, "MorphoEngine"

    .line 9
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP3.start error ret:0x%08X"

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    .line 11
    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit v0

    goto :goto_2

    .line 13
    :cond_1
    :try_start_2
    iget-object p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    if-eqz p0, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->clearStockData()V

    .line 15
    :cond_2
    iput-boolean v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsCapturing:Z

    .line 16
    iget-object p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {p0, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setAttachEnabled(Z)V

    .line 17
    iget-object p0, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, p0, v1

    .line 18
    sget-object p0, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    .line 19
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PANO_DUMP_INPUT_IMAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 21
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 22
    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_6

    const-string p0, "Pano"

    .line 23
    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    .line 24
    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->enableSaveInputImages(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 26
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v3, p0, v1

    .line 27
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 28
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_6
    invoke-virtual {v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->disableSaveInputImages()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :cond_7
    :goto_1
    monitor-exit v0

    .line 31
    :goto_2
    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0

    throw p0
.end method

.method public final callback(Lcom/motorola/camera/panorama/PanoCallableReturn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/panorama/PanoCallableReturn<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/panorama/PanoCallableReturn;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoCallable;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/panorama/PanoCallableListener;

    if-eqz p0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/panorama/PanoCallableReturn;->exception:Ljava/lang/Exception;

    invoke-interface {p0, p1}, Lcom/motorola/camera/panorama/PanoCallableListener;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoCaptureCallable"

    return-object p0
.end method
