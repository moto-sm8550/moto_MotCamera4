.class public final synthetic Lcom/motorola/camera/panorama/PanoramaService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/panorama/PanoramaService$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/panorama/PanoramaService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/panorama/PanoramaService$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/panorama/PanoramaService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService$$ExternalSyntheticLambda0;

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

    check-cast p0, Lcom/motorola/camera/panorama/PanoCallable;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/panorama/PanoCallable;->mBegin:J

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/panorama/PanoCallable;->call()Lcom/motorola/camera/panorama/PanoCallableReturn;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallable$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/panorama/PanoCallable$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 6
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
