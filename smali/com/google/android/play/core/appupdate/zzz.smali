.class public final Lcom/google/android/play/core/appupdate/zzz;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field public final zzb:Lcom/google/android/play/core/appupdate/zzk;

.field public final zzg:Lcom/google/android/play/core/appupdate/internal/zzaf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/zzi;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/appupdate/zzk;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/zzk;-><init>(Lcom/google/android/play/core/appupdate/zzi;)V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzz;->zzb:Lcom/google/android/play/core/appupdate/zzk;

    new-instance p1, Lcom/google/android/play/core/appupdate/zzu;

    invoke-direct {p1, v0}, Lcom/google/android/play/core/appupdate/zzu;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    new-instance v1, Lcom/google/android/play/core/appupdate/zzs;

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/appupdate/zzs;-><init>(Lcom/google/android/play/core/appupdate/internal/zzaf;Lcom/google/android/play/core/appupdate/internal/zzaf;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    new-instance v1, Lcom/google/android/play/core/appupdate/zzd;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/appupdate/zzd;-><init>(Lcom/google/android/play/core/appupdate/internal/zzaf;)V

    .line 3
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/appupdate/zzh;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/play/core/appupdate/zzh;-><init>(Lcom/google/android/play/core/appupdate/internal/zzaf;Lcom/google/android/play/core/appupdate/internal/zzaf;Lcom/google/android/play/core/appupdate/internal/zzaf;)V

    .line 4
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    new-instance v0, Lcom/google/android/play/core/appupdate/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/zzj;-><init>(Lcom/google/android/play/core/appupdate/internal/zzaf;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzz;->zzg:Lcom/google/android/play/core/appupdate/internal/zzaf;

    return-void
.end method
