.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BatteryDrainMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBatteryDrainMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BatteryDrainMonitor.kt\ncom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1\n+ 2 Timing.kt\nkotlin/system/TimingKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n17#2,6:60\n1#3:66\n*S KotlinDebug\n*F\n+ 1 BatteryDrainMonitor.kt\ncom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1\n*L\n31#1:60,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.ui.controls_2020.appinfo.BatteryDrainMonitor$start$1"
    f = "BatteryDrainMonitor.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->L$0:Ljava/lang/Object;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object v1, p0

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v0, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->label:I

    const-wide v3, 0x408f400000000000L    # 1000.0

    const/4 v5, 0x2

    const-string v6, "<this>"

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v7, :cond_0

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->L$0:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object v8, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    .line 5
    iget-object v9, v8, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->batteryManager:Landroid/os/BatteryManager;

    .line 6
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v9, v5}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v9, v3

    .line 8
    iput-wide v9, v8, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->currentMa:D

    .line 9
    iget-object v8, v8, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    move-object v8, v0

    .line 10
    :goto_0
    invoke-static {v8}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    .line 13
    iget-object v13, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->batteryManager:Landroid/os/BatteryManager;

    .line 14
    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v13, v5}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v13

    int-to-double v13, v13

    div-double/2addr v13, v3

    mul-double/2addr v13, v11

    const-wide v11, 0x3fefae147ae147aeL    # 0.99

    .line 16
    iget-wide v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->currentMa:D

    mul-double/2addr v3, v11

    add-double/2addr v3, v13

    .line 17
    iput-wide v3, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->currentMa:D

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x21

    sub-long/2addr v9, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v9, v3

    if-lez v0, :cond_2

    .line 20
    :try_start_1
    iput-object v8, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->L$0:Ljava/lang/Object;

    iput v7, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->label:I

    invoke-static {v9, v10, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_2

    return-object v2

    :goto_1
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_2
    :goto_2
    const-wide v3, 0x408f400000000000L    # 1000.0

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    .line 22
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->liveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 24
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
