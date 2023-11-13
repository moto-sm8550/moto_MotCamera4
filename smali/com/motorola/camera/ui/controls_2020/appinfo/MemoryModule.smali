.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;
.super Ljava/lang/Object;
.source "MemoryModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;
    }
.end annotation


# instance fields
.field public final activityService:Landroid/app/ActivityManager;

.field public coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public isRunning:Z

.field public final liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;

    .line 3
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/ContextScope;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    const-string v0, "activity"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager;

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->activityService:Landroid/app/ActivityManager;

    return-void
.end method
