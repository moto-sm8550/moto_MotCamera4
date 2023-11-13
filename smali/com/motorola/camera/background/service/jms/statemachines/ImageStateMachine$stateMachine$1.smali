.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageStateMachine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/tinder/StateMachine$GraphBuilder<",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Event;",
        "Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageStateMachine.kt\ncom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1\n+ 2 StateMachine.kt\ncom/tinder/StateMachine$GraphBuilder\n+ 3 StateMachine.kt\ncom/tinder/StateMachine$Matcher$Companion\n*L\n1#1,263:1\n146#2:264\n147#2:266\n146#2:267\n147#2:269\n146#2:270\n147#2:272\n146#2:273\n147#2:275\n146#2:276\n147#2:278\n146#2:279\n147#2:281\n121#3:265\n121#3:268\n121#3:271\n121#3:274\n121#3:277\n121#3:280\n*S KotlinDebug\n*F\n+ 1 ImageStateMachine.kt\ncom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1\n*L\n31#1:264\n31#1:266\n106#1:267\n106#1:269\n169#1:270\n169#1:272\n201#1:273\n201#1:275\n231#1:276\n231#1:278\n236#1:279\n236#1:281\n31#1:265\n106#1:268\n169#1:271\n201#1:274\n231#1:277\n236#1:280\n*E\n"
.end annotation


# instance fields
.field public final synthetic $dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/tinder/StateMachine$GraphBuilder;

    const-string v0, "$this$create"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    .line 4
    iput-object v0, p1, Lcom/tinder/StateMachine$GraphBuilder;->initialState:Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    .line 6
    sget-object v1, Lcom/tinder/StateMachine$Matcher;->Companion:Lcom/tinder/StateMachine$Matcher$Companion;

    .line 7
    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$InQueue;

    invoke-virtual {v1, v2}, Lcom/tinder/StateMachine$Matcher$Companion;->any(Ljava/lang/Class;)Lcom/tinder/StateMachine$Matcher;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2, v0}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    .line 9
    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$2;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$2;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    .line 10
    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxCoProcProcessJob;

    invoke-virtual {v1, v2}, Lcom/tinder/StateMachine$Matcher$Companion;->any(Ljava/lang/Class;)Lcom/tinder/StateMachine$Matcher;

    move-result-object v2

    .line 11
    invoke-virtual {p1, v2, v0}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    .line 12
    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$3;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$3;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    .line 13
    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsRxDstClientJobComplete;

    invoke-virtual {v1, v2}, Lcom/tinder/StateMachine$Matcher$Companion;->any(Ljava/lang/Class;)Lcom/tinder/StateMachine$Matcher;

    move-result-object v2

    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    .line 15
    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$4;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->$dbIntf:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iget-object v3, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$4;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    .line 16
    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$JmsTxDstClientProcessJob;

    invoke-virtual {v1, v2}, Lcom/tinder/StateMachine$Matcher$Companion;->any(Ljava/lang/Class;)Lcom/tinder/StateMachine$Matcher;

    move-result-object v2

    .line 17
    invoke-virtual {p1, v2, v0}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    .line 18
    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-direct {v0, v2}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$5;-><init>(Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    .line 19
    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CompleteJob;

    invoke-virtual {v1, v2}, Lcom/tinder/StateMachine$Matcher$Companion;->any(Ljava/lang/Class;)Lcom/tinder/StateMachine$Matcher;

    move-result-object v2

    .line 20
    invoke-virtual {p1, v2, v0}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    .line 21
    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$6;

    .line 22
    const-class v2, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$CancelJob;

    invoke-virtual {v1, v2}, Lcom/tinder/StateMachine$Matcher$Companion;->any(Ljava/lang/Class;)Lcom/tinder/StateMachine$Matcher;

    move-result-object v1

    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/tinder/StateMachine$GraphBuilder;->state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V

    .line 24
    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$7;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->this$0:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1$7;-><init>(Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V

    .line 25
    iget-object p0, p1, Lcom/tinder/StateMachine$GraphBuilder;->onTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
