.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;

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

    const-string v3, "maxMs"

    .line 7
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 8
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v3, "minMs"

    .line 14
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 15
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v3, "avgMs"

    .line 21
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v3, "firstQuartileMs"

    .line 28
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 29
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x5

    .line 30
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;-><init>(I)V

    .line 31
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    .line 32
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;)Ljava/util/HashMap;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "medianMs"

    .line 35
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 36
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x6

    .line 37
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;-><init>(I)V

    .line 38
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdj;

    .line 39
    invoke-static {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;)Ljava/util/HashMap;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "thirdQuartileMs"

    .line 42
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 43
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

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
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;->zza:Ljava/lang/Long;

    .line 3
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;->zzb:Ljava/lang/Long;

    .line 5
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;->zzc:Ljava/lang/Long;

    .line 7
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;->zzd:Ljava/lang/Long;

    .line 9
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;->zze:Ljava/lang/Long;

    .line 11
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;->zzf:Ljava/lang/Long;

    .line 13
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
