.class public final synthetic Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;JLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    iput-wide p3, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;->f$2:J

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    const-string/jumbo v4, "this$0"

    .line 1
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$errorBundle"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->listener:Lcom/motorola/camera/shared/bgservice/BgJobConnectionIntf$TransferJobListener;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->listener:Lcom/motorola/camera/shared/bgservice/BgJobConnectionIntf$TransferJobListener;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;->this$0:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    .line 9
    new-instance v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
