.class public final Lcom/google/android/play/core/appupdate/zzd;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.0.0"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;


# instance fields
.field public final zza:Lcom/google/android/play/core/appupdate/internal/zzaf;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/google/android/play/core/appupdate/internal/zzaf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/google/android/play/core/appupdate/internal/zzaf;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzk;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/zzk;->zzb()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/google/android/play/core/appupdate/zzc;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/zzc;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
