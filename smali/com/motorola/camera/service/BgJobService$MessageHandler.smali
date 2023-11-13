.class public final Lcom/motorola/camera/service/BgJobService$MessageHandler;
.super Landroid/os/Handler;
.source "BgJobService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/BgJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageHandler"
.end annotation


# instance fields
.field public final bgJobService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/service/BgJobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/BgJobService;)V
    .locals 1

    const-string/jumbo v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService$MessageHandler;->bgJobService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getBgInstance()Lcom/motorola/camera/service/BgJobService;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService$MessageHandler;->bgJobService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/service/BgJobService;

    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/service/BgJobService$MessageHandler;->getBgInstance()Lcom/motorola/camera/service/BgJobService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "msg.data"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    .line 4
    invoke-virtual {v2, v3}, Lcom/motorola/camera/service/BgJobService;->getTaskID(Landroid/os/Bundle;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/service/BgJobService$MessageHandler;->getBgInstance()Lcom/motorola/camera/service/BgJobService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v4, v3, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    .line 7
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v6, "msg.replyTo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v3, p1, v2}, Lcom/motorola/camera/service/BgJobService;->acknowledgeJob(Landroid/os/Message;Lcom/motorola/camera/background/common/TaskId;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "action"

    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 10
    new-instance v4, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 11
    sget-object v5, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    .line 13
    new-instance v6, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2, v3, v4}, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;-><init>(ILcom/motorola/camera/service/BgJobService;Landroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 14
    sget v3, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    const-string v3, "Exception while handling : "

    .line 15
    invoke-static {v3}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 16
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BgJobService"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/service/BgJobService$MessageHandler;->getBgInstance()Lcom/motorola/camera/service/BgJobService;

    move-result-object p0

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x0

    .line 18
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v4, 0x1

    .line 19
    new-instance v5, Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-direct {v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;-><init>()V

    const-string v6, "URI"

    .line 20
    invoke-virtual {v5, v6, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "FILE_NAME"

    .line 21
    invoke-virtual {v5, v6, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DATE_TYPE"

    .line 22
    invoke-virtual {v5, v1, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GLOBAL_UUID"

    .line 23
    invoke-virtual {v5, v0, v2, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 24
    invoke-virtual {v5, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "ERROR_CASE"

    .line 25
    invoke-virtual {v5, p1, v4}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-object p1, p0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/LinkedHashMap;

    const-string/jumbo v0, "task_id"

    .line 27
    invoke-virtual {v5, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    .line 28
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Messenger;

    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {v5, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    const-string v1, "data.taskID"

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/camera/service/BgJobService;->notifyJobStatus(Landroid/os/Messenger;Lcom/motorola/camera/background/common/TaskId;I)V

    :cond_2
    :goto_1
    return-void
.end method
