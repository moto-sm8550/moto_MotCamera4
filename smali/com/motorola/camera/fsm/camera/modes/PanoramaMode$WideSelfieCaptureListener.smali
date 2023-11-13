.class public final Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;
.super Landroidx/window/core/SpecificationComputer;
.source "PanoramaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WideSelfieCaptureListener"
.end annotation


# instance fields
.field public final mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/window/core/SpecificationComputer;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$WideSelfieCaptureListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method
