.class public final Lcom/motorola/camera/device/exception/CameraNotOpenException;
.super Ljava/lang/Exception;
.source "CameraNotOpenException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    const-string p1, "Camera session is not opened"

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
