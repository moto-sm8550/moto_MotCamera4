.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "McfInitRunnable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method

.method public static onComplete(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;->onComplete(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void

    .line 7
    :cond_0
    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz p0, :cond_1

    .line 8
    new-instance p0, Ljava/lang/Thread;

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$$ExternalSyntheticLambda0;

    const-string p3, "loadAllModels"

    invoke-direct {p0, p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 10
    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 11
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;->onComplete(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    return-void

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda11;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    const-string p2, "McfInit"

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
