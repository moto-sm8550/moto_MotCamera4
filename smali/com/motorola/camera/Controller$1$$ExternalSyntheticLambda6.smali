.class public final synthetic Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda6;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda6;->INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda6;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 6
    iput v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
