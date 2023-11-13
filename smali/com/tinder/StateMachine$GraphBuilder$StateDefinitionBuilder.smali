.class public final Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;
.super Ljava/lang/Object;
.source "StateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tinder/StateMachine$GraphBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StateDefinitionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::TSTATE;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateMachine.kt\ncom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder\n+ 2 StateMachine.kt\ncom/tinder/StateMachine$Matcher$Companion\n*L\n1#1,231:1\n165#1:235\n167#1:237\n121#2:232\n123#2:233\n121#2:234\n121#2:236\n123#2:238\n121#2:239\n*E\n*S KotlinDebug\n*F\n+ 1 StateMachine.kt\ncom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder\n*L\n182#1:235\n189#1:237\n165#1:232\n167#1:233\n167#1:234\n182#1:236\n189#1:238\n189#1:239\n*E\n"
.end annotation


# instance fields
.field public final stateDefinition:Lcom/tinder/StateMachine$Graph$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tinder/StateMachine$Graph$State<",
            "TSTATE;TEVENT;TSIDE_EFFECT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tinder/StateMachine$Graph$State;

    invoke-direct {v0}, Lcom/tinder/StateMachine$Graph$State;-><init>()V

    iput-object v0, p0, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->stateDefinition:Lcom/tinder/StateMachine$Graph$State;

    return-void
.end method


# virtual methods
.method public final on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::TEVENT;>(",
            "Lcom/tinder/StateMachine$Matcher<",
            "TEVENT;+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-TE;+",
            "Lcom/tinder/StateMachine$Graph$State$TransitionTo<",
            "+TSTATE;+TSIDE_EFFECT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->stateDefinition:Lcom/tinder/StateMachine$Graph$State;

    .line 2
    iget-object p0, p0, Lcom/tinder/StateMachine$Graph$State;->transitions:Ljava/util/LinkedHashMap;

    .line 3
    new-instance v0, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;

    invoke-direct {v0, p2}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final transitionTo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TSTATE;TSIDE_EFFECT;)",
            "Lcom/tinder/StateMachine$Graph$State$TransitionTo<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    invoke-direct {p0, p2, p3}, Lcom/tinder/StateMachine$Graph$State$TransitionTo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
