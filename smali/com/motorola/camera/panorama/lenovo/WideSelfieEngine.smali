.class public final Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;
.super Ljava/lang/Object;
.source "WideSelfieEngine.java"


# static fields
.field public static sWideSelfieEngine:Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;


# instance fields
.field public final mImageWH:[I

.field public mIsCapturing:Z

.field public final mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

.field public mOutputPreviewData:[B

.field public mProcessedNum:I

.field public mRequestNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-direct {v0}, Lcom/lenovo/core/LenovoPanoramaSelfie;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    .line 4
    iput v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mImageWH:[I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;
    .locals 2

    const-class v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->sWideSelfieEngine:Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    invoke-direct {v1}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;-><init>()V

    sput-object v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->sWideSelfieEngine:Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    .line 3
    :cond_0
    sget-object v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->sWideSelfieEngine:Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final saveJpeg(II)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    if-ne v0, v1, :cond_0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {v0, p2}, Lcom/lenovo/core/LenovoPanoramaSelfie;->abnormalFinish(I)V

    .line 4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual {p2, p1}, Lcom/lenovo/core/LenovoPanoramaSelfie;->saveOutputJpeg(I)V

    goto :goto_1

    :cond_1
    move v1, v2

    .line 6
    :goto_1
    iput v2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    .line 7
    iput v2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    return v1
.end method
