.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:D

.field public final zzb:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzow;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzow;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;->zza:D

    iput-wide p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;->zzb:D

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Landroidx/databinding/library/R$id;->zza(Landroid/os/Parcel;I)I

    move-result p2

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;->zza:D

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v2, v0, v1}, Landroidx/databinding/library/R$id;->writeDouble(Landroid/os/Parcel;ID)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;->zzb:D

    const/4 p0, 0x2

    .line 4
    invoke-static {p1, p0, v0, v1}, Landroidx/databinding/library/R$id;->writeDouble(Landroid/os/Parcel;ID)V

    .line 5
    invoke-static {p1, p2}, Landroidx/databinding/library/R$id;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
