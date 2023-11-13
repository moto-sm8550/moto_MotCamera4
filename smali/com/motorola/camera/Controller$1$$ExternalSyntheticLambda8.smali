.class public final synthetic Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda8;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda8;->INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda8;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    if-nez v0, :cond_0

    monitor-exit p0

    goto :goto_2

    .line 4
    :catch_0
    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 5
    iget v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :try_start_1
    const-string v1, "SettingSoundPlayer"

    const-string/jumbo v2, "waiting for load to complete before unloading"

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1f4

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->values()[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 9
    sget-object v6, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 10
    iget-object v7, v6, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    .line 11
    iget v8, v5, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->mPool:I

    .line 12
    aget-object v7, v7, v8

    .line 13
    iget-object v6, v6, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/media/SoundPool;->unload(I)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 15
    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 17
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 18
    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    aput-object v4, v1, v2

    .line 19
    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->clear()V

    .line 20
    iput v3, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    .line 21
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    sget-object p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 23
    sput-object v4, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 24
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
