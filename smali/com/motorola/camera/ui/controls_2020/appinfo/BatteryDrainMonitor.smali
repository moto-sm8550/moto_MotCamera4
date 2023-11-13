.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;
.super Ljava/lang/Object;
.source "BatteryDrainMonitor.kt"


# instance fields
.field public final batteryManager:Landroid/os/BatteryManager;

.field public coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public currentMa:D

.field public final liveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/BatteryManager;Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryManager;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-string v0, "liveData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->batteryManager:Landroid/os/BatteryManager;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->liveData:Landroidx/lifecycle/MutableLiveData;

    .line 4
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 5
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/internal/ContextScope;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method
