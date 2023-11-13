.class public abstract Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "DebugBroadcastStateChangeListener.kt"


# instance fields
.field public final cameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

.field public debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraFsm;)V
    .locals 2

    const-string v0, "cameraFsm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;-><init>(Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;)V

    new-instance v1, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$2;-><init>(Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;)V

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    return-void
.end method
