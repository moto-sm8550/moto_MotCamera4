.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzh:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 3
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 4
    invoke-static {v1, v0}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "durationMs"

    .line 7
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 8
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x2

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 10
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 11
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "imageSource"

    .line 14
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 15
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x3

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 17
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 18
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "imageFormat"

    .line 21
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x4

    .line 23
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 24
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 25
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "imageByteSize"

    .line 28
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 29
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x5

    .line 30
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 31
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 32
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "imageWidth"

    .line 35
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 36
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x6

    .line 37
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 38
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 39
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "imageHeight"

    .line 42
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 43
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x7

    .line 44
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 45
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 46
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "rotationDegrees"

    .line 49
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 50
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;->zza:Ljava/lang/Long;

    .line 3
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;

    .line 5
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;

    .line 7
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;->zzd:Ljava/lang/Integer;

    .line 9
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;->zze:Ljava/lang/Integer;

    .line 11
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 12
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;->zzf:Ljava/lang/Integer;

    .line 13
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 14
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;->zzg:Ljava/lang/Integer;

    .line 15
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
