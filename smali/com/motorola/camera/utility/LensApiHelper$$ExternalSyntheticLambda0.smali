.class public final synthetic Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/utility/LensApiHelper;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/utility/LensApiHelper;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/LensApiHelper;

    iput-wide p2, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final onAvailabilityStatusFetched(I)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/LensApiHelper;

    iget-wide v1, p0, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;->f$1:J

    const-string/jumbo p0, "this$0"

    .line 1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v4

    .line 6
    :goto_0
    iput-boolean p0, v0, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable:Z

    .line 7
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Lcom/motorola/camera/analytics/SynchronizedBundle;

    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent;->LENS_STATUS:Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v5, "LENSSTAT"

    invoke-virtual {p0, v5, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iput-boolean v3, v0, Lcom/motorola/camera/utility/LensApiHelper;->googleLensStatusChecked:Z

    .line 11
    iget-object p0, v0, Lcom/motorola/camera/utility/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    new-array p1, v4, [Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;

    .line 12
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 13
    check-cast p0, [Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "elements"

    .line 14
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/util/HashSet;

    array-length v3, p0

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    .line 16
    iget-object p0, v0, Lcom/motorola/camera/utility/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    const-string p0, "LensApiHelper"

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize dur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    .line 19
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;

    invoke-interface {p1}, Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;->onStatusChecked()V

    goto :goto_1

    :cond_1
    return-void

    .line 20
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0

    throw p0
.end method
