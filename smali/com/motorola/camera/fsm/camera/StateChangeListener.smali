.class public abstract Lcom/motorola/camera/fsm/camera/StateChangeListener;
.super Lcom/motorola/camera/fsm/ChangeListener;
.source "StateChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/ChangeListener<",
        "Lcom/motorola/camera/fsm/camera/StateKey;",
        "Lcom/motorola/camera/fsm/camera/FsmContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getStatesToListenFor()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation
.end method
