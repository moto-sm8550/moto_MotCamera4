.class public final synthetic Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/exoplayer2/util/ListenerSet$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/exoplayer2/util/ListenerSet$Event;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 2
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 3
    iget-object v3, v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    :cond_1
    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 5
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/util/ListenerSet$Event;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method
