.class public final Lcom/tinder/StateMachine$Matcher$predicates$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StateMachine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tinder/StateMachine$Matcher;


# direct methods
.method public constructor <init>(Lcom/tinder/StateMachine$Matcher;)V
    .locals 0

    iput-object p1, p0, Lcom/tinder/StateMachine$Matcher$predicates$1;->this$0:Lcom/tinder/StateMachine$Matcher;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tinder/StateMachine$Matcher$predicates$1;->this$0:Lcom/tinder/StateMachine$Matcher;

    .line 3
    iget-object p0, p0, Lcom/tinder/StateMachine$Matcher;->clazz:Ljava/lang/Class;

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
