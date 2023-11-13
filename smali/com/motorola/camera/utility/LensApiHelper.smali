.class public final Lcom/motorola/camera/utility/LensApiHelper;
.super Ljava/lang/Object;
.source "LensApiHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;,
        Lcom/motorola/camera/utility/LensApiHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLensApiHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LensApiHelper.kt\ncom/motorola/camera/utility/LensApiHelper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,105:1\n37#2:106\n36#2,3:107\n*S KotlinDebug\n*F\n+ 1 LensApiHelper.kt\ncom/motorola/camera/utility/LensApiHelper\n*L\n59#1:106\n59#1:107,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

.field public static final instance$delegate:Lkotlin/SynchronizedLazyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/motorola/camera/utility/LensApiHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final googleLensCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;",
            ">;"
        }
    .end annotation
.end field

.field public googleLensStatusChecked:Z

.field public isGoogleLensAvailable:Z

.field public isInitialized:Z

.field public lensApi:Lcom/google/lens/sdk/LensApi;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/utility/LensApiHelper$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/utility/LensApiHelper$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/LensApiHelper;->Companion:Lcom/motorola/camera/utility/LensApiHelper$Companion;

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/LensApiHelper$Companion$instance$2;->INSTANCE:Lcom/motorola/camera/utility/LensApiHelper$Companion$instance$2;

    .line 2
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 3
    sput-object v1, Lcom/motorola/camera/utility/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "synchronizedSet(HashSet())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final declared-synchronized checkGoogleLensAvailability(Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->googleLensStatusChecked:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;->onStatusChecked()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->googleLensCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    iget-boolean p1, p0, Lcom/motorola/camera/utility/LensApiHelper;->isInitialized:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/utility/LensApiHelper;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized initialize()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    new-instance v2, Lcom/google/lens/sdk/LensApi;

    .line 4
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-direct {v2, v3}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/camera/utility/LensApiHelper;->lensApi:Lcom/google/lens/sdk/LensApi;

    .line 6
    new-instance v3, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/motorola/camera/utility/LensApiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/LensApiHelper;J)V

    invoke-virtual {v2, v3}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isGoogleLensAvailable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
