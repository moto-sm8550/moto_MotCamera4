.class public final Lcom/motorola/camera/panorama/PanoStopCaptureCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "PanoStopCaptureCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/panorama/PanoCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 8
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

    move-result-object p0

    .line 2
    monitor-enter p0

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsCapturing:Z

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 5
    monitor-exit p0

    goto/16 :goto_2

    .line 6
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 7
    iget v3, v3, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    if-eq v3, v4, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v0

    .line 8
    :goto_0
    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 9
    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/DirectionFunction;

    .line 10
    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    .line 11
    iput-boolean v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    .line 12
    invoke-virtual {v1, v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setAttachEnabled(Z)V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v3, :cond_3

    sget-object v2, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    .line 14
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_MAKE_360_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanorama360ViewDisable()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v4

    .line 18
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    .line 19
    invoke-virtual {v3}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result v5

    .line 20
    sget-object v6, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    .line 21
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 22
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 23
    check-cast v6, Ljava/lang/String;

    const-string v7, "Off"

    .line 24
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v4

    .line 25
    iget v3, v3, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    rsub-int v5, v5, 0x168

    :cond_4
    int-to-double v5, v5

    .line 26
    invoke-virtual {v1, v2, v5, v6}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->end(ID)I

    move-result v1

    if-eqz v1, :cond_5

    const-string v2, "MorphoEngine"

    .line 27
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP3.end error ret:0x%08X"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit p0

    goto :goto_2

    .line 29
    :cond_5
    monitor-exit p0

    .line 30
    :goto_2
    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>()V

    return-object p0

    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    throw v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoStopCaptureCallable"

    return-object p0
.end method
