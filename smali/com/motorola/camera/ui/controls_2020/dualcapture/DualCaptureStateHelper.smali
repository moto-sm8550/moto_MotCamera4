.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;
.super Ljava/lang/Object;
.source "DualCaptureStateHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;

.field public static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowClick:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion$instance$2;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper$Companion$instance$2;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->allowClick:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized setAllowClickState(Z)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->allowClick:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->allowClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
