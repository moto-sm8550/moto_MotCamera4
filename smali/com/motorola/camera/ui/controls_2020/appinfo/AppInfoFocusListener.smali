.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;
.super Ljava/lang/Object;
.source "AppInfoFocusListener.kt"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;
    }
.end annotation


# instance fields
.field public final liveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "liveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;->liveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;->updateFocusStatus(ZZ)V

    return-void
.end method

.method public final onAutoFocusInactive(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;->updateFocusStatus(ZZ)V

    return-void
.end method

.method public final onAutoFocusScan(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;->updateFocusStatus(ZZ)V

    return-void
.end method

.method public final onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;->updateFocusStatus(ZZ)V

    return-void
.end method

.method public final onFocusModeChanged(I)V
    .locals 0

    return-void
.end method

.method public final onManualFocusCompleted()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;->updateFocusStatus(ZZ)V

    return-void
.end method

.method public final onManualFocusStarted()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;->updateFocusStatus(ZZ)V

    return-void
.end method

.method public final updateFocusStatus(ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;->liveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener$FocusStatus;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
