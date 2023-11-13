.class public final Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SetSystemPropertyCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/device/callables/CameraCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mKey:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

.field public final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CAMERA_SWITCH_MODE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v1, v1, v1}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mKey:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/android/exoplayer2/FormatHolder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/FormatHolder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mKey:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetSystemPropertyCallable;->mValue:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->mSystemProperty:Ljava/lang/String;

    .line 3
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "set"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v3, v5}, Lcom/motorola/camera/shared/SystemSetting;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object p0, v3, v7

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemSetting"

    const-string/jumbo v1, "setString error "

    .line 5
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/FormatHolder;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SetSystemPropertyCallable"

    return-object p0
.end method
