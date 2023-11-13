.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MemoryModule.kt"

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
    value = "SMAP\nMemoryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryModule.kt\ncom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1\n+ 2 Timing.kt\nkotlin/system/TimingKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n17#2,6:103\n1#3:109\n*S KotlinDebug\n*F\n+ 1 MemoryModule.kt\ncom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1\n*L\n49#1:103,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.ui.controls_2020.appinfo.MemoryModule$startRunning$1"
    f = "MemoryModule.kt"
    l = {
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

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

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->L$0:Ljava/lang/Object;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    .line 4
    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 7
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v5

    new-array v6, v2, [I

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v2, :cond_3

    .line 8
    aput v5, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object v5, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->activityService:Landroid/app/ActivityManager;

    .line 10
    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v5

    aget-object v5, v5, v7

    .line 11
    iget v6, v5, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v7, v5, Landroid/os/Debug$MemoryInfo;->nativePss:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/os/Debug$MemoryInfo;->otherPss:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    .line 12
    iget v8, v5, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v9, v5, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v8, v9

    iget v5, v5, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v8, v5

    int-to-float v5, v8

    div-float/2addr v5, v7

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;

    .line 14
    iget-object v7, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;->proportionalSetSizeMb:Landroidx/lifecycle/MutableLiveData;

    .line 15
    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, v6}, Ljava/lang/Float;-><init>(F)V

    .line 16
    invoke-virtual {v7, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;->uniqueSetSizeMb:Landroidx/lifecycle/MutableLiveData;

    .line 18
    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, v5}, Ljava/lang/Float;-><init>(F)V

    .line 19
    invoke-virtual {p1, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x3e8

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    .line 21
    :try_start_1
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :goto_2
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    .line 23
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;->proportionalSetSizeMb:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 26
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$LiveDatas;->uniqueSetSizeMb:Landroidx/lifecycle/MutableLiveData;

    .line 27
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
