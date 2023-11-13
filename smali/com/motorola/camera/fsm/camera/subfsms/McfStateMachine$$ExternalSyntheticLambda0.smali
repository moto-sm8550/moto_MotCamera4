.class public final synthetic Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

.field public final synthetic f$1:Lcom/motorola/camera/mcf/McfSceneProp;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;Lcom/motorola/camera/mcf/McfSceneProp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/mcf/McfSceneProp;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/mcf/McfSceneProp;

    check-cast p1, Lcom/motorola/camera/mcf/McfSceneProp$Key;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/motorola/camera/mcf/McfBarcode;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/mcf/McfSceneProp;->FLAT_SCENE:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfSceneProp$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/motorola/camera/mcf/McfDoc;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/mcf/McfSceneProp;->get(Lcom/motorola/camera/mcf/McfSceneProp$Key;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onSceneProperty(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
