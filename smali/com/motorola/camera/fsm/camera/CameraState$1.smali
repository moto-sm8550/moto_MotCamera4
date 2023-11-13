.class public final Lcom/motorola/camera/fsm/camera/CameraState$1;
.super Lcom/motorola/camera/fsm/camera/CameraState$Builder;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/camera/CameraState$Builder<",
        "Lcom/motorola/camera/fsm/camera/CameraState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$Builder;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/Transition;

    .line 2
    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraState;-><init>(Lcom/motorola/camera/fsm/camera/CameraState$Builder;)V

    return-object v0
.end method
