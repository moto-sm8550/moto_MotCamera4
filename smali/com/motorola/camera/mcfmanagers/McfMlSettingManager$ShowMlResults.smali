.class public final Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;
.super Ljava/lang/Object;
.source "McfMlSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowMlResults"
.end annotation


# instance fields
.field public mMcfMlStateAdapter:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;

    invoke-direct {v0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mMcfMlStateAdapter:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;

    return-void
.end method


# virtual methods
.method public final registerMcfMlStateListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mMcfMlStateAdapter:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mMcfMlStateAdapter:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
