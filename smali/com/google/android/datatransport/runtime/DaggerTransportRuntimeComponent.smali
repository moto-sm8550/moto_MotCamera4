.class public final Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;
.super Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;
.source "DaggerTransportRuntimeComponent.java"


# instance fields
.field public configProvider:Lcom/google/android/play/core/appupdate/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public creationContextFactoryProvider:Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;

.field public defaultSchedulerProvider:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;",
            ">;"
        }
    .end annotation
.end field

.field public executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public metadataBackendRegistryProvider:Ljavax/inject/Provider;

.field public sQLiteEventStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;",
            ">;"
        }
    .end annotation
.end field

.field public schemaManagerProvider:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

.field public setApplicationContextProvider:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public transportRuntimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/TransportRuntime;",
            ">;"
        }
    .end annotation
.end field

.field public uploaderProvider:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;",
            ">;"
        }
    .end annotation
.end field

.field public workInitializerProvider:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;",
            ">;"
        }
    .end annotation
.end field

.field public workSchedulerProvider:Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:Ljavax/inject/Provider;

    .line 3
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    const-string v1, "instance cannot be null"

    .line 4
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 7
    sget-object p1, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    .line 8
    new-instance v1, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;

    invoke-direct {v1, v0}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 9
    iput-object v1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->creationContextFactoryProvider:Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;

    .line 10
    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v2, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-static {v2}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:Ljavax/inject/Provider;

    .line 12
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 13
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

    invoke-direct {v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 14
    iput-object v1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->schemaManagerProvider:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

    .line 15
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 16
    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:Ljavax/inject/Provider;

    .line 17
    new-instance v1, Lcom/google/android/play/core/appupdate/zzu;

    invoke-direct {v1, p1}, Lcom/google/android/play/core/appupdate/zzu;-><init>(Ljava/lang/Object;)V

    .line 18
    iput-object v1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->configProvider:Lcom/google/android/play/core/appupdate/zzu;

    .line 19
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 20
    new-instance v9, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;

    invoke-direct {v9, p1, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 21
    iput-object v9, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->workSchedulerProvider:Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;

    .line 22
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:Ljavax/inject/Provider;

    .line 23
    new-instance v10, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;

    move-object v2, v10

    move-object v3, v1

    move-object v4, v8

    move-object v5, v9

    move-object v6, v0

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 24
    iput-object v10, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->defaultSchedulerProvider:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;

    .line 25
    new-instance v11, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;

    move-object v2, v11

    move-object v3, p1

    move-object v4, v8

    move-object v5, v0

    move-object v6, v9

    move-object v7, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 26
    iput-object v11, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->uploaderProvider:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;

    .line 27
    new-instance p1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;

    invoke-direct {p1, v1, v0, v9, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 28
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->workInitializerProvider:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;

    .line 29
    new-instance v0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;

    invoke-direct {v0, v10, v11, p1}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 30
    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->transportRuntimeProvider:Ljavax/inject/Provider;

    return-void
.end method
