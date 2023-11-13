.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzop;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzop;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzop;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzop;->zza:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Landroidx/databinding/library/R$id;->zza(Landroid/os/Parcel;I)I

    move-result p2

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzop;->zza:I

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0, p0}, Landroidx/databinding/library/R$id;->writeInt(Landroid/os/Parcel;II)V

    .line 4
    invoke-static {p1, p2}, Landroidx/databinding/library/R$id;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
