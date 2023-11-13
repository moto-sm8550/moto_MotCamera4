.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/lang/String;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoc;

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzos;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzos;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoc;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoc;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoc;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Landroidx/databinding/library/R$id;->zza(Landroid/os/Parcel;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zza:Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zzb:Ljava/lang/String;

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zzc:Ljava/lang/String;

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zzd:Ljava/lang/String;

    const/4 v2, 0x4

    .line 6
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zze:Ljava/lang/String;

    const/4 v2, 0x5

    .line 7
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoc;

    const/4 v2, 0x6

    .line 8
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoc;

    const/4 v1, 0x7

    .line 9
    invoke-static {p1, v1, p0, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 10
    invoke-static {p1, v0}, Landroidx/databinding/library/R$id;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
