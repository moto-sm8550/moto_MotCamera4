.class public final Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;
.super Lcom/motorola/camera/fsm/camera/record/CaptureRecord;
.source "VideoCaptureRecord.java"


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    return-void
.end method
