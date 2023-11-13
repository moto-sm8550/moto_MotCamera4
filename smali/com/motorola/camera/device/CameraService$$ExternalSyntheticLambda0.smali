.class public final synthetic Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/device/callables/CameraCallable;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mBegin:J

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/CameraCallable;->call()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/motorola/camera/device/callables/CameraCallable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/device/callables/CameraCallable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CameraCallable;Lcom/google/android/exoplayer2/FormatHolder;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
