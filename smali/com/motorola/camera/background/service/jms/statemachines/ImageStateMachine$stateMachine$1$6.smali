.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageStateMachine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/tinder/StateMachine$GraphBuilder<",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
        ">.StateDefinitionBuilder<",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageStateMachine.kt\ncom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6\n+ 2 StateMachine.kt\ncom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder\n+ 3 StateMachine.kt\ncom/tinder/StateMachine$Matcher$Companion\n*L\n1#1,263:1\n182#2:264\n165#2:265\n121#3:266\n*S KotlinDebug\n*F\n+ 1 ImageStateMachine.kt\ncom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6\n*L\n237#1:264\n237#1:265\n237#1:266\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6;

    invoke-direct {v0}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    const-string p0, "$this$state"

    .line 2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6$1;

    invoke-direct {p0, p1}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6$1;-><init>(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;)V

    .line 4
    const-class v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event$onCancelJob;

    .line 5
    new-instance v1, Lcom/tinder/StateMachine$Matcher;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/tinder/StateMachine$Matcher;-><init>(Ljava/lang/Class;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    invoke-virtual {p1, v1, p0}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V

    .line 7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
