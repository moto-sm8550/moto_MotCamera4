.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:[B

.field public final zze:[Landroid/graphics/Point;

.field public final zzf:I

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

.field public final zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

.field public final zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

.field public final zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

.field public final zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zze:[Landroid/graphics/Point;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

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
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zza:I

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzb:Ljava/lang/String;

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzc:Ljava/lang/String;

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzd:[B

    const/4 v2, 0x4

    .line 6
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeByteArray(Landroid/os/Parcel;I[B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zze:[Landroid/graphics/Point;

    const/4 v2, 0x5

    .line 7
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzf:I

    const/4 v2, 0x6

    .line 8
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    const/4 v2, 0x7

    .line 9
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    const/16 v2, 0x8

    .line 10
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    const/16 v2, 0x9

    .line 11
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

    const/16 v2, 0xa

    .line 12
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    const/16 v2, 0xb

    .line 13
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    const/16 v2, 0xc

    .line 14
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    const/16 v2, 0xd

    .line 15
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    const/16 v2, 0xe

    .line 16
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    const/16 v1, 0xf

    .line 17
    invoke-static {p1, v1, p0, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 18
    invoke-static {p1, v0}, Landroidx/databinding/library/R$id;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
