.class public final Lcom/google/android/play/core/appupdate/zzj;
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

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzj;->zza:Lcom/google/android/play/core/appupdate/internal/zzaf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzj;->zza:Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Lcom/google/android/play/core/appupdate/zzg;

    invoke-static {p0}, Landroidx/appcompat/R$dimen;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
