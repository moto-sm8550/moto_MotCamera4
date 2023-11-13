.class public final synthetic Lcom/google/firebase/components/EventBus$$Lambda$1;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final arg$1:Ljava/util/Map$Entry;

.field public final arg$2:Lcom/google/firebase/events/Event;


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$1:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$2:Lcom/google/firebase/events/Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$1:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/events/EventHandler;

    invoke-interface {p0}, Lcom/google/firebase/events/EventHandler;->handle()V

    return-void
.end method
