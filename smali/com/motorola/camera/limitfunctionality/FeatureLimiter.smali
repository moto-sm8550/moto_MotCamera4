.class public final Lcom/motorola/camera/limitfunctionality/FeatureLimiter;
.super Ljava/lang/Object;
.source "FeatureLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;,
        Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;,
        Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;
    }
.end annotation


# static fields
.field public static mRefCnt:I


# instance fields
.field public final mLimitHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/limitfunctionality/LimiterHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mLimitHandlerMap:Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mListenerSet:Ljava/util/Set;

    .line 5
    new-instance p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;

    invoke-direct {p0}, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;-><init>()V

    const-string v1, "BatterySaverHandler"

    .line 6
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;

    invoke-direct {p0}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;-><init>()V

    const-string v1, "BatteryHandler"

    .line 8
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;

    invoke-direct {p0}, Lcom/motorola/camera/limitfunctionality/ThermalHandler;-><init>()V

    const-string v1, "ThermalHandler"

    .line 10
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z
    .locals 5

    const-class v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mLimitHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/limitfunctionality/LimiterHandler;

    .line 3
    invoke-virtual {v3}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->getLimitedFeatures()Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-boolean v3, v3, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->mLimited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v2, v3

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isHandlerLimited(Ljava/lang/String;)Z
    .locals 3

    const-class v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    .line 2
    iget-object v2, v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mLimitHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mLimitHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/limitfunctionality/LimiterHandler;

    .line 4
    iget-boolean p0, p0, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->mLimited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized limitFeatures(Ljava/lang/String;Z)V
    .locals 3

    const-class v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    .line 2
    iget-object v2, v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mLimitHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isHandlerLimited(Ljava/lang/String;)Z

    move-result v2

    if-eq p1, v2, :cond_0

    .line 4
    iget-object v2, v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mLimitHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/limitfunctionality/LimiterHandler;

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->mLimited:Z

    .line 6
    iget-object p0, v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mListenerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;

    .line 7
    invoke-interface {p1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;->onChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V
    .locals 2

    const-class v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mListenerSet:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized start()V
    .locals 3

    const-class v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mRefCnt:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mRefCnt:I

    if-ne v1, v2, :cond_0

    .line 2
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mLimitHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/limitfunctionality/LimiterHandler;

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized stop()V
    .locals 3

    const-class v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mRefCnt:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mRefCnt:I

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mLimitHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/limitfunctionality/LimiterHandler;

    .line 4
    invoke-virtual {v2}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->stop()V

    goto :goto_0

    .line 5
    :cond_0
    sget v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mRefCnt:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mRefCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unregisterListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V
    .locals 2

    const-class v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$LazyLoader;->INSTANCE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->mListenerSet:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
