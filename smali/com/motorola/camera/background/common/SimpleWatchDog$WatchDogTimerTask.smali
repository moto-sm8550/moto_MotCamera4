.class public final Lcom/motorola/camera/background/common/SimpleWatchDog$WatchDogTimerTask;
.super Ljava/util/TimerTask;
.source "SimpleWatchDog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/common/SimpleWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WatchDogTimerTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/background/common/SimpleWatchDog;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/common/SimpleWatchDog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/background/common/SimpleWatchDog$WatchDogTimerTask;->this$0:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog$WatchDogTimerTask;->this$0:Lcom/motorola/camera/background/common/SimpleWatchDog;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->runnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
