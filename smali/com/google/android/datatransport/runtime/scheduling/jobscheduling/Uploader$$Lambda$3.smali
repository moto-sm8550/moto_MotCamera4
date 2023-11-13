.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final arg$2:Lcom/google/android/datatransport/runtime/backends/BackendResponse;

.field public final arg$3:Ljava/lang/Iterable;

.field public final arg$4:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final arg$5:I


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/backends/BackendResponse;Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/TransportContext;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;->arg$2:Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;->arg$3:Ljava/lang/Iterable;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;->arg$4:Lcom/google/android/datatransport/runtime/TransportContext;

    iput p5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;->arg$5:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;->arg$2:Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;->arg$3:Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;->arg$4:Lcom/google/android/datatransport/runtime/TransportContext;

    iget p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader$$Lambda$3;->arg$5:I

    .line 1
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getStatus$enumunboxing$()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 2
    iget-object v1, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->recordFailure(Ljava/lang/Iterable;)V

    .line 3
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    add-int/2addr p0, v5

    invoke-interface {v0, v3, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {p0, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->recordSuccess(Ljava/lang/Iterable;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getStatus$enumunboxing$()I

    move-result p0

    if-ne p0, v5, :cond_1

    .line 6
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v2, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->clock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 7
    invoke-interface {v2}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->getNextRequestWaitMillis()J

    move-result-wide v1

    add-long/2addr v1, v6

    .line 8
    invoke-interface {p0, v3, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->recordNextCallTime(Lcom/google/android/datatransport/runtime/TransportContext;J)V

    .line 9
    :cond_1
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {p0, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->hasPendingEventsFor(Lcom/google/android/datatransport/runtime/TransportContext;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 10
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    invoke-interface {p0, v3, v5, v5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;IZ)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
