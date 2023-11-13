.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzh:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzi:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzj:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzk:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzl:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzm:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzn:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzo:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

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

    const-string v3, "appId"

    .line 7
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 8
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v3, "appVersion"

    .line 14
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 15
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v3, "firebaseProjectId"

    .line 21
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v3, "mlSdkVersion"

    .line 28
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 29
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string/jumbo v3, "tfliteSchemaVersion"

    .line 35
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 36
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v3, "gcmSenderId"

    .line 42
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 43
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

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

    const-string v3, "apiKey"

    .line 49
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 50
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    const/16 v0, 0x8

    .line 51
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 52
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 53
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "languages"

    .line 56
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 57
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzi:Lcom/google/firebase/encoders/FieldDescriptor;

    const/16 v0, 0x9

    .line 58
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 59
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 60
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "mlSdkInstanceId"

    .line 63
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 64
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzj:Lcom/google/firebase/encoders/FieldDescriptor;

    const/16 v0, 0xa

    .line 65
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 66
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 67
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "isClearcutClient"

    .line 70
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 71
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzk:Lcom/google/firebase/encoders/FieldDescriptor;

    const/16 v0, 0xb

    .line 72
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 73
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 74
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "isStandaloneMlkit"

    .line 77
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 78
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzl:Lcom/google/firebase/encoders/FieldDescriptor;

    const/16 v0, 0xc

    .line 79
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 80
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 81
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "isJsonLogging"

    .line 84
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 85
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzm:Lcom/google/firebase/encoders/FieldDescriptor;

    const/16 v0, 0xd

    .line 86
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 87
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 88
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "buildLevel"

    .line 91
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 92
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzn:Lcom/google/firebase/encoders/FieldDescriptor;

    const/16 v0, 0xe

    .line 93
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzac;-><init>(I)V

    .line 94
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzah;

    .line 95
    invoke-static {v0, v1}, Lan$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_common/zzac;)Ljava/util/HashMap;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdl$$ExternalSyntheticOutline1;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "optionalModuleVersion"

    .line 98
    invoke-direct {v1, v3, v0, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 99
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzo:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zza:Ljava/lang/String;

    .line 3
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzb:Ljava/lang/String;

    .line 5
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v0, 0x0

    .line 6
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzc:Ljava/lang/String;

    .line 8
    invoke-interface {p2, p0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 9
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzd:Ljava/lang/String;

    .line 10
    invoke-interface {p2, p0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 11
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 12
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzi:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zze:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    .line 14
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzj:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 15
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzf:Ljava/lang/String;

    .line 16
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzk:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 17
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzg:Ljava/lang/Boolean;

    .line 18
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzl:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 19
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzh:Ljava/lang/Boolean;

    .line 20
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzm:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 21
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzi:Ljava/lang/Boolean;

    .line 22
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzn:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 23
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzj:Ljava/lang/Integer;

    .line 24
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zzo:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 25
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;->zzk:Ljava/lang/Integer;

    .line 26
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
