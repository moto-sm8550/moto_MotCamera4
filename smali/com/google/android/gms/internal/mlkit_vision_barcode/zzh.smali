.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

.field public zzb:Ljava/lang/String;

.field public zzc:Ljava/lang/String;

.field public zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

.field public zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

.field public zzf:[Ljava/lang/String;

.field public zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzf:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzb:Ljava/lang/String;

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzc:Ljava/lang/String;

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    const/4 v2, 0x5

    .line 6
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    const/4 v2, 0x6

    .line 7
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzf:[Ljava/lang/String;

    const/4 v2, 0x7

    .line 8
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zze;

    const/16 v1, 0x8

    .line 9
    invoke-static {p1, v1, p0, p2}, Landroidx/databinding/library/R$id;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 10
    invoke-static {p1, v0}, Landroidx/databinding/library/R$id;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
