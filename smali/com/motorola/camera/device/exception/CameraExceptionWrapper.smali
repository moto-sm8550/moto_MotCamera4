.class public final Lcom/motorola/camera/device/exception/CameraExceptionWrapper;
.super Ljava/lang/Object;
.source "CameraExceptionWrapper.java"


# instance fields
.field public final mAppHoldingCameraResource:Ljava/lang/String;

.field public final mException:Ljava/lang/Exception;

.field public final mHalErrorCode:I

.field public final mState:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mException:Ljava/lang/Exception;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mAppHoldingCameraResource:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;->mHalErrorCode:I

    return-void
.end method
