.class public final Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JobMgrService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.background.service.jms.JobMgrService$executor$1$1$1"
    f = "JobMgrService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $localTag:Ljava/lang/String;

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/background/service/jms/JobMgrService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->$localTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->$localTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {v0, v1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;-><init>(Ljava/lang/String;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->$localTag:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-direct {v0, v1, p0, p2}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;-><init>(Ljava/lang/String;Lcom/motorola/camera/background/service/jms/JobMgrService;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->L$0:Ljava/lang/Object;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->$localTag:Ljava/lang/String;

    const-string v1, "progress.onReceive: state: "

    .line 3
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 5
    iget v2, v2, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:I

    .line 6
    invoke-static {v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;->stringValueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v2, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 10
    iget v1, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 11
    iget p1, p1, Lcom/motorola/camera/background/service/jms/JobMgrService$ProgressUpdates;->numPending:I

    if-nez p1, :cond_0

    .line 12
    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/JobMgrService;->mDefaultNotification:Ljava/lang/String;

    const-string v1, "mDefaultNotification"

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 17
    iget-object v5, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 18
    iget-object v5, v5, Lcom/motorola/camera/background/service/jms/JobMgrService;->mDefaultNotification:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 19
    invoke-virtual {v0, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 21
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v3, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 23
    iget-object v0, p1, Lcom/motorola/camera/background/service/jms/JobMgrService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 24
    invoke-virtual {p1}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    const-string p0, "mNotificationManager"

    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 27
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 28
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 29
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobMgrService$executor$1$1$1;->this$0:Lcom/motorola/camera/background/service/jms/JobMgrService;

    .line 30
    iget-boolean p1, p0, Lcom/motorola/camera/background/service/jms/JobMgrService;->restartedByAndroid:Z

    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p0}, Lcom/motorola/camera/background/service/jms/JobMgrService;->getMImplIntf()Ljms/IJobMgrService;

    move-result-object p1

    invoke-interface {p1}, Ljms/IJobMgrService;->numPendingJobs()I

    move-result p1

    if-gtz p1, :cond_5

    .line 32
    invoke-virtual {p0, v3}, Lcom/motorola/camera/background/service/jms/JobMgrService;->_stopSelf(Z)V

    .line 33
    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
