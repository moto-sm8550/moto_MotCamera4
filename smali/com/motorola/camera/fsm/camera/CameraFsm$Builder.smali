.class public abstract Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;
.super Ljava/lang/Object;
.source "CameraFsm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/CameraFsm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/motorola/camera/fsm/camera/CameraFsm;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mDelayStates:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/motorola/camera/fsm/camera/StateKey$Key;",
            "Lcom/motorola/camera/fsm/camera/states/iCameraState;",
            ">;"
        }
    .end annotation
.end field

.field public final mStates:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/fsm/camera/CameraState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final addState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/camera/CameraState;",
            ")",
            "Lcom/motorola/camera/fsm/camera/CameraFsm$Builder<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mStates:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mDelayStates:Ljava/util/EnumMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mDelayStates:Ljava/util/EnumMap;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;->mDelayStates:Ljava/util/EnumMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1, p0}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;)V

    :goto_0
    return-void
.end method
