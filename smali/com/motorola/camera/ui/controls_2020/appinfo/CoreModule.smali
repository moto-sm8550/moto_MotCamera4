.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;
.super Ljava/lang/Object;
.source "CoreModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;,
        Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreModule.kt\ncom/motorola/camera/ui/controls_2020/appinfo/CoreModule\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,287:1\n1849#2,2:288\n1849#2,2:290\n1849#2,2:292\n*S KotlinDebug\n*F\n+ 1 CoreModule.kt\ncom/motorola/camera/ui/controls_2020/appinfo/CoreModule\n*L\n194#1:288,2\n222#1:290,2\n235#1:292,2\n*E\n"
.end annotation


# static fields
.field public static final LISTENED_NOTIFIERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/Notifier$TYPE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final batteryDrainMonitor:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

.field public final envInfoListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda1;

.field public final focusStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

.field public isRunning:Z

.field public final liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

.field public final mcfStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;

.field public final notifiersListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

.field public final previewSizeListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingChangeListener<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final statusListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/camera/Notifier$TYPE;

    .line 1
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->GL_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->VIEWFINDER_FRAME_RATE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->LISTENED_NOTIFIERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    const-string v1, "batterymanager"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.os.BatteryManager"

    .line 4
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/os/BatteryManager;

    .line 5
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->currentDrainMa:Landroidx/lifecycle/MutableLiveData;

    .line 7
    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;-><init>(Landroid/os/BatteryManager;Landroidx/lifecycle/MutableLiveData;)V

    .line 8
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->batteryDrainMonitor:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    .line 9
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->mcfStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;

    .line 10
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->envInfoListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda1;

    .line 11
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusStatus:Landroidx/lifecycle/MutableLiveData;

    .line 13
    invoke-direct {p1, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->focusStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

    .line 14
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->notifiersListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

    .line 15
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->previewSizeListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda2;

    .line 16
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->cameraStatus:Landroidx/lifecycle/MutableLiveData;

    .line 18
    invoke-direct {p1, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->statusListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;

    return-void
.end method
