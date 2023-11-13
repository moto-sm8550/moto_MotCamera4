.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;",
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

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzog;

.field public final zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzok;

.field public final zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzom;

.field public final zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzol;

.field public final zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzof;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode/zzog;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzok;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzom;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzol;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzof;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zze:[Landroid/graphics/Point;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzog;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzok;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzom;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzol;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzof;

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
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zza:I

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzb:Ljava/lang/String;

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzc:Ljava/lang/String;

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzd:[B

    const/4 v2, 0x4

    .line 6
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeByteArray(Landroid/os/Parcel;I[B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zze:[Landroid/graphics/Point;

    const/4 v2, 0x5

    .line 7
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzf:I

    const/4 v2, 0x6

    .line 8
    invoke-static {p1, v2, v1}, Landroidx/databinding/library/R$id;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzog;

    const/4 v2, 0x7

    .line 9
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;

    const/16 v2, 0x8

    .line 10
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzok;

    const/16 v2, 0x9

    .line 11
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzom;

    const/16 v2, 0xa

    .line 12
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzol;

    const/16 v2, 0xb

    .line 13
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoh;

    const/16 v2, 0xc

    .line 14
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzod;

    const/16 v2, 0xd

    .line 15
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoe;

    const/16 v2, 0xe

    .line 16
    invoke-static {p1, v2, v1, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzof;

    const/16 v1, 0xf

    .line 17
    invoke-static {p1, v1, p0, p2}, Landroidx/databinding/library/R$id;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 18
    invoke-static {p1, v0}, Landroidx/databinding/library/R$id;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
