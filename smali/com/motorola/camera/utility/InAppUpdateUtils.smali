.class public final Lcom/motorola/camera/utility/InAppUpdateUtils;
.super Ljava/lang/Object;
.source "InAppUpdateUtils.kt"

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;
    }
.end annotation


# instance fields
.field public final appContext:Landroid/content/Context;

.field public appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

.field public final appUpdateManager$delegate:Lkotlin/SynchronizedLazyImpl;

.field public bytesDownloaded:J

.field public bytesToDownload:J

.field public final context:Landroid/app/Activity;

.field public installErrorCode:I

.field public isInstallingUpdate:Z

.field public final onStateUpdateChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public updateDownloaded:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->context:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    .line 4
    new-instance p2, Lcom/motorola/camera/utility/InAppUpdateUtils$appUpdateManager$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/utility/InAppUpdateUtils$appUpdateManager$2;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils;)V

    .line 5
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v0, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final completeUpdate()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->isInstallingUpdate:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/gms/tasks/zzw;

    return-void
.end method

.method public final finishUpdateManager()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    return-void
.end method

.method public final getAppUpdateManager()Lcom/google/android/play/core/appupdate/AppUpdateManager;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateManager$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/appupdate/AppUpdateManager;

    return-object p0
.end method

.method public final onStateUpdate(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->totalBytesToDownload()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesToDownload:J

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->bytesDownloaded()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesDownloaded:J

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installErrorCode()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    .line 6
    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result p1

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(II)V

    .line 7
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final startForInAppUpdate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v1

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->context:Landroid/app/Activity;

    .line 5
    invoke-interface {v1, v0, p0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method

.method public final updateTimesShown()V
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Integer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
