.class public final Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;
.super Ljava/lang/Object;
.source "ExtensionWindowLayoutInfoBackend.kt"

# interfaces
.implements Landroidx/window/layout/WindowBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;
    }
.end annotation


# instance fields
.field public final activityToListeners:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;",
            ">;"
        }
    .end annotation
.end field

.field public final component:Landroidx/window/extensions/layout/WindowLayoutComponent;

.field public final consumerAdapter:Landroidx/window/core/ConsumerAdapter;

.field public final consumerToToken:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;",
            "Landroidx/window/core/ConsumerAdapter$Subscription;",
            ">;"
        }
    .end annotation
.end field

.field public final extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final listenerToActivity:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->component:Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 3
    iput-object p2, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    .line 4
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->activityToListeners:Ljava/util/LinkedHashMap;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->listenerToActivity:Ljava/util/LinkedHashMap;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->consumerToToken:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final registerLayoutChangeCallback(Landroid/app/Activity;Landroidx/core/util/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->activityToListeners:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p2}, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->addListener(Landroidx/core/util/Consumer;)V

    .line 4
    iget-object v1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->listenerToActivity:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 6
    new-instance v1, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;

    invoke-direct {v1, p1}, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;-><init>(Landroid/app/Activity;)V

    .line 7
    iget-object v2, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->activityToListeners:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->listenerToActivity:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, p2}, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->addListener(Landroidx/core/util/Consumer;)V

    .line 10
    iget-object p2, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    .line 11
    iget-object v2, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->component:Landroidx/window/extensions/layout/WindowLayoutComponent;

    const-class v3, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 12
    new-instance v4, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1;

    invoke-direct {v4, v1}, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$disposableToken$1;-><init>(Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;)V

    invoke-virtual {p2, v2, v3, p1, v4}, Landroidx/window/core/ConsumerAdapter;->createSubscription(Ljava/lang/Object;Lkotlin/reflect/KClass;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/ConsumerAdapter$Subscription;

    move-result-object p1

    .line 13
    iget-object p0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->consumerToToken:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->listenerToActivity:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->activityToListeners:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 4
    :cond_1
    :try_start_2
    iget-object v3, v2, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    iget-object v4, v2, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/LinkedHashSet;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6
    :try_start_4
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    iget-object v3, v2, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/LinkedHashSet;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget-object v3, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->consumerToToken:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/core/ConsumerAdapter$Subscription;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroidx/window/core/ConsumerAdapter$Subscription;->dispose()V

    .line 9
    :cond_2
    iget-object v2, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->listenerToActivity:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;->activityToListeners:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    .line 12
    :try_start_5
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
