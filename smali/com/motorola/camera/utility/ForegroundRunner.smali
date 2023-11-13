.class public final Lcom/motorola/camera/utility/ForegroundRunner;
.super Ljava/lang/Object;
.source "ForegroundRunner.kt"


# static fields
.field public static final handler$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final thread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppFgRunner"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/ForegroundRunner;->thread:Landroid/os/HandlerThread;

    .line 2
    sget-object v0, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    .line 3
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4
    sput-object v1, Lcom/motorola/camera/utility/ForegroundRunner;->handler$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static final getHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/ForegroundRunner;->handler$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method
