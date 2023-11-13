.class public final Lcom/google/photos/vision/barhopper/zzc;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/zzc;


# instance fields
.field private zzA:B

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private zzj:Lcom/google/photos/vision/barhopper/zzr;

.field private zzk:Lcom/google/photos/vision/barhopper/zzy;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

.field private zzm:Lcom/google/photos/vision/barhopper/zzag;

.field private zzn:Lcom/google/photos/vision/barhopper/zzao;

.field private zzo:Lcom/google/photos/vision/barhopper/zzaj;

.field private zzp:Lcom/google/photos/vision/barhopper/zzac;

.field private zzq:Lcom/google/photos/vision/barhopper/zzp;

.field private zzr:Lcom/google/photos/vision/barhopper/zzt;

.field private zzs:Lcom/google/photos/vision/barhopper/zzl;

.field private zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzu:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

.field private zzv:Ljava/lang/String;

.field private zzw:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field private zzx:Z

.field private zzy:D

.field private zzz:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/photos/vision/barhopper/zzc;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzc;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzc;->zza:Lcom/google/photos/vision/barhopper/zzc;

    const-class v1, Lcom/google/photos/vision/barhopper/zzc;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzS(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzA:B

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzc;->zzh:Ljava/lang/String;

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    .line 4
    iput-object v2, p0, Lcom/google/photos/vision/barhopper/zzc;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    .line 6
    iput-object v3, p0, Lcom/google/photos/vision/barhopper/zzc;->zzu:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzei;

    iput-object v1, p0, Lcom/google/photos/vision/barhopper/zzc;->zzv:Ljava/lang/String;

    .line 7
    iput-object v2, p0, Lcom/google/photos/vision/barhopper/zzc;->zzw:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/photos/vision/barhopper/zzc;->zzx:Z

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzz:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/photos/vision/barhopper/zzc;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzc;->zza:Lcom/google/photos/vision/barhopper/zzc;

    return-object v0
.end method

.method public static zzp(Lcom/google/photos/vision/barhopper/zzc;ILcom/google/photos/vision/barhopper/zzae;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    :cond_1
    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 6
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzA()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzi:I

    invoke-static {p0}, Lcom/google/photos/vision/barhopper/zzi;->zza(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final zza()I
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzd()Lcom/google/photos/vision/barhopper/zzp;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzq:Lcom/google/photos/vision/barhopper/zzp;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzp;->zzd()Lcom/google/photos/vision/barhopper/zzp;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zze()Lcom/google/photos/vision/barhopper/zzr;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzj:Lcom/google/photos/vision/barhopper/zzr;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzr;->zzc()Lcom/google/photos/vision/barhopper/zzr;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzf()Lcom/google/photos/vision/barhopper/zzt;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzr:Lcom/google/photos/vision/barhopper/zzt;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzt;->zzb()Lcom/google/photos/vision/barhopper/zzt;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzg(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-class v0, Lcom/google/photos/vision/barhopper/zzae;

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_3

    const/4 v0, 0x0

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-nez p2, :cond_0

    move v1, v2

    :cond_0
    iput-byte v1, p0, Lcom/google/photos/vision/barhopper/zzc;->zzA:B

    return-object v0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/zzc;->zza:Lcom/google/photos/vision/barhopper/zzc;

    return-object p0

    .line 3
    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzb;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/photos/vision/barhopper/zzb;-><init>(Landroidx/appcompat/R$drawable;)V

    return-object p0

    .line 5
    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/zzc;

    .line 6
    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzc;-><init>()V

    return-object p0

    :cond_4
    const/16 p0, 0x1a

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo p1, "zze"

    aput-object p1, p0, v2

    const-string/jumbo p1, "zzf"

    aput-object p1, p0, v1

    .line 7
    sget-object p1, Lcom/google/photos/vision/barhopper/zze;->zza:Lcom/google/photos/vision/barhopper/zze;

    aput-object p1, p0, v6

    const-string/jumbo p1, "zzg"

    aput-object p1, p0, v5

    const-string/jumbo p1, "zzh"

    aput-object p1, p0, v4

    const-string/jumbo p1, "zzi"

    aput-object p1, p0, v3

    const/4 p1, 0x6

    sget-object p2, Lcom/google/photos/vision/barhopper/zzh;->zza:Lcom/google/photos/vision/barhopper/zzh;

    aput-object p2, p0, p1

    const/4 p1, 0x7

    const-string/jumbo p2, "zzj"

    aput-object p2, p0, p1

    const/16 p1, 0x8

    const-string/jumbo p2, "zzk"

    aput-object p2, p0, p1

    const/16 p1, 0x9

    const-string/jumbo p2, "zzl"

    aput-object p2, p0, p1

    const/16 p1, 0xa

    const-string/jumbo p2, "zzm"

    aput-object p2, p0, p1

    const/16 p1, 0xb

    const-string/jumbo p2, "zzn"

    aput-object p2, p0, p1

    const/16 p1, 0xc

    const-string/jumbo p2, "zzo"

    aput-object p2, p0, p1

    const/16 p1, 0xd

    const-string/jumbo p2, "zzt"

    aput-object p2, p0, p1

    const/16 p1, 0xe

    aput-object v0, p0, p1

    const/16 p1, 0xf

    const-string/jumbo p2, "zzv"

    aput-object p2, p0, p1

    const/16 p1, 0x10

    const-string/jumbo p2, "zzw"

    aput-object p2, p0, p1

    const/16 p1, 0x11

    aput-object v0, p0, p1

    const/16 p1, 0x12

    const-string/jumbo p2, "zzz"

    aput-object p2, p0, p1

    const/16 p1, 0x13

    const-string/jumbo p2, "zzp"

    aput-object p2, p0, p1

    const/16 p1, 0x14

    const-string/jumbo p2, "zzq"

    aput-object p2, p0, p1

    const/16 p1, 0x15

    const-string/jumbo p2, "zzr"

    aput-object p2, p0, p1

    const/16 p1, 0x16

    const-string/jumbo p2, "zzu"

    aput-object p2, p0, p1

    const/16 p1, 0x17

    const-string/jumbo p2, "zzs"

    aput-object p2, p0, p1

    const/16 p1, 0x18

    const-string/jumbo p2, "zzx"

    aput-object p2, p0, p1

    const/16 p1, 0x19

    const-string/jumbo p2, "zzy"

    aput-object p2, p0, p1

    sget-object p1, Lcom/google/photos/vision/barhopper/zzc;->zza:Lcom/google/photos/vision/barhopper/zzc;

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    const-string v0, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0003\u000b\u0001\u150c\u0000\u0002\u150a\u0001\u0003\u1508\u0002\u0004\u150c\u0003\u0005\u1409\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1409\u0007\t\u1409\u0008\n\u1409\t\u000b\u041b\u000c\u1008\u000e\r\u041b\u000e\u100a\u0011\u000f\u1409\n\u0010\u1009\u000b\u0011\u1009\u000c\u0012\u0016\u0013\u1009\r\u0014\u1007\u000f\u0015\u1000\u0010"

    invoke-direct {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzA:B

    .line 10
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Lcom/google/photos/vision/barhopper/zzy;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzk:Lcom/google/photos/vision/barhopper/zzy;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzy;->zzb()Lcom/google/photos/vision/barhopper/zzy;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzi()Lcom/google/photos/vision/barhopper/zzac;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzp:Lcom/google/photos/vision/barhopper/zzac;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzac;->zzd()Lcom/google/photos/vision/barhopper/zzac;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzj()Lcom/google/photos/vision/barhopper/zzag;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzm:Lcom/google/photos/vision/barhopper/zzag;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzag;->zzb()Lcom/google/photos/vision/barhopper/zzag;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzk()Lcom/google/photos/vision/barhopper/zzaj;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzo:Lcom/google/photos/vision/barhopper/zzaj;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzaj;->zzb()Lcom/google/photos/vision/barhopper/zzaj;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzl()Lcom/google/photos/vision/barhopper/zzao;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzn:Lcom/google/photos/vision/barhopper/zzao;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/photos/vision/barhopper/zzao;->zzb()Lcom/google/photos/vision/barhopper/zzao;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-object p0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zzo()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzt:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    return-object p0
.end method

.method public final zzq()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zze:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzr()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zze:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzs()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zze:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzt()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zze:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzu()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zze:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzv()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zze:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzw()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zze:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzx()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zze:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzy()Z
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zze:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzz()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzc;->zzf:I

    invoke-static {p0}, Landroidx/cardview/R$dimen;->zza(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method
