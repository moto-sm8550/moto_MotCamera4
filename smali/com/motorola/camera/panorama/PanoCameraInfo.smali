.class public final Lcom/motorola/camera/panorama/PanoCameraInfo;
.super Ljava/lang/Object;
.source "PanoCameraInfo.java"


# instance fields
.field public mCameraOrientation:I

.field public mDeviceOrientation:I

.field public mDisplayRotation:I

.field public mImageFormat:Ljava/lang/String;

.field public mPreviewSize:Landroid/util/Size;

.field public mViewAngleH:F

.field public mViewAngleV:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "YVU420_SEMIPLANAR"

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mImageFormat:Ljava/lang/String;

    return-void
.end method
