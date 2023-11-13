.class public final Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;
.super Ljava/lang/Object;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/modes/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateSurfaceHolder"
.end annotation


# instance fields
.field public final mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

.field public final mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$CreateSurfaceHolder;->mData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    return-void
.end method
