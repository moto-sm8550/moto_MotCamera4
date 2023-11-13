.class public final Lcom/motorola/camera/utility/AudioLensSwitchHelper;
.super Ljava/lang/Object;
.source "AudioLensSwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;,
        Lcom/motorola/camera/utility/AudioLensSwitchHelper$LazyLoader;
    }
.end annotation


# instance fields
.field public mAudioLensStateCallback:Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mAudioRadarManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public mAudioRadarMangerInstance:Ljava/lang/Object;

.field public mProxy:Ljava/lang/Object;

.field public mRegisterCallback:Ljava/lang/reflect/Method;

.field public munRegisterCallback:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initAudioLensSwitch(Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;)Z
    .locals 7

    const-string v0, "com.motorola.audio.radar.AudioRadarManager"

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/utility/ReflectionUtilKt;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    const-string v1, "AudioLensSwitchHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Can\'t find AudioRadarManager class"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v0, "com.motorola.audio.radar.AudioRadarManager$AudioRadarFWCallback"

    .line 3
    invoke-static {v0}, Lcom/motorola/camera/utility/ReflectionUtilKt;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Can\'t find AudioRadarFWCallback interface"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;

    .line 6
    new-instance p1, Lcom/motorola/camera/utility/AudioLensSwitchHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-static {v3, v5, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v3, v4, [Ljava/lang/Object;

    .line 9
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 10
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    const-string v3, "registerCallback"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/reflect/Method;

    .line 12
    invoke-virtual {p1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    aput-object v6, v5, v2

    invoke-virtual {p1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    const-string/jumbo v3, "unregisterCallback"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "audio"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "audio_radar=1"

    .line 17
    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    return v4

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public final stopAudioLensSwitch()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "audio_radar=0"

    .line 4
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    aput-object v5, v2, v4

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioLensSwitchHelper"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/reflect/Method;

    .line 12
    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/reflect/Method;

    .line 13
    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Class;

    .line 14
    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method
