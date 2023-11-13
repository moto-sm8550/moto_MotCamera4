.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final enum zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

.field public static final synthetic zzn:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;


# instance fields
.field public final zzo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v3, "TYPE_CONTACT_INFO"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v5, "TYPE_EMAIL"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v7, "TYPE_ISBN"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v9, "TYPE_PHONE"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v11, "TYPE_PRODUCT"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v13, "TYPE_SMS"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v15, "TYPE_TEXT"

    const/4 v14, 0x7

    .line 8
    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v15, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v14, "TYPE_URL"

    const/16 v12, 0x8

    .line 9
    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v12, "TYPE_WIFI"

    const/16 v10, 0x9

    .line 10
    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v10, "TYPE_GEO"

    const/16 v8, 0xa

    .line 11
    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v8, "TYPE_CALENDAR_EVENT"

    const/16 v6, 0xb

    .line 12
    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const-string v6, "TYPE_DRIVER_LICENSE"

    const/16 v4, 0xc

    .line 13
    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzn:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzo:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzn:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzo:I

    return p0
.end method
