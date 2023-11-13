.class public final synthetic Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/util/ListenerSet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/ListenerSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/util/ListenerSet;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    .line 3
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->build()Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object v2

    .line 5
    new-instance v4, Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;-><init>()V

    iput-object v4, v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 6
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->hasMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
