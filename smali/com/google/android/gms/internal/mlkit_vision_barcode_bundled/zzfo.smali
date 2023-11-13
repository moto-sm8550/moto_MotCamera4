.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final zza:[I

.field public static final zzb:Lsun/misc/Unsafe;


# instance fields
.field public final zzc:[I

.field public final zzd:[Ljava/lang/Object;

.field public final zze:I

.field public final zzf:I

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:[I

.field public final zzk:I

.field public final zzl:I

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Z[IIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzf:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzi:Z

    if-eqz p12, :cond_0

    invoke-virtual {p12, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzj:[I

    iput p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzk:I

    iput p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzl:I

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    return-void
.end method

.method public static zzC(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    .line 7
    invoke-static {v5, p0, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static zzQ(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzm(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    return-void
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    :cond_0
    return-object v0
.end method

.method public static zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;
    .locals 7

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzl(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgm;

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static zzl(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;
    .locals 33

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zzd:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v4

    .line 2
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_2

    move v5, v2

    :goto_2
    add-int/lit8 v7, v5, 0x1

    .line 5
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    move v5, v7

    goto :goto_2

    :cond_2
    move v7, v2

    :cond_3
    add-int/lit8 v5, v7, 0x1

    .line 6
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v5, 0x1

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_4

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_3

    :cond_4
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_5
    if-nez v7, :cond_6

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zza:[I

    move v9, v4

    move v10, v9

    move v12, v10

    move v14, v12

    move v15, v14

    move-object v13, v7

    move v7, v15

    goto/16 :goto_c

    :cond_6
    add-int/lit8 v7, v5, 0x1

    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_8

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_4

    :cond_7
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_8
    add-int/lit8 v9, v7, 0x1

    .line 10
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_a

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_5

    :cond_9
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_a
    add-int/lit8 v10, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_6

    :cond_b
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_c
    add-int/lit8 v12, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_e

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 15
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 17
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 19
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 20
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 21
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int/lit8 v16, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_16

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v17, v4, 0x1

    .line 23
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_15

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v15, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v17

    goto :goto_b

    :cond_15
    shl-int v4, v4, v16

    or-int/2addr v15, v4

    move/from16 v16, v17

    :cond_16
    add-int v4, v15, v13

    add-int/2addr v4, v14

    .line 24
    new-array v4, v4, [I

    add-int v14, v5, v5

    add-int/2addr v14, v7

    move v7, v13

    move-object v13, v4

    move v4, v5

    move/from16 v5, v16

    .line 25
    :goto_c
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    .line 26
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zzc:[Ljava/lang/Object;

    .line 27
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    .line 28
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v19, v5

    mul-int/lit8 v5, v12, 0x3

    .line 29
    new-array v5, v5, [I

    add-int/2addr v12, v12

    .line 30
    new-array v12, v12, [Ljava/lang/Object;

    add-int v20, v15, v7

    move/from16 v22, v15

    move/from16 v7, v19

    move/from16 v23, v20

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_d
    if-ge v7, v3, :cond_33

    add-int/lit8 v24, v7, 0x1

    .line 31
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v25, v3

    const v3, 0xd800

    if-lt v7, v3, :cond_18

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v26, v3, 0x1

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v3, v15, :cond_17

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v7, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v26

    move/from16 v15, v27

    goto :goto_e

    :cond_17
    shl-int v3, v3, v24

    or-int/2addr v7, v3

    move/from16 v3, v26

    goto :goto_f

    :cond_18
    move/from16 v27, v15

    move/from16 v3, v24

    :goto_f
    add-int/lit8 v15, v3, 0x1

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v3, v15, :cond_1a

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_10
    add-int/lit8 v26, v15, 0x1

    .line 34
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_19

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v24

    or-int/2addr v3, v10

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v10, v28

    goto :goto_10

    :cond_19
    shl-int v10, v15, v24

    or-int/2addr v3, v10

    move/from16 v15, v26

    goto :goto_11

    :cond_1a
    move/from16 v28, v10

    move/from16 v15, v24

    :goto_11
    and-int/lit16 v10, v3, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v3, 0x400

    if-eqz v9, :cond_1b

    add-int/lit8 v9, v21, 0x1

    .line 35
    aput v19, v13, v21

    move/from16 v21, v9

    :cond_1b
    const/16 v9, 0x33

    if-lt v10, v9, :cond_23

    add-int/lit8 v9, v15, 0x1

    .line 36
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v26, v9

    const v9, 0xd800

    if-lt v15, v9, :cond_1d

    and-int/lit16 v15, v15, 0x1fff

    const/16 v30, 0xd

    move/from16 v32, v26

    move/from16 v26, v15

    move/from16 v15, v32

    :goto_12
    add-int/lit8 v31, v15, 0x1

    .line 37
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v9, :cond_1c

    and-int/lit16 v9, v15, 0x1fff

    shl-int v9, v9, v30

    or-int v26, v26, v9

    add-int/lit8 v30, v30, 0xd

    move/from16 v15, v31

    const v9, 0xd800

    goto :goto_12

    :cond_1c
    shl-int v9, v15, v30

    or-int v15, v26, v9

    move/from16 v9, v31

    goto :goto_13

    :cond_1d
    move/from16 v9, v26

    :goto_13
    move/from16 v26, v9

    add-int/lit8 v9, v10, -0x33

    const/16 v0, 0x9

    if-eq v9, v0, :cond_1f

    const/16 v0, 0x11

    if-ne v9, v0, :cond_1e

    goto :goto_14

    :cond_1e
    const/16 v0, 0xc

    if-ne v9, v0, :cond_20

    if-nez v11, :cond_20

    .line 38
    div-int/lit8 v0, v19, 0x3

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v0, v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 39
    aget-object v14, v2, v14

    aput-object v14, v12, v0

    goto :goto_15

    .line 40
    :cond_1f
    :goto_14
    div-int/lit8 v0, v19, 0x3

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v0, v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 41
    aget-object v14, v2, v14

    aput-object v14, v12, v0

    :goto_15
    move v14, v9

    :cond_20
    add-int/2addr v15, v15

    .line 42
    aget-object v0, v2, v15

    .line 43
    instance-of v9, v0, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_21

    .line 44
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 45
    :cond_21
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 46
    aput-object v0, v2, v15

    :goto_16
    move v9, v4

    move-object/from16 v30, v5

    .line 47
    invoke-virtual {v8, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    add-int/lit8 v15, v15, 0x1

    .line 48
    aget-object v4, v2, v15

    .line 49
    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_22

    .line 50
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 51
    :cond_22
    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 52
    aput-object v4, v2, v15

    .line 53
    :goto_17
    invoke-virtual {v8, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v18, v6

    move/from16 v15, v26

    const/4 v6, 0x0

    const/16 v17, 0x1

    move/from16 v26, v14

    move-object v14, v1

    move v1, v4

    move v4, v0

    const v0, 0xd800

    goto/16 :goto_22

    :cond_23
    move v9, v4

    move-object/from16 v30, v5

    add-int/lit8 v0, v14, 0x1

    .line 54
    aget-object v4, v2, v14

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/16 v5, 0x31

    const/16 v14, 0x9

    if-eq v10, v14, :cond_2b

    const/16 v14, 0x11

    if-ne v10, v14, :cond_24

    goto :goto_1b

    :cond_24
    const/16 v14, 0x1b

    if-eq v10, v14, :cond_2a

    if-ne v10, v5, :cond_25

    goto :goto_1a

    :cond_25
    const/16 v14, 0xc

    if-eq v10, v14, :cond_28

    const/16 v14, 0x1e

    if-eq v10, v14, :cond_28

    const/16 v14, 0x2c

    if-ne v10, v14, :cond_26

    goto :goto_18

    :cond_26
    const/16 v14, 0x32

    if-ne v10, v14, :cond_29

    add-int/lit8 v14, v22, 0x1

    .line 55
    aput v19, v13, v22

    div-int/lit8 v22, v19, 0x3

    add-int v22, v22, v22

    add-int/lit8 v26, v0, 0x1

    .line 56
    aget-object v0, v2, v0

    aput-object v0, v12, v22

    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_27

    add-int/lit8 v0, v26, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 57
    aget-object v26, v2, v26

    aput-object v26, v12, v22

    move/from16 v22, v14

    goto :goto_19

    :cond_27
    move/from16 v22, v14

    move/from16 v0, v26

    goto :goto_19

    :cond_28
    :goto_18
    if-nez v11, :cond_29

    .line 58
    div-int/lit8 v14, v19, 0x3

    add-int/lit8 v26, v0, 0x1

    add-int/2addr v14, v14

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 59
    aget-object v0, v2, v0

    aput-object v0, v12, v14

    const/16 v17, 0x1

    goto :goto_1d

    :cond_29
    :goto_19
    const/16 v17, 0x1

    goto :goto_1c

    .line 60
    :cond_2a
    :goto_1a
    div-int/lit8 v14, v19, 0x3

    add-int/lit8 v26, v0, 0x1

    add-int/2addr v14, v14

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 61
    aget-object v0, v2, v0

    aput-object v0, v12, v14

    goto :goto_1d

    :cond_2b
    :goto_1b
    const/16 v17, 0x1

    .line 62
    div-int/lit8 v14, v19, 0x3

    add-int/2addr v14, v14

    add-int/lit8 v14, v14, 0x1

    .line 63
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v26

    aput-object v26, v12, v14

    :goto_1c
    move/from16 v26, v0

    :goto_1d
    move-object v0, v6

    .line 64
    invoke-virtual {v8, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v4, v5

    and-int/lit16 v5, v3, 0x1000

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_2f

    const/16 v5, 0x11

    if-gt v10, v5, :cond_2f

    add-int/lit8 v5, v15, 0x1

    .line 65
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v15, 0xd800

    if-lt v6, v15, :cond_2d

    and-int/lit16 v6, v6, 0x1fff

    const/16 v18, 0xd

    :goto_1e
    add-int/lit8 v29, v5, 0x1

    .line 66
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v15, :cond_2c

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v18

    or-int/2addr v6, v5

    add-int/lit8 v18, v18, 0xd

    move/from16 v5, v29

    goto :goto_1e

    :cond_2c
    shl-int v5, v5, v18

    or-int/2addr v6, v5

    goto :goto_1f

    :cond_2d
    move/from16 v29, v5

    :goto_1f
    add-int v5, v9, v9

    div-int/lit8 v18, v6, 0x20

    add-int v18, v18, v5

    .line 67
    aget-object v5, v2, v18

    .line 68
    instance-of v14, v5, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_2e

    .line 69
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_20

    .line 70
    :cond_2e
    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzG(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 71
    aput-object v5, v2, v18

    :goto_20
    move-object/from16 v18, v0

    move-object v14, v1

    .line 72
    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v6, v6, 0x20

    move v1, v0

    move v0, v15

    move/from16 v15, v29

    goto :goto_21

    :cond_2f
    move-object/from16 v18, v0

    move-object v14, v1

    const v0, 0xd800

    const v1, 0xfffff

    const/4 v6, 0x0

    :goto_21
    const/16 v5, 0x12

    if-lt v10, v5, :cond_30

    const/16 v5, 0x31

    if-gt v10, v5, :cond_30

    add-int/lit8 v5, v23, 0x1

    .line 73
    aput v4, v13, v23

    move/from16 v23, v5

    :cond_30
    :goto_22
    add-int/lit8 v5, v19, 0x1

    .line 74
    aput v7, v30, v19

    add-int/lit8 v7, v5, 0x1

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_31

    const/high16 v0, 0x20000000

    goto :goto_23

    :cond_31
    const/4 v0, 0x0

    :goto_23
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_32

    const/high16 v3, 0x10000000

    goto :goto_24

    :cond_32
    const/4 v3, 0x0

    :goto_24
    or-int/2addr v0, v3

    shl-int/lit8 v3, v10, 0x14

    or-int/2addr v0, v3

    or-int/2addr v0, v4

    .line 75
    aput v0, v30, v5

    add-int/lit8 v0, v7, 0x1

    shl-int/lit8 v3, v6, 0x14

    or-int/2addr v1, v3

    .line 76
    aput v1, v30, v7

    move/from16 v19, v0

    move v4, v9

    move-object v1, v14

    move v7, v15

    move-object/from16 v6, v18

    move/from16 v9, v24

    move/from16 v3, v25

    move/from16 v14, v26

    move/from16 v15, v27

    move/from16 v10, v28

    move-object/from16 v5, v30

    move-object/from16 v0, p0

    goto/16 :goto_d

    :cond_33
    move-object/from16 v30, v5

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v27, v15

    .line 77
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-object/from16 v1, p0

    .line 78
    iget-object v10, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    move-object/from16 v1, v30

    move-object v5, v0

    move-object v6, v1

    move-object v7, v12

    move/from16 v8, v24

    move/from16 v9, v28

    move-object v12, v13

    move/from16 v13, v27

    move/from16 v14, v20

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    .line 79
    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Z[IIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)V

    return-object v0
.end method

.method public static zzn(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static zzo(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static zzr(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zzB(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method public final zzD(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;

    return-object p0
.end method

.method public final zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzd:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzd:[Ljava/lang/Object;

    .line 4
    aput-object v0, p0, p1

    return-object v0
.end method

.method public final zzF(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final zzH(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 8
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method public final zzI(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 2
    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 3
    invoke-virtual {p0, p2, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzK(Ljava/lang/Object;II)V

    return-void

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 10
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzK(Ljava/lang/Object;II)V

    :cond_4
    return-void
.end method

.method public final zzJ(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzy(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result p2

    const/4 v2, 0x1

    ushr-int/lit8 p0, p0, 0x14

    shl-int p0, v2, p0

    or-int/2addr p0, p2

    .line 3
    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final zzK(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzy(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzM(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzy(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result p0

    and-int p2, p0, v1

    int-to-long v0, p2

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 5
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    .line 6
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    .line 7
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    .line 8
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    .line 9
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    .line 10
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    .line 11
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    .line 12
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    .line 13
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    .line 14
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 15
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 16
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v5

    .line 17
    :cond_a
    instance-of p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz p1, :cond_c

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v5

    .line 19
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 21
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzw(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    .line 22
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    .line 23
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    .line 24
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    .line 25
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    .line 26
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    .line 27
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    .line 28
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza(Ljava/lang/Object;J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    .line 29
    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result p0

    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v6, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzP(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzy(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzR(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzh:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    move-result-object v3

    iget-object v5, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    .line 2
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzf()Ljava/util/Iterator;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 5
    array-length v6, v6

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_8

    .line 6
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 7
    aget v15, v14, v10

    ushr-int/lit8 v9, v13, 0x14

    and-int/lit16 v9, v9, 0xff

    const/16 v4, 0x11

    if-gt v9, v4, :cond_2

    add-int/lit8 v4, v10, 0x2

    .line 8
    aget v4, v14, v4

    const v14, 0xfffff

    and-int v8, v4, v14

    if-eq v8, v11, :cond_1

    int-to-long v11, v8

    .line 9
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v8

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v8, 0x1

    shl-int v4, v8, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    iget-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 10
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zza(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v15, :cond_4

    iget-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 11
    invoke-virtual {v8, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Ljava/util/Map$Entry;)V

    .line 12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const v8, 0xfffff

    and-int/2addr v13, v8

    int-to-long v13, v13

    packed-switch v9, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v9, 0x0

    :goto_4
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 13
    :pswitch_0
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v9

    .line 15
    invoke-virtual {v2, v15, v4, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto :goto_3

    .line 16
    :pswitch_1
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzD(IJ)V

    goto :goto_3

    .line 18
    :pswitch_2
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 19
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzB(II)V

    goto :goto_3

    .line 20
    :pswitch_3
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(IJ)V

    goto :goto_3

    .line 22
    :pswitch_4
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 23
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzx(II)V

    goto :goto_3

    .line 24
    :pswitch_5
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 25
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzi(II)V

    goto :goto_3

    .line 26
    :pswitch_6
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 27
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzI(II)V

    goto :goto_3

    .line 28
    :pswitch_7
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 29
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto :goto_3

    .line 30
    :pswitch_8
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 31
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v9

    invoke-virtual {v2, v15, v4, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_3

    .line 33
    :pswitch_9
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 34
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    goto/16 :goto_3

    .line 35
    :pswitch_a
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzQ(Ljava/lang/Object;J)Z

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb(IZ)V

    goto/16 :goto_3

    .line 37
    :pswitch_b
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 38
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzk(II)V

    goto/16 :goto_3

    .line 39
    :pswitch_c
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzm(IJ)V

    goto/16 :goto_3

    .line 41
    :pswitch_d
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 42
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzr(II)V

    goto/16 :goto_3

    .line 43
    :pswitch_e
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 44
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzK(IJ)V

    goto/16 :goto_3

    .line 45
    :pswitch_f
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 46
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzt(IJ)V

    goto/16 :goto_3

    .line 47
    :pswitch_10
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 48
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo(Ljava/lang/Object;J)F

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzo(IF)V

    goto/16 :goto_3

    .line 49
    :pswitch_11
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 50
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzf(ID)V

    goto/16 :goto_3

    .line 51
    :pswitch_12
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    goto/16 :goto_3

    .line 52
    :cond_6
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzF(I)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    const/4 v9, 0x0

    .line 54
    throw v9

    :pswitch_13
    const/4 v9, 0x0

    .line 55
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 56
    aget v4, v4, v10

    .line 57
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 58
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v14

    .line 59
    invoke-static {v4, v13, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_4

    :pswitch_14
    const/4 v9, 0x0

    .line 60
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 61
    aget v4, v4, v10

    .line 62
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/4 v15, 0x1

    .line 63
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_15
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 64
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 65
    aget v4, v4, v10

    .line 66
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 67
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_16
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 68
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 69
    aget v4, v4, v10

    .line 70
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 71
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_17
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 72
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 73
    aget v4, v4, v10

    .line 74
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 75
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_18
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 76
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 77
    aget v4, v4, v10

    .line 78
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 79
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_19
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 80
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 81
    aget v4, v4, v10

    .line 82
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 83
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzZ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_1a
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 84
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 85
    aget v4, v4, v10

    .line 86
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 87
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_1b
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 88
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 89
    aget v4, v4, v10

    .line 90
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 91
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_1c
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 92
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 93
    aget v4, v4, v10

    .line 94
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 95
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_1d
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 96
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 97
    aget v4, v4, v10

    .line 98
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 99
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_1e
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 100
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 101
    aget v4, v4, v10

    .line 102
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 103
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzaa(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_1f
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 104
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 105
    aget v4, v4, v10

    .line 106
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 107
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_20
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 108
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 109
    aget v4, v4, v10

    .line 110
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 111
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_21
    const/4 v9, 0x0

    const/4 v15, 0x1

    .line 112
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 113
    aget v4, v4, v10

    .line 114
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 115
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_4

    :pswitch_22
    const/4 v9, 0x0

    .line 116
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 117
    aget v4, v4, v10

    .line 118
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/4 v15, 0x0

    .line 119
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_5

    :pswitch_23
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 120
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 121
    aget v4, v4, v10

    .line 122
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 123
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_5

    :pswitch_24
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 124
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 125
    aget v4, v4, v10

    .line 126
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 127
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_5

    :pswitch_25
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 128
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 129
    aget v4, v4, v10

    .line 130
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 131
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_5

    :pswitch_26
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 132
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 133
    aget v4, v4, v10

    .line 134
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 135
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_5

    :pswitch_27
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 136
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 137
    aget v4, v4, v10

    .line 138
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 139
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzZ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_5

    :pswitch_28
    const/4 v9, 0x0

    .line 140
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 141
    aget v4, v4, v10

    .line 142
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 143
    invoke-static {v4, v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    goto/16 :goto_4

    :pswitch_29
    const/4 v9, 0x0

    .line 144
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 145
    aget v4, v4, v10

    .line 146
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 147
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v14

    .line 148
    invoke-static {v4, v13, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_4

    :pswitch_2a
    const/4 v9, 0x0

    .line 149
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 150
    aget v4, v4, v10

    .line 151
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 152
    invoke-static {v4, v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzY(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    goto/16 :goto_4

    :pswitch_2b
    const/4 v9, 0x0

    .line 153
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 154
    aget v4, v4, v10

    .line 155
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/4 v15, 0x0

    .line 156
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto :goto_5

    :pswitch_2c
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 157
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 158
    aget v4, v4, v10

    .line 159
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 160
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto :goto_5

    :pswitch_2d
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 161
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 162
    aget v4, v4, v10

    .line 163
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 164
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto :goto_5

    :pswitch_2e
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 165
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 166
    aget v4, v4, v10

    .line 167
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 168
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto :goto_5

    :pswitch_2f
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 169
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 170
    aget v4, v4, v10

    .line 171
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 172
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzaa(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto :goto_5

    :pswitch_30
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 173
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 174
    aget v4, v4, v10

    .line 175
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 176
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto :goto_5

    :pswitch_31
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 177
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 178
    aget v4, v4, v10

    .line 179
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 180
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto :goto_5

    :pswitch_32
    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 181
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 182
    aget v4, v4, v10

    .line 183
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 184
    invoke-static {v4, v13, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    :goto_5
    move/from16 v16, v15

    goto/16 :goto_6

    :pswitch_33
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 185
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v13

    .line 186
    invoke-virtual {v2, v15, v4, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_6

    :pswitch_34
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 187
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzD(IJ)V

    goto/16 :goto_6

    :pswitch_35
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 188
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzB(II)V

    goto/16 :goto_6

    :pswitch_36
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 189
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(IJ)V

    goto/16 :goto_6

    :pswitch_37
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 190
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzx(II)V

    goto/16 :goto_6

    :pswitch_38
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 191
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzi(II)V

    goto/16 :goto_6

    :pswitch_39
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 192
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzI(II)V

    goto/16 :goto_6

    :pswitch_3a
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 193
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto/16 :goto_6

    :pswitch_3b
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 194
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 195
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v13

    invoke-virtual {v2, v15, v4, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_6

    :pswitch_3c
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 196
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    goto/16 :goto_6

    :pswitch_3d
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 197
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzw(Ljava/lang/Object;J)Z

    move-result v4

    .line 198
    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb(IZ)V

    goto :goto_6

    :pswitch_3e
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 199
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzk(II)V

    goto :goto_6

    :pswitch_3f
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 200
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzm(IJ)V

    goto :goto_6

    :pswitch_40
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 201
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzr(II)V

    goto :goto_6

    :pswitch_41
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 202
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzK(IJ)V

    goto :goto_6

    :pswitch_42
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 203
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzt(IJ)V

    goto :goto_6

    :pswitch_43
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 204
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb(Ljava/lang/Object;J)F

    move-result v4

    .line 205
    invoke-virtual {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzo(IF)V

    goto :goto_6

    :pswitch_44
    const/4 v9, 0x0

    const/16 v16, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    .line 206
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza(Ljava/lang/Object;J)D

    move-result-wide v13

    .line 207
    invoke-virtual {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzf(ID)V

    :cond_7
    :goto_6
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x0

    :goto_7
    if-eqz v5, :cond_a

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 208
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Ljava/util/Map$Entry;)V

    .line 209
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v5, v9

    goto :goto_7

    :cond_a
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 210
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzi:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzq(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzp(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 3
    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    ushr-int/lit8 v3, v3, 0x14

    and-int/lit16 v3, v3, 0xff

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 4
    :pswitch_0
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    .line 9
    :pswitch_2
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    .line 13
    :pswitch_4
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 15
    :pswitch_5
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 17
    :pswitch_6
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 19
    :pswitch_7
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 21
    :pswitch_8
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 24
    :pswitch_9
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 26
    :pswitch_a
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzQ(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zza(Z)I

    move-result v3

    goto/16 :goto_2

    .line 28
    :pswitch_b
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 30
    :pswitch_c
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    .line 32
    :pswitch_d
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 34
    :pswitch_e
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    .line 36
    :pswitch_f
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    .line 38
    :pswitch_10
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 40
    :pswitch_11
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 44
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 53
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zza(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 64
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc(J)I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    move v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzh:Z

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgl;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 1
    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0xfffff

    const/4 v5, 0x0

    :goto_0
    const/16 v16, 0x0

    if-ge v0, v13, :cond_27

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 2
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v3, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    goto :goto_1

    :cond_0
    move/from16 v32, v3

    move v3, v0

    move/from16 v0, v32

    :goto_1
    ushr-int/lit8 v8, v3, 0x3

    and-int/lit8 v7, v3, 0x7

    const/4 v6, 0x3

    if-le v8, v1, :cond_2

    div-int/2addr v2, v6

    .line 3
    iget v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zze:I

    if-lt v8, v1, :cond_1

    iget v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzf:I

    if-gt v8, v1, :cond_1

    invoke-virtual {v15, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzz(II)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    .line 4
    :cond_2
    iget v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zze:I

    if-lt v8, v1, :cond_3

    iget v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzf:I

    if-gt v8, v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v15, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzz(II)I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    const/4 v1, -0x1

    :goto_3
    const-wide/16 v19, 0x0

    const/4 v11, -0x1

    if-ne v1, v11, :cond_4

    move/from16 v6, p5

    move/from16 v17, v2

    move/from16 v31, v17

    move v7, v3

    move/from16 v25, v4

    move/from16 v29, v5

    move/from16 v18, v8

    move-object/from16 v30, v10

    move/from16 v22, v11

    move-object v14, v15

    const/16 v26, 0x1

    :goto_4
    move v2, v0

    goto/16 :goto_18

    .line 5
    :cond_4
    iget-object v2, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    add-int/lit8 v22, v1, 0x1

    .line 6
    aget v11, v2, v22

    ushr-int/lit8 v6, v11, 0x14

    and-int/lit16 v6, v6, 0xff

    move/from16 v17, v3

    move/from16 v24, v8

    const v8, 0xfffff

    and-int v3, v11, v8

    int-to-long v8, v3

    const/16 v3, 0x11

    move-wide/from16 v26, v8

    const/4 v8, 0x2

    if-gt v6, v3, :cond_14

    add-int/lit8 v3, v1, 0x2

    .line 7
    aget v2, v2, v3

    ushr-int/lit8 v3, v2, 0x14

    const/4 v9, 0x1

    shl-int v28, v9, v3

    const v9, 0xfffff

    and-int/2addr v2, v9

    if-eq v2, v4, :cond_6

    if-eq v4, v9, :cond_5

    int-to-long v3, v4

    .line 8
    invoke-virtual {v10, v14, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v3, v2

    .line 9
    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v25, v2

    goto :goto_5

    :cond_6
    move/from16 v25, v4

    :goto_5
    move/from16 v29, v5

    const/4 v2, 0x5

    packed-switch v6, :pswitch_data_0

    move-object/from16 v6, p6

    move v11, v0

    move v13, v1

    move/from16 p3, v17

    move-wide/from16 v4, v26

    const/4 v0, 0x3

    const/4 v3, 0x1

    const/16 v17, 0x0

    if-ne v7, v0, :cond_13

    .line 10
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    shl-int/lit8 v1, v24, 0x3

    or-int/lit8 v7, v1, 0x4

    move-object/from16 v1, p2

    move v2, v11

    move/from16 v3, p4

    move-wide v8, v4

    move v4, v7

    move-object/from16 v5, p6

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    and-int v1, v29, v28

    if-nez v1, :cond_12

    iget-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 12
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_0
    if-nez v7, :cond_7

    move-object/from16 v6, p6

    move-wide/from16 v4, v26

    .line 13
    invoke-static {v12, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v7

    iget-wide v2, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 14
    invoke-static {v2, v3}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzc(J)J

    move-result-wide v19

    move-object v0, v10

    move v11, v1

    move-object/from16 v1, p1

    move/from16 v8, v17

    const/16 v17, 0x0

    move-wide v2, v4

    move-wide/from16 v4, v19

    .line 15
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v29, v28

    move-object v9, v6

    move v0, v7

    goto :goto_7

    :cond_7
    move-object/from16 v6, p6

    move/from16 v8, v17

    const/16 v17, 0x0

    move v11, v0

    move v13, v1

    move/from16 p3, v8

    goto/16 :goto_10

    :pswitch_1
    move-object/from16 v6, p6

    move v11, v1

    move/from16 v8, v17

    move-wide/from16 v4, v26

    const/16 v17, 0x0

    if-nez v7, :cond_a

    .line 16
    invoke-static {v12, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 17
    invoke-static {v1}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzb(I)I

    move-result v1

    .line 18
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_6
    or-int v5, v29, v28

    move-object v9, v6

    :goto_7
    move v3, v8

    goto :goto_a

    :pswitch_2
    move-object/from16 v6, p6

    move v11, v1

    move/from16 v8, v17

    move-wide/from16 v4, v26

    const/16 v17, 0x0

    if-nez v7, :cond_a

    .line 19
    invoke-static {v12, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 20
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzD(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 21
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_8

    .line 22
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzh(ILjava/lang/Object;)V

    move-object v9, v6

    move v3, v8

    move v2, v11

    move/from16 v1, v24

    move/from16 v4, v25

    move/from16 v5, v29

    goto :goto_b

    .line 23
    :cond_9
    :goto_8
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :cond_a
    move/from16 p3, v8

    goto :goto_c

    :pswitch_3
    move-object/from16 v6, p6

    move v11, v1

    move/from16 v3, v17

    move-wide/from16 v4, v26

    const/16 v17, 0x0

    if-ne v7, v8, :cond_c

    .line 24
    invoke-static {v12, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 25
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9
    or-int v5, v29, v28

    move-object v9, v6

    :goto_a
    move v2, v11

    move/from16 v1, v24

    move/from16 v4, v25

    :goto_b
    move/from16 v11, p5

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v6, p6

    move v11, v1

    move/from16 v3, v17

    move-wide/from16 v4, v26

    const/16 v17, 0x0

    if-ne v7, v8, :cond_c

    .line 26
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v1

    .line 27
    invoke-static {v1, v12, v0, v13, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    and-int v1, v29, v28

    if-nez v1, :cond_b

    iget-object v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 28
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    .line 29
    :cond_b
    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 30
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :cond_c
    move/from16 p3, v3

    :goto_c
    move v13, v11

    const/4 v3, 0x1

    move v11, v0

    goto/16 :goto_14

    :pswitch_5
    move-object/from16 v6, p6

    move/from16 v3, v17

    move-wide/from16 v4, v26

    const/16 v17, 0x0

    if-ne v7, v8, :cond_f

    const/high16 v2, 0x20000000

    and-int/2addr v2, v11

    if-nez v2, :cond_d

    .line 32
    invoke-static {v12, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzg([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto :goto_d

    .line 33
    :cond_d
    invoke-static {v12, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzh([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    .line 34
    :goto_d
    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 35
    invoke-virtual {v10, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_f

    :pswitch_6
    move-object/from16 v6, p6

    move/from16 v3, v17

    move-wide/from16 v4, v26

    const/16 v17, 0x0

    if-nez v7, :cond_f

    .line 36
    invoke-static {v12, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v2, v7, v19

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_e

    :cond_e
    move/from16 v2, v17

    .line 37
    :goto_e
    invoke-static {v14, v4, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzm(Ljava/lang/Object;JZ)V

    goto :goto_f

    :pswitch_7
    move-object/from16 v6, p6

    move/from16 v3, v17

    move-wide/from16 v4, v26

    const/16 v17, 0x0

    if-ne v7, v2, :cond_f

    .line 38
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v2

    invoke-virtual {v10, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v0, 0x4

    :goto_f
    or-int v5, v29, v28

    move/from16 v11, p5

    move v2, v1

    move-object v9, v6

    move/from16 v1, v24

    move/from16 v4, v25

    goto/16 :goto_0

    :cond_f
    move v11, v0

    move v13, v1

    move/from16 p3, v3

    goto/16 :goto_10

    :pswitch_8
    move-object/from16 v6, p6

    move/from16 v3, v17

    move-wide/from16 v4, v26

    const/4 v2, 0x1

    const/16 v17, 0x0

    if-ne v7, v2, :cond_10

    .line 39
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v7

    move v11, v0

    move-object v0, v10

    move v2, v1

    move-object/from16 v1, p1

    move v13, v2

    move/from16 p3, v3

    move-wide v2, v4

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_11

    :cond_10
    move v11, v0

    move v13, v1

    move/from16 p3, v3

    move v3, v2

    goto/16 :goto_14

    :pswitch_9
    move-object/from16 v6, p6

    move v11, v0

    move v13, v1

    move/from16 p3, v17

    move-wide/from16 v4, v26

    const/16 v17, 0x0

    if-nez v7, :cond_11

    .line 40
    invoke-static {v12, v11, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 41
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_12

    :pswitch_a
    move-object/from16 v6, p6

    move v11, v0

    move v13, v1

    move/from16 p3, v17

    move-wide/from16 v4, v26

    const/16 v17, 0x0

    if-nez v7, :cond_11

    .line 42
    invoke-static {v12, v11, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v7

    iget-wide v2, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v18, v2

    move-wide v2, v4

    move-wide/from16 v4, v18

    .line 43
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v29, v28

    move/from16 v3, p3

    move/from16 v11, p5

    move-object v9, v6

    move v0, v7

    goto :goto_13

    :pswitch_b
    move-object/from16 v6, p6

    move v11, v0

    move v13, v1

    move/from16 p3, v17

    move-wide/from16 v4, v26

    const/16 v17, 0x0

    if-ne v7, v2, :cond_11

    .line 44
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 45
    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzp(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v11, 0x4

    goto :goto_12

    :cond_11
    :goto_10
    const/4 v3, 0x1

    goto :goto_14

    :pswitch_c
    move-object/from16 v6, p6

    move v11, v0

    move v13, v1

    move/from16 p3, v17

    move-wide/from16 v4, v26

    const/4 v3, 0x1

    const/16 v17, 0x0

    if-ne v7, v3, :cond_13

    .line 46
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 47
    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzo(Ljava/lang/Object;JD)V

    :goto_11
    add-int/lit8 v0, v11, 0x8

    :goto_12
    or-int v5, v29, v28

    move/from16 v3, p3

    move/from16 v11, p5

    move-object v9, v6

    :goto_13
    move v2, v13

    move/from16 v1, v24

    move/from16 v4, v25

    goto/16 :goto_16

    .line 48
    :cond_12
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 49
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_12

    :cond_13
    :goto_14
    move/from16 v7, p3

    move/from16 v6, p5

    move/from16 v26, v3

    move-object/from16 v30, v10

    move v2, v11

    move/from16 v31, v13

    move-object v14, v15

    move/from16 v18, v24

    const/16 v22, -0x1

    goto/16 :goto_18

    :cond_14
    move v2, v0

    move v13, v1

    move v0, v8

    move/from16 p3, v17

    move-wide/from16 v8, v26

    const/4 v3, 0x1

    const/16 v17, 0x0

    const/16 v1, 0x1b

    if-ne v6, v1, :cond_18

    if-ne v7, v0, :cond_17

    .line 51
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 52
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;->zzc()Z

    move-result v1

    if-nez v1, :cond_16

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    const/16 v6, 0xa

    goto :goto_15

    :cond_15
    add-int v6, v1, v1

    .line 54
    :goto_15
    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    move-result-object v0

    .line 55
    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_16
    move-object v6, v0

    .line 56
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    move/from16 v1, p3

    move v7, v2

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v25, v4

    move/from16 v4, p4

    move/from16 v29, v5

    move-object v5, v6

    move-object/from16 v6, p6

    .line 57
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move/from16 v3, p3

    move/from16 v11, p5

    move-object/from16 v9, p6

    move v2, v13

    move/from16 v1, v24

    move/from16 v4, v25

    move/from16 v5, v29

    :goto_16
    move/from16 v13, p4

    goto/16 :goto_0

    :cond_17
    move/from16 v25, v4

    move/from16 v29, v5

    move v15, v2

    move/from16 v26, v3

    move-object/from16 v30, v10

    move/from16 v31, v13

    move/from16 v18, v24

    const/16 v22, -0x1

    goto/16 :goto_17

    :cond_18
    move/from16 v25, v4

    move/from16 v29, v5

    move v5, v2

    const/16 v1, 0x31

    if-gt v6, v1, :cond_1a

    int-to-long v1, v11

    move-object/from16 v0, p0

    move-wide/from16 v26, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v11, v3

    move v3, v5

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, p3

    move/from16 v21, v6

    move/from16 v6, v24

    const/16 v22, -0x1

    move-wide/from16 v32, v8

    move/from16 v9, v24

    move-wide/from16 v23, v32

    move v8, v13

    move/from16 v18, v9

    move-object/from16 v30, v10

    move-wide/from16 v9, v26

    move/from16 v26, v11

    move/from16 v11, v21

    move/from16 v31, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 58
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzv(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v15, :cond_19

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v3, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v18

    move/from16 v4, v25

    move/from16 v5, v29

    move-object/from16 v10, v30

    move/from16 v2, v31

    goto/16 :goto_0

    :cond_19
    move-object/from16 v14, p0

    move/from16 v7, p3

    move/from16 v6, p5

    goto/16 :goto_4

    :cond_1a
    move/from16 v26, v3

    move v15, v5

    move/from16 v21, v6

    move-object/from16 v30, v10

    move/from16 v31, v13

    move/from16 v18, v24

    const/16 v22, -0x1

    move-wide/from16 v23, v8

    const/16 v1, 0x32

    move/from16 v9, v21

    if-ne v9, v1, :cond_1c

    if-eq v7, v0, :cond_1b

    :goto_17
    move-object/from16 v14, p0

    move/from16 v7, p3

    move/from16 v6, p5

    move v2, v15

    goto/16 :goto_18

    :cond_1b
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v5, v23

    move/from16 v13, v31

    .line 59
    invoke-virtual {v14, v15, v13, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzs(Ljava/lang/Object;IJ)I

    throw v16

    :cond_1c
    move-object/from16 v14, p0

    move v12, v15

    move-wide/from16 v5, v23

    move/from16 v13, v31

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, v18

    move v8, v11

    move-wide/from16 v10, v23

    move v15, v12

    move v12, v13

    move/from16 v21, v13

    move-object/from16 v13, p6

    .line 60
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzt(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v15, :cond_1d

    move-object/from16 v12, p2

    move/from16 v3, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move-object v15, v14

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v4, v25

    move/from16 v5, v29

    move-object/from16 v10, v30

    move-object/from16 v14, p1

    goto/16 :goto_0

    :cond_1d
    move/from16 v7, p3

    move/from16 v6, p5

    move v2, v0

    move/from16 v31, v21

    :goto_18
    if-ne v7, v6, :cond_1e

    if-eqz v6, :cond_1e

    move-object/from16 v11, p1

    move/from16 v15, p4

    move v0, v2

    move v3, v7

    move/from16 v4, v25

    move/from16 v5, v29

    goto/16 :goto_21

    .line 61
    :cond_1e
    iget-boolean v0, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzh:Z

    if-eqz v0, :cond_26

    move-object/from16 v8, p6

    iget-object v0, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    move-result-object v1

    if-eq v0, v1, :cond_25

    iget-object v0, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    iget-object v1, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    .line 63
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzd:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdm;

    move/from16 v9, v18

    invoke-direct {v3, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdm;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    if-nez v10, :cond_1f

    .line 64
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 65
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move/from16 v15, p4

    goto/16 :goto_20

    :cond_1f
    move-object/from16 v11, p1

    .line 66
    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    .line 67
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    iget-object v0, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    .line 68
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    if-eq v0, v1, :cond_24

    .line 69
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move-object/from16 v13, p2

    move/from16 v15, p4

    move-object/from16 v0, v16

    goto/16 :goto_1d

    :pswitch_d
    move-object/from16 v13, p2

    .line 70
    invoke-static {v13, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget-wide v0, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 71
    invoke-static {v0, v1}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzc(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_19

    :pswitch_e
    move-object/from16 v13, p2

    .line 72
    invoke-static {v13, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget v0, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 73
    invoke-static {v0}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzb(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_19

    .line 74
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    move-object/from16 v13, p2

    .line 76
    invoke-static {v13, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget-object v0, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    :goto_19
    move/from16 v15, p4

    goto/16 :goto_1d

    :pswitch_11
    move-object/from16 v13, p2

    .line 77
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    .line 78
    iget-object v1, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    move/from16 v15, p4

    .line 79
    invoke-static {v0, v13, v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget-object v0, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    goto/16 :goto_1d

    :pswitch_12
    move-object/from16 v13, p2

    move/from16 v15, p4

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    .line 81
    iget-object v1, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    shl-int/lit8 v1, v9, 0x3

    or-int/lit8 v4, v1, 0x4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 82
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget-object v0, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    goto/16 :goto_1d

    :pswitch_13
    move-object/from16 v13, p2

    move/from16 v15, p4

    .line 83
    invoke-static {v13, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzg([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget-object v0, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    goto/16 :goto_1d

    :pswitch_14
    move-object/from16 v13, p2

    move/from16 v15, p4

    .line 84
    invoke-static {v13, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget-wide v0, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v0, v0, v19

    if-eqz v0, :cond_20

    goto :goto_1a

    :cond_20
    move/from16 v26, v17

    .line 85
    :goto_1a
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1d

    :pswitch_15
    move-object/from16 v13, p2

    move/from16 v15, p4

    .line 86
    invoke-static {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    :pswitch_16
    move-object/from16 v13, p2

    move/from16 v15, p4

    .line 87
    invoke-static {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1c

    :pswitch_17
    move-object/from16 v13, p2

    move/from16 v15, p4

    .line 88
    invoke-static {v13, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget v0, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1d

    :pswitch_18
    move-object/from16 v13, p2

    move/from16 v15, p4

    .line 90
    invoke-static {v13, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget-wide v0, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1d

    :pswitch_19
    move-object/from16 v13, p2

    move/from16 v15, p4

    .line 92
    invoke-static {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 93
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_1b
    add-int/lit8 v2, v2, 0x4

    goto :goto_1d

    :pswitch_1a
    move-object/from16 v13, p2

    move/from16 v15, p4

    .line 94
    invoke-static {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1c
    add-int/lit8 v2, v2, 0x8

    .line 96
    :goto_1d
    iget-object v1, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    .line 97
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_21

    const/16 v3, 0xa

    if-eq v1, v3, :cond_21

    goto :goto_1e

    :cond_21
    iget-object v1, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    .line 99
    iget-object v3, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzes;

    if-nez v3, :cond_23

    if-eqz v1, :cond_22

    .line 101
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_22
    :goto_1e
    iget-object v1, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    .line 102
    invoke-virtual {v12, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_20

    .line 103
    :cond_23
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzes;

    .line 104
    throw v16

    :cond_24
    move-object/from16 v13, p2

    .line 105
    invoke-static {v13, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    .line 106
    throw v16

    :cond_25
    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move/from16 v15, p4

    goto :goto_1f

    :cond_26
    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move/from16 v15, p4

    move-object/from16 v8, p6

    :goto_1f
    move/from16 v9, v18

    .line 107
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 108
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    :goto_20
    move v3, v7

    move v1, v9

    move-object v12, v13

    move v13, v15

    move/from16 v4, v25

    move/from16 v5, v29

    move-object/from16 v10, v30

    move/from16 v2, v31

    move-object v9, v8

    move-object v15, v14

    move-object v14, v11

    move v11, v6

    goto/16 :goto_0

    :cond_27
    move/from16 v25, v4

    move/from16 v29, v5

    move-object/from16 v30, v10

    move v6, v11

    move-object v11, v14

    move-object v14, v15

    move v15, v13

    :goto_21
    const v1, 0xfffff

    if-eq v4, v1, :cond_28

    int-to-long v7, v4

    move-object/from16 v2, v30

    .line 109
    invoke-virtual {v2, v11, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_28
    iget v2, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzk:I

    :goto_22
    iget v4, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzl:I

    if-ge v2, v4, :cond_2b

    iget-object v4, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzj:[I

    .line 110
    aget v4, v4, v2

    iget-object v5, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 111
    aget v5, v5, v4

    .line 112
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v5

    and-int/2addr v5, v1

    int-to-long v7, v5

    .line 113
    invoke-static {v11, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_29

    goto :goto_23

    .line 114
    :cond_29
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzD(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;

    move-result-object v7

    if-nez v7, :cond_2a

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 115
    :cond_2a
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    .line 116
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzF(I)Ljava/lang/Object;

    move-result-object v0

    .line 117
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    .line 118
    throw v16

    :cond_2b
    if-nez v6, :cond_2d

    if-ne v0, v15, :cond_2c

    goto :goto_24

    .line 119
    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_2d
    if-gt v0, v15, :cond_2e

    if-ne v3, v6, :cond_2e

    :goto_24
    return v0

    .line 120
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzg(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzk:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzl:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzj:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    const/4 v5, 0x0

    .line 4
    iput-boolean v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;->zzb:Z

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzj:[I

    .line 6
    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzj:[I

    .line 7
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;->zza(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzg(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzh:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zze(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 4
    aget v4, v4, v0

    ushr-int/lit8 v1, v1, 0x14

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 6
    :pswitch_1
    invoke-virtual {p0, p2, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzK(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0, p2, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p1, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzK(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 13
    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 15
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 17
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;

    .line 18
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 19
    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 20
    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzr(Ljava/lang/Object;JJ)V

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 23
    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzq(Ljava/lang/Object;JI)V

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 26
    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzr(Ljava/lang/Object;JJ)V

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 29
    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzq(Ljava/lang/Object;JI)V

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 32
    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzq(Ljava/lang/Object;JI)V

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 35
    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzq(Ljava/lang/Object;JI)V

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 38
    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 41
    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 42
    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 45
    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzm(Ljava/lang/Object;JZ)V

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 48
    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzq(Ljava/lang/Object;JI)V

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 51
    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzr(Ljava/lang/Object;JJ)V

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 54
    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzq(Ljava/lang/Object;JI)V

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 57
    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzr(Ljava/lang/Object;JJ)V

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 60
    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzr(Ljava/lang/Object;JJ)V

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 63
    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzp(Ljava/lang/Object;JF)V

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 66
    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzo(Ljava/lang/Object;JD)V

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzJ(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 69
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 70
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzh(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzh:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 75
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzE(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzi:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzu(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    return-void
.end method

.method public final zzi(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    int-to-long v5, v5

    ushr-int/lit8 v3, v3, 0x14

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzy(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    .line 4
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v7

    .line 5
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_0

    .line 6
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 8
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 10
    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 12
    :pswitch_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 15
    :pswitch_4
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 17
    :pswitch_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 19
    :pswitch_6
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 21
    :pswitch_7
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 23
    :pswitch_8
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 25
    :pswitch_9
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 27
    :pswitch_a
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 30
    :pswitch_b
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 33
    :pswitch_c
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 36
    :pswitch_d
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzw(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 38
    :pswitch_e
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 40
    :pswitch_f
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 42
    :pswitch_10
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 44
    :pswitch_11
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    .line 46
    :pswitch_12
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    .line 48
    :pswitch_13
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 50
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 51
    :pswitch_14
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 53
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 55
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzh:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 57
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 58
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 1
    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzk:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_f

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzj:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 2
    aget v7, v7, v5

    .line 3
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    add-int/lit8 v10, v5, 0x2

    .line 4
    aget v9, v9, v10

    and-int v10, v9, v0

    ushr-int/lit8 v9, v9, 0x14

    shl-int v9, v6, v9

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    int-to-long v11, v10

    .line 5
    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v8

    if-eqz v10, :cond_5

    if-ne v3, v0, :cond_2

    .line 6
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v9

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    ushr-int/lit8 v10, v8, 0x14

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x9

    if-eq v10, v11, :cond_b

    const/16 v11, 0x11

    if-eq v10, v11, :cond_b

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_9

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_8

    const/16 v6, 0x44

    if-eq v10, v6, :cond_8

    const/16 v6, 0x31

    if-eq v10, v6, :cond_9

    const/16 v6, 0x32

    if-eq v10, v6, :cond_6

    goto/16 :goto_5

    :cond_6
    and-int v6, v8, v0

    int-to-long v6, v6

    .line 7
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 8
    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    .line 9
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    .line 10
    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzF(I)Ljava/lang/Object;

    move-result-object p0

    .line 11
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    const/4 p0, 0x0

    .line 12
    throw p0

    .line 13
    :cond_8
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 14
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v5

    and-int v6, v8, v0

    int-to-long v6, v6

    .line 15
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 16
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzj(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v1

    :cond_9
    and-int v6, v8, v0

    int-to-long v6, v6

    .line 17
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 18
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 19
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v5

    move v7, v1

    .line 20
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    .line 21
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 22
    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzj(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    return v1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    if-ne v3, v0, :cond_c

    .line 23
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v6

    goto :goto_4

    :cond_c
    and-int v7, v4, v9

    if-eqz v7, :cond_d

    goto :goto_4

    :cond_d
    move v6, v1

    :goto_4
    if-eqz v6, :cond_e

    .line 24
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v5

    and-int v6, v8, v0

    int-to-long v6, v6

    .line 25
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 26
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;->zzj(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v1

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 27
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzh:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzk()Z

    move-result p0

    if-nez p0, :cond_10

    return v1

    :cond_10
    return v6
.end method

.method public final zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzi:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    .line 2
    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzf()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 5
    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    .line 6
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 7
    aget v7, v7, v5

    :goto_2
    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 8
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zza(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_2

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 9
    invoke-virtual {v8, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Ljava/util/Map$Entry;)V

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    :cond_2
    ushr-int/lit8 v8, v6, 0x14

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x1

    const v10, 0xfffff

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 11
    :pswitch_0
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 12
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 13
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v8

    .line 14
    invoke-virtual {p2, v7, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_3

    .line 15
    :pswitch_1
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 16
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzD(IJ)V

    goto/16 :goto_3

    .line 17
    :pswitch_2
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 18
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzB(II)V

    goto/16 :goto_3

    .line 19
    :pswitch_3
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 20
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(IJ)V

    goto/16 :goto_3

    .line 21
    :pswitch_4
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 22
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzx(II)V

    goto/16 :goto_3

    .line 23
    :pswitch_5
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 24
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzi(II)V

    goto/16 :goto_3

    .line 25
    :pswitch_6
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 26
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzI(II)V

    goto/16 :goto_3

    .line 27
    :pswitch_7
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 28
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    .line 29
    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto/16 :goto_3

    .line 30
    :pswitch_8
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 31
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 32
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v8

    invoke-virtual {p2, v7, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_3

    .line 33
    :pswitch_9
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 34
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    goto/16 :goto_3

    .line 35
    :pswitch_a
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 36
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzQ(Ljava/lang/Object;J)Z

    move-result v6

    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb(IZ)V

    goto/16 :goto_3

    .line 37
    :pswitch_b
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 38
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzk(II)V

    goto/16 :goto_3

    .line 39
    :pswitch_c
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 40
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzm(IJ)V

    goto/16 :goto_3

    .line 41
    :pswitch_d
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 42
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzr(II)V

    goto/16 :goto_3

    .line 43
    :pswitch_e
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 44
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzK(IJ)V

    goto/16 :goto_3

    .line 45
    :pswitch_f
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 46
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzt(IJ)V

    goto/16 :goto_3

    .line 47
    :pswitch_10
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 48
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo(Ljava/lang/Object;J)F

    move-result v6

    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzo(IF)V

    goto/16 :goto_3

    .line 49
    :pswitch_11
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 50
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzf(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v6, v10

    int-to-long v6, v6

    .line 51
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_3

    .line 52
    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzF(I)Ljava/lang/Object;

    move-result-object p0

    .line 53
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    .line 54
    throw v1

    .line 55
    :pswitch_13
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 56
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 57
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 58
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v8

    .line 59
    invoke-static {v7, v6, p2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_3

    .line 60
    :pswitch_14
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 61
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 62
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 63
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 64
    :pswitch_15
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 65
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 66
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 67
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 68
    :pswitch_16
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 69
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 70
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 71
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 72
    :pswitch_17
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 73
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 74
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 75
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 76
    :pswitch_18
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 77
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 78
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 79
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 80
    :pswitch_19
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 81
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 82
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 83
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzZ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 84
    :pswitch_1a
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 85
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 86
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 87
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 88
    :pswitch_1b
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 89
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 90
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 91
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 92
    :pswitch_1c
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 93
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 94
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 95
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 96
    :pswitch_1d
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 97
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 98
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 99
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 100
    :pswitch_1e
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 101
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 102
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 103
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzaa(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 104
    :pswitch_1f
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 105
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 106
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 107
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 108
    :pswitch_20
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 109
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 110
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 111
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 112
    :pswitch_21
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 113
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    .line 114
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 115
    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 116
    :pswitch_22
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 117
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 118
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 119
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 120
    :pswitch_23
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 121
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 122
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 123
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 124
    :pswitch_24
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 125
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 126
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 127
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 128
    :pswitch_25
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 129
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 130
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 131
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 132
    :pswitch_26
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 133
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 134
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 135
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 136
    :pswitch_27
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 137
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 138
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 139
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzZ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 140
    :pswitch_28
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 141
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 142
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 143
    invoke-static {v7, v6, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    goto/16 :goto_3

    .line 144
    :pswitch_29
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 145
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 146
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 147
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v8

    .line 148
    invoke-static {v7, v6, p2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_3

    .line 149
    :pswitch_2a
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 150
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 151
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 152
    invoke-static {v7, v6, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzY(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    goto/16 :goto_3

    .line 153
    :pswitch_2b
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 154
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 155
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 156
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 157
    :pswitch_2c
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 158
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 159
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 160
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 161
    :pswitch_2d
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 162
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 163
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 164
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 165
    :pswitch_2e
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 166
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 167
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 168
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 169
    :pswitch_2f
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 170
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 171
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 172
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzaa(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 173
    :pswitch_30
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 174
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 175
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 176
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 177
    :pswitch_31
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 178
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 179
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 180
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 181
    :pswitch_32
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 182
    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 183
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 184
    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Z)V

    goto/16 :goto_3

    .line 185
    :pswitch_33
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 186
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 187
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v8

    .line 188
    invoke-virtual {p2, v7, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_3

    .line 189
    :pswitch_34
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 190
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 191
    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzD(IJ)V

    goto/16 :goto_3

    .line 192
    :pswitch_35
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 193
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 194
    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzB(II)V

    goto/16 :goto_3

    .line 195
    :pswitch_36
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 196
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 197
    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(IJ)V

    goto/16 :goto_3

    .line 198
    :pswitch_37
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 199
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 200
    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzx(II)V

    goto/16 :goto_3

    .line 201
    :pswitch_38
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 202
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 203
    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzi(II)V

    goto/16 :goto_3

    .line 204
    :pswitch_39
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 205
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 206
    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzI(II)V

    goto/16 :goto_3

    .line 207
    :pswitch_3a
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 208
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    .line 209
    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto/16 :goto_3

    .line 210
    :pswitch_3b
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 211
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 212
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v8

    invoke-virtual {p2, v7, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)V

    goto/16 :goto_3

    .line 213
    :pswitch_3c
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 214
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzT(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    goto/16 :goto_3

    .line 215
    :pswitch_3d
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 216
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzw(Ljava/lang/Object;J)Z

    move-result v6

    .line 217
    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb(IZ)V

    goto/16 :goto_3

    .line 218
    :pswitch_3e
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 219
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 220
    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzk(II)V

    goto :goto_3

    .line 221
    :pswitch_3f
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 222
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 223
    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzm(IJ)V

    goto :goto_3

    .line 224
    :pswitch_40
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 225
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 226
    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzr(II)V

    goto :goto_3

    .line 227
    :pswitch_41
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 228
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 229
    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzK(IJ)V

    goto :goto_3

    .line 230
    :pswitch_42
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 231
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 232
    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzt(IJ)V

    goto :goto_3

    .line 233
    :pswitch_43
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 234
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzb(Ljava/lang/Object;J)F

    move-result v6

    .line 235
    invoke-virtual {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzo(IF)V

    goto :goto_3

    .line 236
    :pswitch_44
    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_4

    and-int/2addr v6, v10

    int-to-long v8, v6

    .line 237
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zza(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 238
    invoke-virtual {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzf(ID)V

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_5
    :goto_4
    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 239
    invoke-virtual {v3, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;Ljava/util/Map$Entry;)V

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_6
    move-object v2, v1

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    return-void

    .line 242
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzR(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzp(Ljava/lang/Object;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    const v3, 0xfffff

    move v7, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    array-length v9, v9

    if-ge v5, v9, :cond_c

    .line 2
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 3
    aget v11, v10, v5

    ushr-int/lit8 v12, v9, 0x14

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_0

    add-int/lit8 v13, v5, 0x2

    .line 4
    aget v10, v10, v13

    and-int v13, v10, v3

    ushr-int/lit8 v10, v10, 0x14

    shl-int v10, v14, v10

    if-eq v13, v7, :cond_1

    int-to-long v7, v13

    .line 5
    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v7, v13

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :cond_1
    :goto_1
    and-int/2addr v9, v3

    int-to-long v3, v9

    const/16 v9, 0x3f

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_11

    .line 6
    :pswitch_0
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 7
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    .line 8
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v4

    .line 9
    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzv(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v3

    goto/16 :goto_10

    .line 10
    :pswitch_1
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 11
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v11, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v10

    add-long v11, v3, v3

    shr-long/2addr v3, v9

    xor-long/2addr v3, v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v3

    goto/16 :goto_9

    .line 12
    :pswitch_2
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 13
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_c

    .line 14
    :pswitch_3
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 15
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_f

    .line 16
    :pswitch_4
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_e

    .line 18
    :pswitch_5
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 19
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzx(I)I

    move-result v3

    goto/16 :goto_c

    .line 20
    :pswitch_6
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 21
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_c

    .line 22
    :pswitch_7
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 23
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v4, v11, 0x3

    .line 24
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto :goto_2

    .line 26
    :pswitch_8
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 27
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzo(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v3

    goto/16 :goto_10

    .line 29
    :pswitch_9
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 30
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v4, :cond_2

    .line 32
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    :goto_2
    add-int/2addr v9, v3

    add-int/2addr v9, v4

    goto/16 :goto_8

    .line 34
    :cond_2
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    .line 35
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzB(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_c

    .line 36
    :pswitch_a
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 37
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_b

    .line 38
    :pswitch_b
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 39
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_e

    .line 40
    :pswitch_c
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 41
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_f

    .line 42
    :pswitch_d
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 43
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzx(I)I

    move-result v3

    goto/16 :goto_c

    .line 44
    :pswitch_e
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 45
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v3

    goto/16 :goto_d

    .line 46
    :pswitch_f
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 47
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v3

    goto/16 :goto_d

    .line 48
    :pswitch_10
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 49
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_e

    .line 50
    :pswitch_11
    invoke-virtual {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 51
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_f

    .line 52
    :pswitch_12
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzF(I)Ljava/lang/Object;

    move-result-object v4

    .line 53
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 54
    :pswitch_13
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 55
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v4

    .line 56
    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v3

    goto/16 :goto_10

    .line 57
    :pswitch_14
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzt(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 59
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto/16 :goto_3

    .line 60
    :pswitch_15
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 61
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzr(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 62
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto/16 :goto_3

    .line 63
    :pswitch_16
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 64
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzi(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 65
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto/16 :goto_3

    .line 66
    :pswitch_17
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 67
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzg(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 68
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto/16 :goto_3

    .line 69
    :pswitch_18
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 70
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zze(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 71
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto/16 :goto_3

    .line 72
    :pswitch_19
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 73
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzw(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 74
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto/16 :goto_3

    .line 75
    :pswitch_1a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 76
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 77
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 78
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto/16 :goto_3

    .line 79
    :pswitch_1b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 80
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzg(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 81
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto/16 :goto_3

    .line 82
    :pswitch_1c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 83
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzi(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 84
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto :goto_3

    .line 85
    :pswitch_1d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 86
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzl(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 87
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto :goto_3

    .line 88
    :pswitch_1e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 89
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzy(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 90
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto :goto_3

    .line 91
    :pswitch_1f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 92
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzn(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 93
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto :goto_3

    .line 94
    :pswitch_20
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 95
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzg(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 96
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto :goto_3

    .line 97
    :pswitch_21
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 98
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzi(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_b

    .line 99
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    :goto_3
    add-int/2addr v9, v4

    goto/16 :goto_7

    .line 100
    :pswitch_22
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 101
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 102
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_4

    .line 103
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzt(Ljava/util/List;)I

    move-result v3

    .line 104
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v9

    goto/16 :goto_6

    .line 105
    :pswitch_23
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 106
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 107
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_4

    .line 108
    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzr(Ljava/util/List;)I

    move-result v3

    .line 109
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v9

    goto/16 :goto_6

    .line 110
    :pswitch_24
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 111
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzh(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_10

    .line 112
    :pswitch_25
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 113
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzf(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_10

    .line 114
    :pswitch_26
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 115
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 116
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    .line 117
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zze(Ljava/util/List;)I

    move-result v3

    .line 118
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v9

    goto/16 :goto_6

    .line 119
    :pswitch_27
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 120
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 121
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    .line 122
    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzw(Ljava/util/List;)I

    move-result v3

    .line 123
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v9

    goto/16 :goto_6

    .line 124
    :pswitch_28
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 125
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzc(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_10

    .line 126
    :pswitch_29
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v4

    .line 127
    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzp(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v3

    goto/16 :goto_10

    .line 128
    :pswitch_2a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzu(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_10

    .line 129
    :pswitch_2b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 130
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 131
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    :goto_4
    goto :goto_5

    :cond_7
    shl-int/lit8 v4, v11, 0x3

    .line 132
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    add-int/2addr v4, v14

    mul-int v9, v4, v3

    goto :goto_8

    .line 133
    :pswitch_2c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 134
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzf(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_10

    .line 135
    :pswitch_2d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 136
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzh(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_10

    .line 137
    :pswitch_2e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 138
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 139
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    .line 140
    :cond_8
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzl(Ljava/util/List;)I

    move-result v3

    .line 141
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v9

    goto :goto_6

    .line 142
    :pswitch_2f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 143
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 144
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_9

    :goto_5
    const/4 v9, 0x0

    goto :goto_8

    .line 145
    :cond_9
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzy(Ljava/util/List;)I

    move-result v3

    .line 146
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v9

    :goto_6
    mul-int/2addr v9, v4

    :goto_7
    add-int/2addr v9, v3

    :goto_8
    add-int/2addr v6, v9

    goto/16 :goto_11

    .line 147
    :pswitch_30
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 148
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzm(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_10

    .line 149
    :pswitch_31
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 150
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzf(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_10

    .line 151
    :pswitch_32
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 152
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzh(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_10

    :pswitch_33
    and-int v9, v8, v10

    if-eqz v9, :cond_b

    .line 153
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    .line 154
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v4

    .line 155
    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzv(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v3

    goto/16 :goto_10

    :pswitch_34
    and-int/2addr v10, v8

    if-eqz v10, :cond_b

    .line 156
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v11, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v10

    add-long v11, v3, v3

    shr-long/2addr v3, v9

    xor-long/2addr v3, v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v3

    :goto_9
    add-int/2addr v3, v10

    goto/16 :goto_10

    :pswitch_35
    and-int v9, v8, v10

    if-eqz v9, :cond_b

    .line 157
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_c

    :pswitch_36
    and-int v3, v8, v10

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 158
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_f

    :pswitch_37
    and-int v3, v8, v10

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 159
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_e

    :pswitch_38
    and-int v9, v8, v10

    if-eqz v9, :cond_b

    .line 160
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzx(I)I

    move-result v3

    goto/16 :goto_c

    :pswitch_39
    and-int v9, v8, v10

    if-eqz v9, :cond_b

    .line 161
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto/16 :goto_c

    :pswitch_3a
    and-int v9, v8, v10

    if-eqz v9, :cond_b

    .line 162
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v4, v11, 0x3

    .line 163
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    .line 164
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    goto :goto_a

    :pswitch_3b
    and-int v9, v8, v10

    if-eqz v9, :cond_b

    .line 165
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 166
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzo(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v3

    goto/16 :goto_10

    :pswitch_3c
    and-int v9, v8, v10

    if-eqz v9, :cond_b

    .line 167
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 168
    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v4, :cond_a

    .line 169
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    .line 170
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    :goto_a
    add-int/2addr v9, v3

    add-int/2addr v9, v4

    add-int/2addr v6, v9

    goto/16 :goto_11

    .line 171
    :cond_a
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    .line 172
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzB(Ljava/lang/String;)I

    move-result v3

    goto :goto_c

    :pswitch_3d
    and-int v3, v8, v10

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 173
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    :goto_b
    add-int/2addr v3, v14

    goto/16 :goto_10

    :pswitch_3e
    and-int v3, v8, v10

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 174
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto :goto_e

    :pswitch_3f
    and-int v3, v8, v10

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 175
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    goto :goto_f

    :pswitch_40
    and-int v9, v8, v10

    if-eqz v9, :cond_b

    .line 176
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzx(I)I

    move-result v3

    :goto_c
    add-int/2addr v3, v4

    goto :goto_10

    :pswitch_41
    and-int v9, v8, v10

    if-eqz v9, :cond_b

    .line 177
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v3

    goto :goto_d

    :pswitch_42
    and-int v9, v8, v10

    if-eqz v9, :cond_b

    .line 178
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v3

    :goto_d
    add-int/2addr v3, v9

    goto :goto_10

    :pswitch_43
    and-int v3, v8, v10

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 179
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    :goto_e
    add-int/lit8 v3, v3, 0x4

    goto :goto_10

    :pswitch_44
    and-int v3, v8, v10

    if-eqz v3, :cond_b

    shl-int/lit8 v3, v11, 0x3

    .line 180
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v3

    :goto_f
    add-int/lit8 v3, v3, 0x8

    :goto_10
    add-int/2addr v6, v3

    :cond_b
    :goto_11
    add-int/lit8 v5, v5, 0x3

    const v3, 0xfffff

    goto/16 :goto_0

    .line 181
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 182
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 183
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zza(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v6

    iget-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzh:Z

    if-eqz v3, :cond_f

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_12
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    .line 185
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgl;->zzb()I

    move-result v1

    if-ge v4, v1, :cond_d

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    .line 186
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgl;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_d
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    .line 188
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgl;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdr;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v15, v1

    goto :goto_13

    :cond_e
    add-int/2addr v2, v15

    :cond_f
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzq(Ljava/lang/Object;)I
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    array-length v4, v4

    if-ge v2, v4, :cond_b

    .line 2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzB(I)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x14

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 3
    aget v7, v6, v2

    const v8, 0xfffff

    and-int/2addr v4, v8

    int-to-long v8, v4

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzJ:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    .line 5
    iget v4, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzac:I

    if-lt v5, v4, :cond_0

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzW:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    .line 7
    iget v4, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzac:I

    if-gt v5, v4, :cond_0

    add-int/lit8 v4, v2, 0x2

    .line 8
    aget v4, v6, v4

    :cond_0
    const/16 v4, 0x3f

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_f

    .line 9
    :pswitch_0
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 10
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    .line 11
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v5

    .line 12
    invoke-static {v7, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzv(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v4

    goto/16 :goto_e

    .line 13
    :pswitch_1
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 14
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v5

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v7

    add-long v8, v5, v5

    shr-long v4, v5, v4

    xor-long/2addr v4, v8

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v4

    goto/16 :goto_7

    .line 15
    :pswitch_2
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 16
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_a

    .line 17
    :pswitch_3
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_d

    .line 19
    :pswitch_4
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_c

    .line 21
    :pswitch_5
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 22
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzx(I)I

    move-result v4

    goto/16 :goto_a

    .line 23
    :pswitch_6
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 24
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_a

    .line 25
    :pswitch_7
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 26
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v5, v7, 0x3

    .line 27
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto/16 :goto_8

    .line 29
    :pswitch_8
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 30
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 31
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzo(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v4

    goto/16 :goto_e

    .line 32
    :pswitch_9
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 33
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 34
    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v5, :cond_1

    .line 35
    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto/16 :goto_8

    .line 37
    :cond_1
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    .line 38
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzB(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    .line 39
    :pswitch_a
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 40
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_9

    .line 41
    :pswitch_b
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 42
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_c

    .line 43
    :pswitch_c
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 44
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_d

    .line 45
    :pswitch_d
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 46
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzr(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzx(I)I

    move-result v4

    goto/16 :goto_a

    .line 47
    :pswitch_e
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 48
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v7, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v4

    goto/16 :goto_b

    .line 49
    :pswitch_f
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 50
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzC(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v7, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v4

    goto/16 :goto_b

    .line 51
    :pswitch_10
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 52
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_c

    .line 53
    :pswitch_11
    invoke-virtual {p0, p1, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzP(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 54
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_d

    .line 55
    :pswitch_12
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzF(I)Ljava/lang/Object;

    move-result-object v5

    .line 56
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 57
    :pswitch_13
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 58
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v5

    .line 59
    invoke-static {v7, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v4

    goto/16 :goto_e

    .line 60
    :pswitch_14
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 61
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzt(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 62
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto/16 :goto_1

    .line 63
    :pswitch_15
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 64
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzr(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 65
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto/16 :goto_1

    .line 66
    :pswitch_16
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 67
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 68
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto/16 :goto_1

    .line 69
    :pswitch_17
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 70
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 71
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto/16 :goto_1

    .line 72
    :pswitch_18
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 73
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zze(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 74
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto/16 :goto_1

    .line 75
    :pswitch_19
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 76
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzw(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 77
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto/16 :goto_1

    .line 78
    :pswitch_1a
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 79
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 80
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 81
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto/16 :goto_1

    .line 82
    :pswitch_1b
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 83
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 84
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto/16 :goto_1

    .line 85
    :pswitch_1c
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 86
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 87
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto :goto_1

    .line 88
    :pswitch_1d
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 89
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzl(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 90
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto :goto_1

    .line 91
    :pswitch_1e
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 92
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzy(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 93
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto :goto_1

    .line 94
    :pswitch_1f
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 95
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzn(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 96
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto :goto_1

    .line 97
    :pswitch_20
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 98
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 99
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto :goto_1

    .line 100
    :pswitch_21
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 101
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 102
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    :goto_1
    add-int/2addr v6, v5

    goto/16 :goto_5

    .line 103
    :pswitch_22
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 104
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 105
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_3

    .line 106
    :cond_2
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzt(Ljava/util/List;)I

    move-result v4

    .line 107
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v6

    goto/16 :goto_4

    .line 108
    :pswitch_23
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 109
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 110
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_3

    .line 111
    :cond_3
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzr(Ljava/util/List;)I

    move-result v4

    .line 112
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v6

    goto/16 :goto_4

    .line 113
    :pswitch_24
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 114
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzh(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 115
    :pswitch_25
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 116
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzf(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 117
    :pswitch_26
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 118
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 119
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_3

    .line 120
    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zze(Ljava/util/List;)I

    move-result v4

    .line 121
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v6

    goto/16 :goto_4

    .line 122
    :pswitch_27
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 123
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 124
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_3

    .line 125
    :cond_5
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzw(Ljava/util/List;)I

    move-result v4

    .line 126
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v6

    goto/16 :goto_4

    .line 127
    :pswitch_28
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 128
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzc(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 129
    :pswitch_29
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 130
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v5

    .line 131
    invoke-static {v7, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzp(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v4

    goto/16 :goto_e

    .line 132
    :pswitch_2a
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 133
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzu(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 134
    :pswitch_2b
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 135
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 136
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    move v5, v1

    goto :goto_2

    :cond_6
    shl-int/lit8 v5, v7, 0x3

    .line 137
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v4

    :goto_2
    add-int/2addr v3, v5

    goto/16 :goto_f

    .line 138
    :pswitch_2c
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 139
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzf(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 140
    :pswitch_2d
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 141
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzh(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 142
    :pswitch_2e
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 143
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 144
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    .line 145
    :cond_7
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzl(Ljava/util/List;)I

    move-result v4

    .line 146
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v6

    goto :goto_4

    .line 147
    :pswitch_2f
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 148
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 149
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    :goto_3
    move v6, v1

    goto :goto_6

    .line 150
    :cond_8
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzy(Ljava/util/List;)I

    move-result v4

    .line 151
    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzC(I)I

    move-result v6

    :goto_4
    mul-int/2addr v6, v5

    :goto_5
    add-int/2addr v6, v4

    :goto_6
    add-int/2addr v3, v6

    goto/16 :goto_f

    .line 152
    :pswitch_30
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 153
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzm(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 154
    :pswitch_31
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 155
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzf(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 156
    :pswitch_32
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 157
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzh(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 158
    :pswitch_33
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 159
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    .line 160
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v5

    .line 161
    invoke-static {v7, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzv(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v4

    goto/16 :goto_e

    .line 162
    :pswitch_34
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 163
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    shl-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v7

    add-long v8, v5, v5

    shr-long v4, v5, v4

    xor-long/2addr v4, v8

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v4

    :goto_7
    add-int/2addr v4, v7

    goto/16 :goto_e

    .line 164
    :pswitch_35
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 165
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_a

    .line 166
    :pswitch_36
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 167
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_d

    .line 168
    :pswitch_37
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 169
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_c

    .line 170
    :pswitch_38
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 171
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzx(I)I

    move-result v4

    goto/16 :goto_a

    .line 172
    :pswitch_39
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 173
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto/16 :goto_a

    .line 174
    :pswitch_3a
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 175
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v5, v7, 0x3

    .line 176
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    .line 177
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    goto :goto_8

    .line 178
    :pswitch_3b
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 179
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 180
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzo(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;)I

    move-result v4

    goto/16 :goto_e

    .line 181
    :pswitch_3c
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 182
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 183
    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v5, :cond_9

    .line 184
    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    .line 185
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    :goto_8
    add-int/2addr v6, v4

    add-int/2addr v6, v5

    goto/16 :goto_6

    .line 186
    :cond_9
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    .line 187
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzB(Ljava/lang/String;)I

    move-result v4

    goto :goto_a

    .line 188
    :pswitch_3d
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 189
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    .line 190
    :pswitch_3e
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 191
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto :goto_c

    .line 192
    :pswitch_3f
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 193
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    goto :goto_d

    .line 194
    :pswitch_40
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 195
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzx(I)I

    move-result v4

    :goto_a
    add-int/2addr v4, v5

    goto :goto_e

    .line 196
    :pswitch_41
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 197
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v7, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v4

    goto :goto_b

    .line 198
    :pswitch_42
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 199
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v7, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzE(J)I

    move-result v4

    :goto_b
    add-int/2addr v4, v6

    goto :goto_e

    .line 200
    :pswitch_43
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 201
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    :goto_c
    add-int/lit8 v4, v4, 0x4

    goto :goto_e

    .line 202
    :pswitch_44
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzM(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    shl-int/lit8 v4, v7, 0x3

    .line 203
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdi;->zzD(I)I

    move-result v4

    :goto_d
    add-int/lit8 v4, v4, 0x8

    :goto_e
    add-int/2addr v3, v4

    :cond_a
    :goto_f
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 204
    :cond_b
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 205
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zza(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v3

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzs(Ljava/lang/Object;IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzF(I)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-virtual {v0, p1, p3, p4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 3
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    .line 4
    iget-boolean v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;->zzb:Z

    if-nez v1, :cond_1

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    .line 6
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    .line 7
    :goto_0
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, p1, p3, p4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    :cond_1
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfe;

    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public final zzt(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 1
    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x2

    const/4 v15, 0x5

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_13

    .line 2
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    .line 4
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_0

    .line 5
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    iget-object v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 6
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 8
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_1
    if-eqz v5, :cond_2

    goto/16 :goto_9

    .line 11
    :cond_2
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 12
    invoke-static {v2, v3}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzc(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_2
    if-eqz v5, :cond_3

    goto/16 :goto_9

    .line 14
    :cond_3
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 15
    invoke-static {v2}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzb(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 16
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_3
    if-nez v5, :cond_13

    .line 17
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 18
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzD(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zzh(ILjava/lang/Object;)V

    goto :goto_3

    .line 21
    :cond_5
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 22
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3
    move v0, v3

    goto/16 :goto_a

    :pswitch_4
    if-eq v5, v7, :cond_6

    goto/16 :goto_9

    .line 23
    :cond_6
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-object v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 24
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 25
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_5
    if-ne v5, v7, :cond_13

    .line 26
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    move/from16 v2, p4

    .line 27
    invoke-static {v0, v3, v4, v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    .line 28
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_7

    .line 29
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-nez v15, :cond_8

    iget-object v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 30
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 31
    :cond_8
    iget-object v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 32
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 33
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v7, :cond_13

    .line 35
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-nez v2, :cond_9

    const-string v2, ""

    .line 36
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_9
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_b

    add-int v4, v0, v2

    .line 37
    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zzi([BII)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    .line 38
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    .line 39
    :cond_b
    :goto_6
    new-instance v4, Ljava/lang/String;

    .line 40
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 41
    invoke-virtual {v12, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    .line 42
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_7
    if-nez v5, :cond_13

    .line 43
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    const/4 v15, 0x1

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    .line 44
    :goto_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_8
    if-eq v5, v15, :cond_d

    goto/16 :goto_9

    .line 46
    :cond_d
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x1

    if-eq v5, v0, :cond_e

    goto :goto_9

    .line 48
    :cond_e
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    :pswitch_a
    if-eqz v5, :cond_f

    goto :goto_9

    .line 50
    :cond_f
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_b
    if-eqz v5, :cond_10

    goto :goto_9

    .line 53
    :cond_10
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 55
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_c
    if-eq v5, v15, :cond_11

    goto :goto_9

    .line 56
    :cond_11
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 58
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_d
    const/4 v0, 0x1

    if-eq v5, v0, :cond_12

    goto :goto_9

    .line 59
    :cond_12
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 61
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    :cond_13
    :goto_9
    move v0, v4

    :goto_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzu(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 1
    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/4 v8, 0x0

    const v7, 0xfffff

    move/from16 v0, p3

    move v5, v7

    move v2, v8

    move v6, v2

    move v1, v10

    :goto_0
    if-ge v0, v13, :cond_1a

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 2
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    move v4, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v16, 0x3

    and-int/lit8 v0, v16, 0x7

    if-le v3, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    .line 3
    iget v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zze:I

    if-lt v3, v1, :cond_2

    iget v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzf:I

    if-gt v3, v1, :cond_2

    invoke-virtual {v15, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzz(II)I

    move-result v1

    goto :goto_2

    .line 4
    :cond_1
    iget v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zze:I

    if-lt v3, v1, :cond_2

    iget v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzf:I

    if-gt v3, v1, :cond_2

    invoke-virtual {v15, v3, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzz(II)I

    move-result v1

    :goto_2
    move v2, v1

    goto :goto_3

    :cond_2
    move v2, v10

    :goto_3
    if-ne v2, v10, :cond_3

    move/from16 v19, v3

    move v2, v4

    move/from16 v26, v5

    move/from16 v18, v8

    move-object/from16 v28, v9

    move/from16 v21, v10

    move-object v15, v14

    goto/16 :goto_19

    .line 5
    :cond_3
    iget-object v1, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    add-int/lit8 v17, v2, 0x1

    .line 6
    aget v8, v1, v17

    ushr-int/lit8 v10, v8, 0x14

    and-int/lit16 v10, v10, 0xff

    move/from16 p3, v3

    and-int v3, v8, v7

    move/from16 v20, v8

    int-to-long v7, v3

    const/16 v3, 0x11

    if-gt v10, v3, :cond_10

    add-int/lit8 v3, v2, 0x2

    .line 7
    aget v1, v1, v3

    ushr-int/lit8 v3, v1, 0x14

    const/4 v13, 0x1

    shl-int v22, v13, v3

    const v3, 0xfffff

    and-int/2addr v1, v3

    if-eq v1, v5, :cond_6

    move/from16 v19, v4

    if-eq v5, v3, :cond_4

    int-to-long v3, v5

    .line 8
    invoke-virtual {v9, v14, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v3, 0xfffff

    :cond_4
    if-eq v1, v3, :cond_5

    int-to-long v4, v1

    .line 9
    invoke-virtual {v9, v14, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v6, v4

    :cond_5
    move/from16 v23, v6

    move v6, v1

    goto :goto_4

    :cond_6
    move/from16 v19, v4

    move/from16 v23, v6

    move v6, v5

    :goto_4
    const/4 v1, 0x5

    packed-switch v10, :pswitch_data_0

    move/from16 v10, p4

    move v4, v2

    move/from16 v21, v3

    move/from16 v3, v19

    move/from16 v19, p3

    goto/16 :goto_12

    :pswitch_0
    if-nez v0, :cond_7

    move/from16 v4, v19

    .line 10
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v10

    iget-wide v0, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 11
    invoke-static {v0, v1}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzc(J)J

    move-result-wide v4

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v19, p3

    move v13, v2

    move/from16 v21, v3

    move-wide v2, v7

    .line 12
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_5
    or-int v0, v23, v22

    goto :goto_7

    :cond_7
    move/from16 v21, v3

    move/from16 v4, v19

    move/from16 v19, p3

    move/from16 v10, p4

    move v3, v4

    move v4, v2

    goto/16 :goto_12

    :pswitch_1
    move v13, v2

    move/from16 v21, v3

    move/from16 v4, v19

    move/from16 v19, p3

    if-nez v0, :cond_9

    .line 13
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 14
    invoke-static {v1}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzb(I)I

    move-result v1

    .line 15
    invoke-virtual {v9, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_2
    move v13, v2

    move/from16 v21, v3

    move/from16 v4, v19

    move/from16 v19, p3

    if-nez v0, :cond_9

    .line 16
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 17
    invoke-virtual {v9, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_3
    move v13, v2

    move/from16 v21, v3

    move/from16 v4, v19

    const/4 v1, 0x2

    move/from16 v19, p3

    if-ne v0, v1, :cond_9

    .line 18
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 19
    invoke-virtual {v9, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    move v10, v0

    goto :goto_5

    :goto_7
    move v5, v6

    move v6, v0

    move v0, v10

    goto/16 :goto_14

    :pswitch_4
    move v13, v2

    move/from16 v21, v3

    move/from16 v4, v19

    const/4 v1, 0x2

    move/from16 v19, p3

    if-ne v0, v1, :cond_9

    .line 20
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    move/from16 v10, p4

    .line 21
    invoke-static {v0, v12, v4, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    .line 22
    invoke-virtual {v9, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 23
    invoke-virtual {v9, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_8
    iget-object v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 24
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    invoke-virtual {v9, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    move v4, v13

    goto/16 :goto_d

    :cond_9
    move/from16 v10, p4

    goto :goto_a

    :pswitch_5
    move/from16 v10, p4

    move v13, v2

    move/from16 v21, v3

    move/from16 v4, v19

    const/4 v1, 0x2

    move/from16 v19, p3

    if-ne v0, v1, :cond_b

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_a

    .line 26
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzg([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto :goto_9

    .line 27
    :cond_a
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzh([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    .line 28
    :goto_9
    iget-object v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 29
    invoke-virtual {v9, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_b
    :goto_a
    move/from16 v30, v13

    move v13, v4

    move/from16 v4, v30

    goto/16 :goto_f

    :pswitch_6
    move/from16 v10, p4

    move v5, v2

    move/from16 v21, v3

    move/from16 v4, v19

    move/from16 v19, p3

    if-nez v0, :cond_d

    .line 30
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    goto :goto_b

    :cond_c
    const/4 v13, 0x0

    .line 31
    :goto_b
    invoke-static {v14, v7, v8, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzm(Ljava/lang/Object;JZ)V

    goto :goto_c

    :pswitch_7
    move/from16 v10, p4

    move v5, v2

    move/from16 v21, v3

    move/from16 v4, v19

    move/from16 v19, p3

    if-ne v0, v1, :cond_d

    .line 32
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-virtual {v9, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v4, v4, 0x4

    move v0, v4

    :goto_c
    or-int v1, v23, v22

    move v2, v5

    goto/16 :goto_11

    :pswitch_8
    move/from16 v10, p4

    move v5, v2

    move/from16 v21, v3

    move/from16 v4, v19

    move/from16 v19, p3

    if-ne v0, v13, :cond_d

    .line 33
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v24

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v7

    move v13, v4

    move v7, v5

    move-wide/from16 v4, v24

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v13, 0x8

    move v4, v7

    goto/16 :goto_d

    :cond_d
    move v13, v4

    move v7, v5

    move v4, v7

    goto/16 :goto_f

    :pswitch_9
    move/from16 v10, p4

    move v4, v2

    move/from16 v21, v3

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v0, :cond_e

    .line 34
    invoke-static {v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 35
    invoke-virtual {v9, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    :pswitch_a
    move/from16 v10, p4

    move v4, v2

    move/from16 v21, v3

    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v0, :cond_e

    .line 36
    invoke-static {v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v13

    iget-wide v2, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v24, v2

    move-wide v2, v7

    move v7, v4

    move-wide/from16 v4, v24

    .line 37
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v23, v22

    move v4, v7

    goto :goto_e

    :pswitch_b
    move/from16 v10, p4

    move v4, v2

    move/from16 v21, v3

    move/from16 v13, v19

    move/from16 v19, p3

    if-ne v0, v1, :cond_e

    .line 38
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 39
    invoke-static {v14, v7, v8, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzp(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v13, 0x4

    :goto_d
    or-int v1, v23, v22

    move v13, v0

    move v0, v1

    :goto_e
    move v1, v0

    move v0, v13

    goto :goto_10

    :cond_e
    :goto_f
    move v3, v13

    goto :goto_12

    :pswitch_c
    move/from16 v10, p4

    move v4, v2

    move/from16 v21, v3

    move/from16 v3, v19

    move/from16 v19, p3

    if-ne v0, v13, :cond_f

    .line 40
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 41
    invoke-static {v14, v7, v8, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzo(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    or-int v1, v23, v22

    :goto_10
    move v2, v4

    :goto_11
    move v5, v6

    move v13, v10

    move/from16 v7, v21

    const/4 v8, 0x0

    const/4 v10, -0x1

    move v6, v1

    move/from16 v1, v19

    goto/16 :goto_0

    :cond_f
    :goto_12
    move v2, v3

    move v8, v4

    move/from16 v26, v6

    move-object/from16 v28, v9

    move-object v15, v14

    move/from16 v6, v23

    const/16 v18, 0x0

    const/16 v21, -0x1

    goto/16 :goto_19

    :cond_10
    move/from16 v19, p3

    move v3, v4

    const/4 v1, 0x2

    const v21, 0xfffff

    move v4, v2

    const/16 v2, 0x1b

    if-ne v10, v2, :cond_14

    if-ne v0, v1, :cond_13

    .line 42
    invoke-virtual {v9, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;->zzc()Z

    move-result v1

    if-nez v1, :cond_12

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_13

    :cond_11
    add-int/2addr v1, v1

    .line 45
    :goto_13
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    move-result-object v0

    .line 46
    invoke-virtual {v9, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_12
    move-object v7, v0

    .line 47
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v13, v4

    move/from16 v4, p4

    move v8, v5

    move-object v5, v7

    move v7, v6

    move-object/from16 v6, p5

    .line 48
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move v6, v7

    move v5, v8

    :goto_14
    move v2, v13

    move/from16 v1, v19

    move/from16 v7, v21

    const/4 v8, 0x0

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_13
    move v14, v3

    move/from16 v29, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v28, v9

    const/16 v18, 0x0

    const/16 v21, -0x1

    goto/16 :goto_15

    :cond_14
    move v13, v4

    const/16 v2, 0x31

    if-gt v10, v2, :cond_16

    move/from16 v4, v20

    int-to-long v1, v4

    move v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v22, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move/from16 v20, v4

    move/from16 v4, p4

    move/from16 v26, v5

    move/from16 v5, v16

    move/from16 v27, v6

    move/from16 v6, v19

    move-wide/from16 v24, v7

    move/from16 v8, v21

    move/from16 v7, v20

    const/16 v18, 0x0

    move v8, v13

    move-object/from16 v28, v9

    move/from16 v17, v10

    const/16 v21, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v17

    move/from16 v29, v13

    move-wide/from16 v12, v24

    move-object/from16 v14, p5

    .line 49
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzv(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move/from16 v14, p3

    move-object/from16 v15, p1

    if-eq v0, v14, :cond_15

    move/from16 v17, v29

    goto/16 :goto_17

    :cond_15
    move v4, v0

    goto :goto_16

    :cond_16
    move v14, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move-wide/from16 v24, v7

    move-object/from16 v28, v9

    move/from16 v17, v10

    move/from16 v29, v13

    move/from16 v4, v20

    const/16 v18, 0x0

    const/16 v21, -0x1

    move/from16 v20, v0

    const/16 v0, 0x32

    move/from16 v9, v17

    if-ne v9, v0, :cond_18

    move/from16 v7, v20

    if-eq v7, v1, :cond_17

    :goto_15
    move-object/from16 v15, p1

    move v4, v14

    :goto_16
    move/from16 v17, v29

    goto :goto_18

    :cond_17
    move-object/from16 v13, p1

    move-wide/from16 v10, v24

    move/from16 v12, v29

    .line 50
    invoke-virtual {v15, v13, v12, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzs(Ljava/lang/Object;IJ)I

    const/4 v0, 0x0

    throw v0

    :cond_18
    move-object/from16 v13, p1

    move/from16 v7, v20

    move-wide/from16 v10, v24

    move/from16 v12, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move v8, v4

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v19

    move/from16 v17, v12

    move-object v15, v13

    move-object/from16 v13, p5

    .line 51
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzt(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v14, :cond_19

    :goto_17
    move/from16 v2, v17

    move/from16 v5, v26

    move/from16 v6, v27

    goto :goto_1a

    :cond_19
    move v4, v0

    :goto_18
    move v2, v4

    move/from16 v8, v17

    move/from16 v6, v27

    .line 52
    :goto_19
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 53
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move v2, v8

    move/from16 v5, v26

    :goto_1a
    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v8, v18

    move/from16 v1, v19

    move/from16 v10, v21

    move-object/from16 v9, v28

    const v7, 0xfffff

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1a
    move/from16 v27, v6

    move v1, v7

    move-object/from16 v28, v9

    move-object v15, v14

    if-eq v5, v1, :cond_1b

    int-to-long v1, v5

    move/from16 v6, v27

    move-object/from16 v3, v28

    .line 54
    invoke-virtual {v3, v15, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1b
    move/from16 v1, p4

    if-ne v0, v1, :cond_1c

    return v0

    .line 55
    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzv(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v6, p7

    move/from16 v9, p8

    move-wide/from16 v10, p12

    move-object/from16 v7, p14

    .line 1
    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    .line 2
    invoke-interface {v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;->zzc()Z

    move-result v14

    if-nez v14, :cond_1

    .line 3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_0

    const/16 v14, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v14, v14

    .line 4
    :goto_0
    invoke-interface {v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    move-result-object v13

    .line 5
    invoke-virtual {v12, v1, v10, v11, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v10, 0x5

    const-wide/16 v11, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_53

    .line 6
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    .line 7
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 8
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    :pswitch_0
    if-ne v6, v14, :cond_4

    .line 9
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;

    .line 10
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 11
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 12
    invoke-static {v4, v5}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzc(J)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;->zzf(J)V

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    goto/16 :goto_2a

    .line 13
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_4
    if-nez v6, :cond_53

    .line 14
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;

    .line 15
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 16
    invoke-static {v8, v9}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzc(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;->zzf(J)V

    :goto_2
    if-ge v0, v5, :cond_6

    .line 17
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    invoke-static {v8, v9}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzc(J)J

    move-result-wide v8

    .line 19
    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;->zzf(J)V

    goto :goto_2

    :cond_6
    :goto_3
    return v0

    :pswitch_1
    if-ne v6, v14, :cond_9

    .line 20
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    .line 21
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_4
    if-ge v0, v1, :cond_7

    .line 22
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 23
    invoke-static {v2}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzb(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzg(I)V

    goto :goto_4

    :cond_7
    if-ne v0, v1, :cond_8

    goto/16 :goto_2a

    .line 24
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_9
    if-nez v6, :cond_53

    .line 25
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    .line 26
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 27
    invoke-static {v1}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzb(I)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzg(I)V

    :goto_5
    if-ge v0, v5, :cond_b

    .line 28
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_a

    goto :goto_6

    .line 29
    :cond_a
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-static {v1}, Lcom/motorola/camera/MotoLiveStreamHelper;->zzb(I)I

    move-result v1

    .line 30
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzg(I)V

    goto :goto_5

    :cond_b
    :goto_6
    return v0

    :pswitch_2
    if-ne v6, v14, :cond_c

    .line 31
    invoke-static {v3, v4, v13, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzf([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    goto :goto_7

    :cond_c
    if-nez v6, :cond_53

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    .line 32
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    .line 33
    :goto_7
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    if-ne v3, v4, :cond_d

    const/4 v3, 0x0

    .line 34
    :cond_d
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzD(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 35
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    if-nez v4, :cond_e

    goto/16 :goto_b

    .line 36
    :cond_e
    instance-of v5, v13, Ljava/util/RandomAccess;

    if-eqz v5, :cond_14

    .line 37
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v6, v16

    move v7, v6

    :goto_8
    if-ge v6, v5, :cond_12

    .line 38
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 39
    invoke-interface {v4, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_10

    if-eq v6, v7, :cond_f

    .line 40
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_10
    if-nez v3, :cond_11

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zze()Ljava/lang/Object;

    move-result-object v3

    :cond_11
    int-to-long v9, v9

    .line 42
    invoke-virtual {v0, v3, v8, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzf(Ljava/lang/Object;IJ)V

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_12
    if-ne v7, v5, :cond_13

    goto :goto_b

    .line 43
    :cond_13
    invoke-interface {v13, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_b

    .line 44
    :cond_14
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 45
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 46
    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;->zza(I)Z

    move-result v7

    if-nez v7, :cond_15

    if-nez v3, :cond_16

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zze()Ljava/lang/Object;

    move-result-object v3

    :cond_16
    int-to-long v6, v6

    .line 48
    invoke-virtual {v0, v3, v8, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;->zzf(Ljava/lang/Object;IJ)V

    .line 49
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_17
    :goto_b
    if-nez v3, :cond_18

    move v0, v2

    goto/16 :goto_2a

    .line 50
    :cond_18
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    .line 51
    iput-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgq;

    return v2

    :pswitch_3
    if-ne v6, v14, :cond_53

    .line 52
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v1, :cond_20

    .line 53
    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_1f

    if-nez v1, :cond_19

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 55
    :cond_19
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzr([BII)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/2addr v0, v1

    :goto_d
    if-ge v0, v5, :cond_1e

    .line 56
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_1a

    goto :goto_e

    .line 57
    :cond_1a
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v1, :cond_1d

    .line 58
    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_1c

    if-nez v1, :cond_1b

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcz;

    .line 60
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 61
    :cond_1b
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzr([BII)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 62
    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    .line 63
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_1e
    :goto_e
    return v0

    .line 64
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    .line 65
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :pswitch_4
    if-eq v6, v14, :cond_21

    goto/16 :goto_29

    .line 66
    :cond_21
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v13

    move-object/from16 p12, p14

    .line 67
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    return v0

    :pswitch_5
    if-ne v6, v14, :cond_53

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    cmp-long v0, v0, v11

    const-string v1, ""

    if-nez v0, :cond_26

    .line 68
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v4, :cond_25

    if-nez v4, :cond_22

    .line 69
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 70
    :cond_22
    new-instance v6, Ljava/lang/String;

    .line 71
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 72
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/2addr v0, v4

    :goto_10
    if-ge v0, v5, :cond_54

    .line 73
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ne v2, v6, :cond_54

    .line 74
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v4, :cond_24

    if-nez v4, :cond_23

    .line 75
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_23
    new-instance v6, Ljava/lang/String;

    .line 76
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 77
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 78
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    .line 79
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    .line 80
    :cond_26
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v4, :cond_2d

    if-nez v4, :cond_27

    .line 81
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_11

    :cond_27
    add-int v6, v0, v4

    .line 82
    invoke-static {v3, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zzi([BII)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 83
    new-instance v8, Ljava/lang/String;

    .line 84
    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 85
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    if-ge v6, v5, :cond_2b

    .line 86
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ne v2, v4, :cond_2b

    .line 87
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v6

    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v0, :cond_2a

    if-nez v0, :cond_28

    .line 88
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_28
    add-int v4, v6, v0

    .line 89
    invoke-static {v3, v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhe;->zzi([BII)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 90
    new-instance v8, Ljava/lang/String;

    .line 91
    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v6, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 92
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_11

    .line 93
    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    .line 94
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_2b
    move v0, v6

    goto/16 :goto_2a

    .line 95
    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    .line 96
    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :pswitch_6
    if-ne v6, v14, :cond_31

    .line 97
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    .line 98
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_12
    if-ge v0, v1, :cond_2f

    .line 99
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v2, v4, v11

    if-eqz v2, :cond_2e

    move v2, v15

    goto :goto_13

    :cond_2e
    move/from16 v2, v16

    .line 100
    :goto_13
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->zze(Z)V

    goto :goto_12

    :cond_2f
    if-ne v0, v1, :cond_30

    goto/16 :goto_2a

    .line 101
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_31
    if-nez v6, :cond_53

    .line 102
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    .line 103
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v1, v8, v11

    if-eqz v1, :cond_32

    move v1, v15

    goto :goto_14

    :cond_32
    move/from16 v1, v16

    .line 104
    :goto_14
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->zze(Z)V

    :goto_15
    if-ge v0, v5, :cond_35

    .line 105
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_33

    goto :goto_17

    .line 106
    :cond_33
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v1, v8, v11

    if-eqz v1, :cond_34

    move v1, v15

    goto :goto_16

    :cond_34
    move/from16 v1, v16

    .line 107
    :goto_16
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->zze(Z)V

    goto :goto_15

    :cond_35
    :goto_17
    return v0

    :pswitch_7
    if-ne v6, v14, :cond_38

    .line 108
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    .line 109
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_18
    if-ge v0, v1, :cond_36

    .line 110
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzg(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_18

    :cond_36
    if-ne v0, v1, :cond_37

    goto/16 :goto_2a

    .line 111
    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_38
    if-ne v6, v10, :cond_53

    .line 112
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    .line 113
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzg(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_19
    if-ge v0, v5, :cond_3a

    .line 114
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_39

    goto :goto_1a

    .line 115
    :cond_39
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzg(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_19

    :cond_3a
    :goto_1a
    return v0

    :pswitch_8
    if-ne v6, v14, :cond_3d

    .line 116
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;

    .line 117
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_1b
    if-ge v0, v1, :cond_3b

    .line 118
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;->zzf(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_1b

    :cond_3b
    if-ne v0, v1, :cond_3c

    goto/16 :goto_2a

    .line 119
    :cond_3c
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_3d
    if-ne v6, v15, :cond_53

    .line 120
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;

    .line 121
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;->zzf(J)V

    add-int/lit8 v0, v4, 0x8

    :goto_1c
    if-ge v0, v5, :cond_3f

    .line 122
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_3e

    goto :goto_1d

    .line 123
    :cond_3e
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;->zzf(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_1c

    :cond_3f
    :goto_1d
    return v0

    :pswitch_9
    if-ne v6, v14, :cond_40

    .line 124
    invoke-static {v3, v4, v13, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzf([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto/16 :goto_2a

    :cond_40
    if-eqz v6, :cond_41

    goto/16 :goto_29

    :cond_41
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v13

    move-object/from16 p10, p14

    .line 125
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    return v0

    :pswitch_a
    if-ne v6, v14, :cond_44

    .line 126
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;

    .line 127
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_1e
    if-ge v0, v1, :cond_42

    .line 128
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 129
    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;->zzf(J)V

    goto :goto_1e

    :cond_42
    if-ne v0, v1, :cond_43

    goto/16 :goto_2a

    .line 130
    :cond_43
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_44
    if-nez v6, :cond_53

    .line 131
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;

    .line 132
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 133
    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;->zzf(J)V

    :goto_1f
    if-ge v0, v5, :cond_46

    .line 134
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_45

    goto :goto_20

    .line 135
    :cond_45
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 136
    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfa;->zzf(J)V

    goto :goto_1f

    :cond_46
    :goto_20
    return v0

    :pswitch_b
    if-ne v6, v14, :cond_49

    .line 137
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 138
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_21
    if-ge v0, v1, :cond_47

    .line 139
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 140
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzg(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_21

    :cond_47
    if-ne v0, v1, :cond_48

    goto/16 :goto_2a

    .line 141
    :cond_48
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_49
    if-ne v6, v10, :cond_53

    .line 142
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 143
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 144
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzg(F)V

    add-int/lit8 v0, v4, 0x4

    :goto_22
    if-ge v0, v5, :cond_4b

    .line 145
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_4a

    goto :goto_23

    .line 146
    :cond_4a
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 147
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzg(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_22

    :cond_4b
    :goto_23
    return v0

    :pswitch_c
    if-ne v6, v14, :cond_4e

    .line 148
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    .line 149
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_24
    if-ge v0, v1, :cond_4c

    .line 150
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 151
    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zze(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_24

    :cond_4c
    if-ne v0, v1, :cond_4d

    goto :goto_2a

    .line 152
    :cond_4d
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;

    move-result-object v0

    throw v0

    :cond_4e
    if-ne v6, v15, :cond_53

    .line 153
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;

    .line 154
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 155
    invoke-virtual {v13, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zze(D)V

    add-int/lit8 v0, v4, 0x8

    :goto_25
    if-ge v0, v5, :cond_50

    .line 156
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_4f

    goto :goto_26

    .line 157
    :cond_4f
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 158
    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdk;->zze(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_25

    :cond_50
    :goto_26
    return v0

    :goto_27
    if-ge v4, v5, :cond_52

    .line 159
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v8, :cond_51

    goto :goto_28

    :cond_51
    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    .line 160
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 161
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_52
    :goto_28
    return v4

    :cond_53
    :goto_29
    move v0, v4

    :cond_54
    :goto_2a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzy(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method public final zzz(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzc:[I

    .line 2
    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    return v1
.end method
