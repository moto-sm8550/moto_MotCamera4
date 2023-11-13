.class public final Lcom/motorola/camera/utility/InAppUpdateUtils$appUpdateManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InAppUpdateUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/utility/InAppUpdateUtils;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/InAppUpdateUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$appUpdateManager$2;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$appUpdateManager$2;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appContext:Landroid/content/Context;

    .line 3
    const-class v0, Landroidx/room/RoomMasterTable;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/room/RoomMasterTable;->zza:Lcom/google/android/play/core/appupdate/zzz;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/play/core/appupdate/zzi;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    .line 6
    :cond_0
    invoke-direct {v1, p0}, Lcom/google/android/play/core/appupdate/zzi;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p0, Lcom/google/android/play/core/appupdate/zzz;

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/play/core/appupdate/zzz;-><init>(Lcom/google/android/play/core/appupdate/zzi;)V

    .line 9
    sput-object p0, Landroidx/room/RoomMasterTable;->zza:Lcom/google/android/play/core/appupdate/zzz;

    :cond_1
    sget-object p0, Landroidx/room/RoomMasterTable;->zza:Lcom/google/android/play/core/appupdate/zzz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 10
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzz;->zzg:Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/appupdate/AppUpdateManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0

    throw p0
.end method
