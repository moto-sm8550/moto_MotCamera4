.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;
.super Ljava/lang/Object;
.source "McfCaptureRequestRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McfReprocHolder"
.end annotation


# instance fields
.field public mReprocRequest:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

.field public final mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    return-void
.end method
