.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public zza:Z

.field public zzb:Z

.field public zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zza:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zzb:Z

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zza:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdp;->zzb:Z

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl;

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
