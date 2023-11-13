.class public final Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;
.super Landroid/os/Handler;
.source "TimerCountdownManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/countdown/TimerCountdownManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountdownHandler"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimerCountdownManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimerCountdownManager.kt\ncom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,80:1\n1849#2,2:81\n1849#2,2:83\n*S KotlinDebug\n*F\n+ 1 TimerCountdownManager.kt\ncom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler\n*L\n62#1:81,2\n73#1:83,2\n*E\n"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    sget p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const/16 p1, 0x3e8

    .line 3
    div-int/2addr p0, p1

    .line 4
    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/countdown/TimerCountdownCallback;

    .line 6
    sget v2, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    .line 7
    invoke-interface {v1, v2, p0}, Lcom/motorola/camera/countdown/TimerCountdownCallback;->onCountdown(II)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->INSTANCE:Lcom/motorola/camera/countdown/TimerCountdownManager;

    .line 9
    sget p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    sub-int/2addr p0, p1

    .line 10
    sput p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    if-lt p0, p1, :cond_1

    .line 11
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;

    if-eqz p0, :cond_3

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_1
    if-lez p0, :cond_2

    .line 13
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/motorola/camera/countdown/TimerCountdownManager$CountdownHandler;

    if-eqz p0, :cond_3

    .line 14
    sget p1, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    int-to-long v1, p1

    .line 15
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 16
    :cond_2
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 18
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method
