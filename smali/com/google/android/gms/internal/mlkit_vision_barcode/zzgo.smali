.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zze:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;-><init>(I)V

    .line 3
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    .line 4
    invoke-static {v1, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;)Ljava/util/HashMap;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "imageFormat"

    .line 7
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 8
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x2

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;-><init>(I)V

    .line 10
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    .line 11
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;)Ljava/util/HashMap;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "originalImageSize"

    .line 14
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 15
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x3

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;-><init>(I)V

    .line 17
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    .line 18
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;)Ljava/util/HashMap;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "compressedImageSize"

    .line 21
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x4

    .line 23
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;-><init>(I)V

    .line 24
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    .line 25
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;)Ljava/util/HashMap;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "isOdmlImage"

    .line 28
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 29
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

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
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjy;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjw;

    .line 3
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjy;->zzb:Ljava/lang/Integer;

    .line 5
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 p1, 0x0

    .line 6
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 7
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
