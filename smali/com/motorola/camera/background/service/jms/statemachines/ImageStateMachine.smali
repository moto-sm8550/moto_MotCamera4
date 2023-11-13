.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;
.super Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;
.source "ImageStateMachine.kt"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final stateMachine:Lcom/tinder/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tinder/StateMachine<",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
            "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V
    .locals 1

    const-string v0, "jmsIntf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V

    .line 2
    new-instance p1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    invoke-static {p1}, Lcom/tinder/StateMachine;->create(Lkotlin/jvm/functions/Function1;)Lcom/tinder/StateMachine;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->stateMachine:Lcom/tinder/StateMachine;

    return-void
.end method
