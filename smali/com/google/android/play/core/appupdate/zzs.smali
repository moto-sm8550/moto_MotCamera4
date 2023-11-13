.class public final Lcom/google/android/play/core/appupdate/zzs;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.0.0"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;


# instance fields
.field public final zza:Lcom/google/android/play/core/appupdate/internal/zzaf;

.field public final zzb:Lcom/google/android/play/core/appupdate/internal/zzaf;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzaf;Lcom/google/android/play/core/appupdate/internal/zzaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzs;->zza:Lcom/google/android/play/core/appupdate/internal/zzaf;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzs;->zzb:Lcom/google/android/play/core/appupdate/internal/zzaf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzs;->zza:Lcom/google/android/play/core/appupdate/internal/zzaf;

    check-cast v0, Lcom/google/android/play/core/appupdate/zzk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzk;->zzb()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzs;->zzb:Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/google/android/play/core/appupdate/zzr;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzt;

    invoke-direct {v1, v0, p0}, Lcom/google/android/play/core/appupdate/zzr;-><init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/zzt;)V

    return-object v1
.end method
