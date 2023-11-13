.class public abstract Lcom/motorola/camera/background/service/jms/ExecutorMsg;
.super Ljava/lang/Object;
.source "JobMgrScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsg;,
        Lcom/motorola/camera/background/service/jms/ExecutorMsg$RequestMsgAck;,
        Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsg;,
        Lcom/motorola/camera/background/service/jms/ExecutorMsg$ControlMsgAck;,
        Lcom/motorola/camera/background/service/jms/ExecutorMsg$ResultMsg;,
        Lcom/motorola/camera/background/service/jms/ExecutorMsg$Done;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
