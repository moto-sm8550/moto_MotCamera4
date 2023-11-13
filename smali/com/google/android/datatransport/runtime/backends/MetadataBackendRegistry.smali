.class public final Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;
.super Ljava/lang/Object;
.source "MetadataBackendRegistry.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/BackendRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;
    }
.end annotation


# instance fields
.field public final backendFactoryProvider:Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;

.field public final backends:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/runtime/backends/TransportBackend;",
            ">;"
        }
    .end annotation
.end field

.field public final creationContextFactory:Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;

    invoke-direct {v0, p1}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backends:Ljava/util/HashMap;

    .line 4
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backendFactoryProvider:Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;

    .line 5
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->creationContextFactory:Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    return-void
.end method


# virtual methods
.method public final declared-synchronized get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backends:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backends:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/datatransport/runtime/backends/TransportBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backendFactoryProvider:Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;

    invoke-virtual {v0, p1}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/BackendFactory;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->creationContextFactory:Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    .line 6
    iget-object v2, v1, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->applicationContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    iget-object v1, v1, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 7
    new-instance v4, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;

    invoke-direct {v4, v2, v3, v1, p1}, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v4}, Lcom/google/android/datatransport/runtime/backends/BackendFactory;->create(Lcom/google/android/datatransport/runtime/backends/CreationContext;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;->backends:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
