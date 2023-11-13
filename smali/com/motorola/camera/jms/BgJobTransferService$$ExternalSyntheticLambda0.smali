.class public final synthetic Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/jms/BgJobTransferService;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/jms/BgJobTransferService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/jms/BgJobTransferService;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/jms/BgJobTransferService;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    .line 4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return v1
.end method
