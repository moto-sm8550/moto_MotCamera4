.class public final Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;
.super Ljava/lang/Object;
.source "McfStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McfJobHolder"
.end annotation


# instance fields
.field public mIsUnlockShutterEarlyDone:Z

.field public final mMcfRequestHolderMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mIsUnlockShutterEarlyDone:Z

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-void
.end method
