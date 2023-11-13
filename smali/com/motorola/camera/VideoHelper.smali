.class public final Lcom/motorola/camera/VideoHelper;
.super Ljava/lang/Object;
.source "VideoHelper.java"


# static fields
.field public static final ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final ANAMORPHIC_VIDEO_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final NON_STANDARD_VIDEO_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_VIDEO_SIZES_CLI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_VIDEO_SIZES_DEPTH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRUE_BYTE:Ljava/lang/Byte;

.field public static final UNSUPPORTED_DESKTOP_SIZES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_20V9_2:Landroid/util/Size;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/VideoHelper;->NON_STANDARD_VIDEO_FORMATS:Ljava/util/List;

    .line 3
    sget-object v1, Lcom/motorola/camera/VideoFormat;->CLI_FHD:Landroid/util/Size;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_CLI:Ljava/util/List;

    .line 4
    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD:Landroid/util/Size;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/VideoHelper;->SUPPORTED_VIDEO_SIZES_DEPTH:Ljava/util/List;

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/util/Size;

    .line 5
    sget-object v4, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9:Landroid/util/Size;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v6, Lcom/motorola/camera/VideoFormat;->FHD_21V9:Landroid/util/Size;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    sget-object v8, Lcom/motorola/camera/VideoFormat;->FHD_21V9_2:Landroid/util/Size;

    const/4 v9, 0x2

    aput-object v8, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera/VideoHelper;->ANAMORPHIC_VIDEO_SIZES:Ljava/util/List;

    .line 6
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera/VideoHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    const/16 v10, 0x25

    new-array v10, v10, [Landroid/util/Size;

    .line 8
    sget-object v11, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    aput-object v11, v10, v5

    sget-object v5, Lcom/motorola/camera/VideoFormat;->UHD_8K_20V9:Landroid/util/Size;

    aput-object v5, v10, v7

    sget-object v5, Lcom/motorola/camera/VideoFormat;->UHD_8K_20P5V9:Landroid/util/Size;

    aput-object v5, v10, v9

    sget-object v5, Lcom/motorola/camera/VideoFormat;->UHD_6K:Landroid/util/Size;

    aput-object v5, v10, v2

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_6K_39V18:Landroid/util/Size;

    const/4 v5, 0x4

    aput-object v2, v10, v5

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_6K_21V9:Landroid/util/Size;

    const/4 v5, 0x5

    aput-object v2, v10, v5

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_5K:Landroid/util/Size;

    const/4 v5, 0x6

    aput-object v2, v10, v5

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K:Landroid/util/Size;

    const/4 v5, 0x7

    aput-object v2, v10, v5

    sget-object v2, Lcom/motorola/camera/VideoFormat;->EQU_4K:Landroid/util/Size;

    const/16 v5, 0x8

    aput-object v2, v10, v5

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K_19V9:Landroid/util/Size;

    const/16 v5, 0x9

    aput-object v2, v10, v5

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K_19P5V9:Landroid/util/Size;

    const/16 v5, 0xa

    aput-object v2, v10, v5

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K_20V9:Landroid/util/Size;

    const/16 v5, 0xb

    aput-object v2, v10, v5

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K_20P5V9:Landroid/util/Size;

    const/16 v5, 0xc

    aput-object v2, v10, v5

    const/16 v2, 0xd

    aput-object v4, v10, v2

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9_2:Landroid/util/Size;

    const/16 v4, 0xe

    aput-object v2, v10, v4

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K_21V9_3:Landroid/util/Size;

    const/16 v4, 0xf

    aput-object v2, v10, v4

    sget-object v2, Lcom/motorola/camera/VideoFormat;->UHD_4K_22V9:Landroid/util/Size;

    const/16 v4, 0x10

    aput-object v2, v10, v4

    sget-object v2, Lcom/motorola/camera/VideoFormat;->EQU_FHD:Landroid/util/Size;

    const/16 v4, 0x11

    aput-object v2, v10, v4

    const/16 v2, 0x12

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_18V9:Landroid/util/Size;

    const/16 v2, 0x13

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_19V9:Landroid/util/Size;

    const/16 v2, 0x14

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_19P5V9:Landroid/util/Size;

    const/16 v2, 0x15

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_20V9:Landroid/util/Size;

    const/16 v2, 0x16

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_20P5V9:Landroid/util/Size;

    const/16 v2, 0x17

    aput-object v1, v10, v2

    const/16 v1, 0x18

    aput-object v6, v10, v1

    const/16 v1, 0x19

    aput-object v8, v10, v1

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_22V9:Landroid/util/Size;

    const/16 v2, 0x1a

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD:Landroid/util/Size;

    const/16 v2, 0x1b

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_18V9:Landroid/util/Size;

    const/16 v2, 0x1c

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_19V9:Landroid/util/Size;

    const/16 v2, 0x1d

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_19P5V9:Landroid/util/Size;

    const/16 v2, 0x1e

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_20V9:Landroid/util/Size;

    const/16 v2, 0x1f

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_20P5V9:Landroid/util/Size;

    const/16 v2, 0x20

    aput-object v1, v10, v2

    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_20P5V9_2:Landroid/util/Size;

    const/16 v2, 0x21

    aput-object v1, v10, v2

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x2d0

    const/16 v4, 0x1e0

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x22

    aput-object v1, v10, v2

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x2c0

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x23

    aput-object v1, v10, v2

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x160

    const/16 v4, 0x120

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V

    const/16 v2, 0x24

    aput-object v1, v10, v2

    invoke-static {v3, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 10
    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->NON_STANDARD_VIDEO_FORMAT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/VideoHelper;->UNSUPPORTED_DESKTOP_SIZES:Ljava/util/ArrayList;

    .line 13
    sget-object v1, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getBitrateOfSize(ZLandroid/util/Size;I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const p0, 0xc7e3e0

    goto :goto_0

    :cond_0
    const p0, 0xd59f80

    :goto_0
    return p0

    .line 2
    :cond_1
    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    const p0, 0x10b0760

    goto :goto_1

    :cond_2
    const p0, 0x1312d00

    :goto_1
    return p0

    .line 3
    :cond_3
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_4

    const p0, 0x2160ec0

    goto :goto_2

    :cond_4
    const p0, 0x2faf080

    :goto_2
    return p0

    .line 4
    :cond_5
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_5K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p0, :cond_6

    const p0, 0x2cd29c0

    goto :goto_3

    :cond_6
    const p0, 0x3dfd240

    :goto_3
    return p0

    .line 5
    :cond_7
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p0, :cond_8

    const p0, 0x337f980

    goto :goto_4

    :cond_8
    const p0, 0x4a62f80

    :goto_4
    return p0

    .line 6
    :cond_9
    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz p0, :cond_a

    const p0, 0x4692680

    goto :goto_5

    :cond_a
    const p0, 0x6422c40

    :goto_5
    return p0

    :cond_b
    return p2
.end method

.method public static getFilteredVideoFormats(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/camera/VideoFormat;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/motorola/camera/VideoFormat;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    const/4 v2, 0x0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/VideoFormat;

    .line 4
    iget-object v5, v4, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 5
    iget-object v6, v4, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v6, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p2, :cond_1

    if-eqz v2, :cond_3

    .line 6
    iget-object v6, v2, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 7
    invoke-static {v6}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 8
    invoke-static {v5}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-static {v5}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v5

    iget-object v6, v2, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-static {v6}, Lcom/motorola/camera/VideoHelper;->getSpan(Landroid/util/Range;)I

    move-result v6

    if-ge v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getFormatForMode(I)Lcom/motorola/camera/VideoFormat;
    .locals 1

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getRecorderVideoFormat(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/VideoFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaRecorderDataForCurrentMode()Lcom/motorola/camera/capturedmediadata/MediaRecorderData;
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/VideoHelper;->getRecorderDataForMode(ILcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object v0

    return-object v0
.end method

.method public static getMtkAvailableSmvrModes(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/MtkAvailableSmvrModeData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_AVAILABLE_SMVR_MODES_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    .line 3
    invoke-virtual {v1, p0, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 8
    invoke-static {p0, v1}, Lcom/motorola/camera/Util;->getSplitList(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 10
    new-instance v2, Lcom/motorola/camera/MtkAvailableSmvrModeData;

    invoke-direct {v2, v1}, Lcom/motorola/camera/MtkAvailableSmvrModeData;-><init>(Ljava/util/List;)V

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static getRecorderDataForMode(ILcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/capturedmediadata/MediaRecorderData;
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getFormatForMode(I)Lcom/motorola/camera/VideoFormat;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 5
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 7
    iget-object v2, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v2}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v2

    .line 8
    iget-object v5, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v5}, Lcom/motorola/camera/utility/SizeUtility;->getAspectRatio(Landroid/util/Size;)F

    move-result v5

    .line 9
    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, p0, :cond_1

    .line 10
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getHighSpeedVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v3

    .line 12
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/VideoFormat;

    .line 13
    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v7}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v7

    if-le v2, v7, :cond_2

    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 14
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v0, v7, :cond_2

    iget-object v7, v6, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 15
    invoke-static {v7}, Lcom/motorola/camera/utility/SizeUtility;->getAspectRatio(Landroid/util/Size;)F

    move-result v7

    .line 16
    invoke-static {v5, v7}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_1
    if-nez v0, :cond_0

    const-string p0, "VideoHelper"

    const-string p1, "No suitable restricted video format size found"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 18
    :cond_4
    invoke-static {v1}, Lcom/motorola/camera/ProfileSelector;->getValidCameraId(Ljava/lang/String;)I

    move-result p1

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x78

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v1, v2, :cond_5

    move v1, v6

    goto :goto_2

    :cond_5
    move v1, v5

    :goto_2
    if-eqz v1, :cond_6

    const/16 v7, 0x7d1

    goto :goto_3

    :cond_6
    move v7, v6

    .line 20
    :goto_3
    invoke-static {p1, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v7

    if-nez v7, :cond_8

    .line 21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackMainCamera()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/ProfileSelector;->getValidCameraId(Ljava/lang/String;)I

    move-result p1

    goto :goto_4

    .line 23
    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getFrontMainCamera()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/ProfileSelector;->getValidCameraId(Ljava/lang/String;)I

    move-result p1

    :cond_8
    :goto_4
    const/4 v7, 0x2

    if-eqz v1, :cond_a

    .line 24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 25
    sget-object v1, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED_SMVR:Landroid/util/Range;

    goto :goto_5

    :cond_9
    sget-object v1, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED:Landroid/util/Range;

    .line 26
    :goto_5
    invoke-static {v0, p1, v1, v7}, Lcom/motorola/camera/ProfileSelector;->getProfile(Lcom/motorola/camera/VideoFormat;ILandroid/util/Range;I)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto :goto_6

    :cond_a
    move-object v1, v4

    :goto_6
    if-nez v1, :cond_b

    .line 27
    sget-object v1, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    invoke-static {v0, p1, v1, v7}, Lcom/motorola/camera/ProfileSelector;->getProfile(Lcom/motorola/camera/VideoFormat;ILandroid/util/Range;I)Landroid/media/CamcorderProfile;

    move-result-object v1

    :cond_b
    if-nez v1, :cond_c

    return-object v4

    .line 28
    :cond_c
    new-instance p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    .line 29
    sget-object v4, Lcom/motorola/camera/ProfileSelector;->QUALITIES_HIGH_SPEED:Landroid/util/Range;

    .line 30
    iget v8, v1, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 31
    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    if-lt v4, v2, :cond_d

    goto :goto_7

    :cond_d
    move v2, v5

    goto :goto_8

    :cond_e
    :goto_7
    move v2, v6

    :goto_8
    if-eqz v2, :cond_f

    .line 32
    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v2, v2

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    .line 33
    :goto_9
    invoke-direct {p1, v1, v2}, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;-><init>(Landroid/media/CamcorderProfile;F)V

    .line 34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v1

    if-ne v3, p0, :cond_10

    if-nez v1, :cond_10

    const v2, 0x2ee00

    .line 35
    iget-object v3, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 36
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x1e

    div-int/2addr v2, v3

    iput v2, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    .line 37
    iget-object v2, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x1e

    .line 38
    iget v3, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    div-int/2addr v3, v2

    iput v3, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    .line 39
    iget-object v2, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iput v2, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    .line 40
    :cond_10
    new-instance v2, Landroid/util/Range;

    iget-object v3, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 41
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    .line 42
    iget-object v2, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    iput-object v2, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    const/16 v2, 0xd

    if-ne v2, p0, :cond_11

    .line 43
    iput v5, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    .line 44
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 45
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 46
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 47
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    .line 48
    iget-object p0, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-ge p0, v0, :cond_11

    const/16 p0, 0xf

    .line 49
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getLimitedFpsRangeForTarget(I)Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 50
    iput-object p0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    :cond_11
    if-eqz v1, :cond_13

    .line 51
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getRecorderVideoFormat(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/VideoFormat;

    move-result-object p0

    .line 52
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->getMtkAvailableSmvrModes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/MtkAvailableSmvrModeData;

    .line 55
    iget-object v2, v1, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mVideoSize:Landroid/util/Size;

    .line 56
    iget-object v3, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 57
    iget v2, v1, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mMaxFps:I

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 59
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 61
    iget p0, v1, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mMaxFps:I

    .line 62
    new-instance v0, Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    int-to-float p0, p0

    .line 63
    iput p0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    .line 64
    :cond_13
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 65
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 66
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 67
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcForAllResolution()Z

    move-result v0

    .line 68
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_14

    .line 69
    iput v2, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    goto :goto_b

    .line 70
    :cond_14
    sget-object v1, Lcom/motorola/camera/VideoFormat;->HD_SIZES:Ljava/util/List;

    iget-object v3, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    iget-object v3, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_a

    :cond_15
    if-eqz p0, :cond_16

    move v7, v2

    .line 72
    :cond_16
    iput v7, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    .line 73
    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget v1, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/VideoHelper;->getBitrateOfSize(ZLandroid/util/Size;I)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    goto :goto_b

    :cond_17
    :goto_a
    if-eqz p0, :cond_18

    if-eqz v0, :cond_18

    move v7, v2

    .line 74
    :cond_18
    iput v7, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    if-eqz p0, :cond_19

    if-eqz v0, :cond_19

    move v5, v6

    .line 75
    :cond_19
    iget-object p0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-static {v5, p0, v0}, Lcom/motorola/camera/VideoHelper;->getBitrateOfSize(ZLandroid/util/Size;I)I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    :goto_b
    return-object p1
.end method

.method public static getRecorderVideoFormat(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/VideoFormat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Lcom/motorola/camera/VideoFormat;",
            ">;)",
            "Lcom/motorola/camera/VideoFormat;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast p0, Lcom/motorola/camera/VideoFormat;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isSuperSlowMotionFrameRate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result v0

    .line 7
    new-instance v1, Lcom/motorola/camera/VideoFormat;

    iget-object v2, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    new-instance v3, Landroid/util/Range;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iget-boolean p0, p0, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    invoke-direct {v1, v2, v3, p0}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    move-object p0, v1

    :cond_0
    return-object p0
.end method

.method public static getSnapshotSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 4
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->IS_LIVESHOT_SIZE_SAME_AS_VIDEO_SIZE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    .line 5
    invoke-virtual {v3, v0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcom/motorola/camera/VideoHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-virtual {v1, v0}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 8
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getJpegPictureSizes(Lcom/motorola/camera/settings/CameraType;)[Landroid/util/Size;

    move-result-object p1

    .line 9
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    .line 10
    invoke-static {v0}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v4

    invoke-static {v3}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 11
    invoke-static {p0}, Lcom/motorola/camera/utility/SizeUtility;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v4

    .line 12
    invoke-static {v3}, Lcom/motorola/camera/utility/SizeUtility;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v5

    .line 13
    invoke-static {v4, v5}, Lcom/motorola/camera/utility/SizeUtility;->isSameAspectRatio(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSupportedByCurrentCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSizeOfCurrentCamera()Landroid/util/Size;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v4

    .line 16
    invoke-static {v3}, Lcom/motorola/camera/utility/SizeUtility;->getArea(Landroid/util/Size;)I

    move-result v5

    if-ge v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v3

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static getSpan(Landroid/util/Range;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static getSuperSlowMotionBaseFrameRate()I
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x78

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 5
    invoke-static {v2}, Lcom/motorola/camera/VideoHelper;->isSuperSlowMotionFrameRate(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x3c0

    .line 6
    rem-int/2addr v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getSupportedVideoSnapshotSizes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/CameraType;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/VideoFormat;

    .line 5
    iget-object v2, v2, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v2, p0}, Lcom/motorola/camera/VideoHelper;->getSnapshotSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static isSameFrameRateUpper(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/VideoFormat;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 2
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/VideoFormat;->VIDEO_RESOLUTIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSnapshotSupportInConfigurations()Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_CONFIGURATIONS_INFO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    .line 4
    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 5
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_CONFIGURATIONS_TABLE_SIZE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;

    .line 6
    invoke-virtual {v3, v0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CharacteristicsKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    array-length v3, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v3, v0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    array-length v5, v2

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    aget v7, v2, v6

    .line 12
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v3, v4}, Lcom/motorola/camera/Util;->getSplitList(ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 15
    new-instance v5, Lcom/motorola/camera/VideoConfigurationsInfo;

    invoke-direct {v5, v4, v3}, Lcom/motorola/camera/VideoConfigurationsInfo;-><init>(Ljava/util/List;I)V

    .line 16
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 17
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 18
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 19
    check-cast v3, Lcom/motorola/camera/VideoFormat;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/VideoConfigurationsInfo;

    .line 21
    iget v5, v4, Lcom/motorola/camera/VideoConfigurationsInfo;->mIsLiveShotSupported:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 22
    iget-object v5, v4, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoSize:Landroid/util/Size;

    .line 23
    iget-object v6, v3, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 24
    iget v4, v4, Lcom/motorola/camera/VideoConfigurationsInfo;->mVideoFps:I

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v3, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    .line 26
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    .line 27
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isSuperSlowMotionFrameRate(I)Z
    .locals 1

    const/16 v0, 0x3c0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_6K_SIZES:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static muteNotifications(Z)V
    .locals 9

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "notification"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p0, :cond_2

    .line 4
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "scheme"

    .line 5
    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "camera"

    .line 6
    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v2, "app"

    .line 7
    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v2, "application"

    .line 8
    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 10
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f110036

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance p0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 13
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v6

    .line 16
    new-instance v4, Landroid/content/ComponentName;

    .line 17
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/motorola/camera/Camera;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance p0, Landroid/app/AutomaticZenRule;

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 21
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f110428

    .line 26
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    new-instance v3, Landroid/service/notification/Condition;

    .line 28
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p0

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v4}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    goto :goto_2

    .line 30
    :cond_2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    .line 31
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f110427

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AutomaticZenRule;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Landroid/service/notification/Condition;

    .line 37
    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v5, v4, v1, v6}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0, v2, v5}, Landroid/app/NotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    .line 39
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static requestAudioFocus(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, p0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    return-void
.end method
