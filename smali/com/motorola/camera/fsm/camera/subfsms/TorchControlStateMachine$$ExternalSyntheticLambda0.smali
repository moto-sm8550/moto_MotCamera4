.class public final synthetic Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mRunning:Z

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mRunning:Z

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->resetState$1()V

    goto :goto_0

    .line 7
    :cond_2
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mRunning:Z

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->resetState$1()V

    :goto_0
    return-void
.end method
