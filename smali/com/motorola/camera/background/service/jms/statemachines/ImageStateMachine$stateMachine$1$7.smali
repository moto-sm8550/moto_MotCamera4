.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$7;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageStateMachine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/tinder/StateMachine$Transition<",
        "+",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
        "+",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
        "+",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageStateMachine.kt\ncom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$7\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n1#2:264\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$7;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/tinder/StateMachine$Transition;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Lcom/tinder/StateMachine$Transition$Valid;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tinder/StateMachine$Transition$Valid;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/tinder/StateMachine$Transition$Valid;->sideEffect:Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    .line 6
    instance-of v0, v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lcom/tinder/StateMachine$Transition$Valid;

    .line 8
    iget-object p1, p1, Lcom/tinder/StateMachine$Transition$Valid;->sideEffect:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.background.service.jms.statemachines.StateMachineBase.Companion.Command.ListOfCommands{ com.motorola.camera.background.service.jms.statemachines.StateMachineBaseKt.Command_ListOfCommands }"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;

    .line 10
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command$ListOfCommands;->commands:Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$7;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->processSideEffects(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V

    goto :goto_1

    .line 13
    :cond_2
    check-cast p1, Lcom/tinder/StateMachine$Transition$Valid;

    .line 14
    iget-object p1, p1, Lcom/tinder/StateMachine$Transition$Valid;->sideEffect:Ljava/lang/Object;

    .line 15
    check-cast p1, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$7;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;->processSideEffects(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V

    .line 16
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
