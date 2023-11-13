.class public final Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;
.super Ljava/lang/Object;
.source "BgServiceConnection.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Handler;Lcom/motorola/camera/shared/bgservice/BgJobConnectionIntf$TransferJobListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 2
    iput-object v0, p1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p1, Landroid/os/HandlerThread;

    sget-object p2, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 8
    new-instance p2, Landroid/os/Messenger;

    new-instance v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$BgJobResponseHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "looper"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$BgJobResponseHandler;-><init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;Landroid/os/Looper;)V

    invoke-direct {p2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->messenger:Landroid/os/Messenger;

    .line 9
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->handlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$serviceConnection$1;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    return-void
.end method
