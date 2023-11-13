.class public final Lcom/motorola/camera/panorama/PanoInitCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "PanoInitCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/panorama/PanoCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mPanoCameraInfo:Lcom/motorola/camera/panorama/PanoCameraInfo;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/PanoCameraInfo;Lcom/motorola/camera/panorama/PanoListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->mPanoCameraInfo:Lcom/motorola/camera/panorama/PanoCameraInfo;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/panorama/PanoCallableReturn<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->mPanoCameraInfo:Lcom/motorola/camera/panorama/PanoCameraInfo;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_1
    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    goto/16 :goto_0

    .line 8
    :cond_0
    :try_start_2
    new-instance v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-direct {v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    .line 9
    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mImageFormat:Ljava/lang/String;

    .line 11
    iput-object v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_format:Ljava/lang/String;

    .line 12
    iput-object v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_format:Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 14
    iput v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    .line 16
    iget-object v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 17
    iput v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    .line 19
    iget v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleH:F

    float-to-double v2, v2

    .line 20
    iput-wide v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovx:D

    .line 21
    iget v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleV:F

    float-to-double v2, v2

    .line 22
    iput-wide v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovy:D

    .line 23
    iget v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mCameraOrientation:I

    .line 24
    iput v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    .line 25
    iget v3, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDisplayRotation:I

    .line 26
    iget v4, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDeviceOrientation:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    add-int/lit16 v3, v3, 0x168

    .line 27
    rem-int/lit16 v3, v3, 0x168

    iput v3, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    .line 28
    sget-object v2, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    .line 29
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_GOAL_ANGLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 30
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 31
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 32
    iput-wide v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->goal_angle:D

    .line 33
    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    .line 34
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_ASPECT_RATION_GAIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 35
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 36
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    .line 37
    iput-wide v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aspect_ratio_gain:D

    .line 38
    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->initializeEngine(Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;)V

    .line 39
    new-instance v1, Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-direct {v1}, Lcom/motorola/camera/panorama/morpho/Settings;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    .line 40
    invoke-virtual {v0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->initSensorFusion()V

    .line 41
    invoke-virtual {v0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setupRoundSensorFusion()V

    .line 42
    iget p0, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mCameraOrientation:I

    .line 43
    invoke-virtual {v0, p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setSensorFusionRotation(I)V

    .line 44
    invoke-virtual {v0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->registerSensorListeners()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    monitor-exit v0

    .line 46
    :goto_0
    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    .line 48
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoInitCallable"

    return-object p0
.end method
