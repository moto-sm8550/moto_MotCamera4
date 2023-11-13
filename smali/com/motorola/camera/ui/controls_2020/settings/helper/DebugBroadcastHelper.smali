.class public final Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;
.super Ljava/lang/Object;
.source "DebugBroadcastHelper.kt"


# instance fields
.field public final debugActionReceiver:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper$debugActionReceiver$1;

.field public final enteringAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final exitingAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->enteringAction:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->exitingAction:Lkotlin/jvm/functions/Function0;

    .line 2
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper$debugActionReceiver$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper$debugActionReceiver$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->debugActionReceiver:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper$debugActionReceiver$1;

    return-void
.end method


# virtual methods
.method public final registerActionReceiver()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.motorola.camera3.DEBUG"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->debugActionReceiver:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper$debugActionReceiver$1;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final unregisterActionReceiver()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->debugActionReceiver:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper$debugActionReceiver$1;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
