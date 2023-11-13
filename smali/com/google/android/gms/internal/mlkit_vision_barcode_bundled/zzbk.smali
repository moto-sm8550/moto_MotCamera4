.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbk;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzb;
.source "com.google.mlkit:barcode-scanning@@17.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.mlkit.vision.barcode.aidls.IBarcodeScanner"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    const/4 v1, 0x1

    const-string v2, "null reference"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_25

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    return v3

    .line 1
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 2
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzc;->$r8$clinit:I

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object/from16 v6, p2

    .line 4
    invoke-interface {v5, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 5
    :goto_0
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;

    .line 6
    move-object/from16 v6, p0

    check-cast v6, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;

    .line 7
    iget v7, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zza:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    const/16 v9, 0x11

    if-eq v7, v9, :cond_4

    const/16 v9, 0x23

    if-eq v7, v9, :cond_3

    const v2, 0x32315659

    if-ne v7, v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    iget v1, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zza:I

    const/16 v2, 0x25

    const-string v3, "Unsupported image format: "

    .line 10
    invoke-static {v2, v3, v1}, Lbd$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v6, v0, v5}, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zzf(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    move-result-object v0

    goto :goto_2

    .line 15
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v0, v5}, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zzf(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    move-result-object v0

    goto :goto_2

    .line 16
    :cond_5
    iget-object v7, v6, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    .line 17
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, v6, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zzd:Lcom/google/android/libraries/barhopper/RecognitionOptions;

    invoke-virtual {v7, v0, v2}, Lcom/google/android/libraries/barhopper/BarhopperV3;->recognize(Landroid/graphics/Bitmap;Lcom/google/android/libraries/barhopper/RecognitionOptions;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    move-result-object v0

    .line 19
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    sget-object v6, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 22
    iget v7, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zzb:I

    .line 23
    iget v9, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zzc:I

    .line 24
    iget v10, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zzd:I

    .line 25
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v10, :cond_6

    move-object v6, v4

    goto :goto_4

    .line 26
    :cond_6
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    neg-int v11, v7

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    neg-int v13, v9

    int-to-float v13, v13

    div-float/2addr v13, v12

    .line 27
    invoke-virtual {v6, v11, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-int/lit8 v11, v10, 0x5a

    int-to-float v11, v11

    .line 28
    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->postRotate(F)Z

    rem-int/2addr v10, v1

    if-eqz v10, :cond_7

    move v1, v9

    goto :goto_3

    :cond_7
    move v1, v7

    :goto_3
    if-nez v10, :cond_8

    move v7, v9

    :cond_8
    int-to-float v1, v1

    div-float/2addr v1, v12

    int-to-float v7, v7

    div-float/2addr v7, v12

    .line 29
    invoke-virtual {v6, v1, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 30
    :goto_4
    invoke-virtual {v0}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzc()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/photos/vision/barhopper/zzc;

    .line 31
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zza()I

    move-result v7

    const/4 v9, 0x5

    const/16 v10, 0x8

    if-lez v7, :cond_d

    if-eqz v6, :cond_d

    new-array v7, v10, [F

    .line 32
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzo()Ljava/util/List;

    move-result-object v10

    .line 33
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zza()I

    move-result v11

    move v12, v3

    :goto_6
    if-ge v12, v11, :cond_9

    add-int v13, v12, v12

    .line 34
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual {v14}, Lcom/google/photos/vision/barhopper/zzae;->zza()I

    move-result v14

    int-to-float v14, v14

    aput v14, v7, v13

    add-int/lit8 v13, v13, 0x1

    .line 35
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual {v14}, Lcom/google/photos/vision/barhopper/zzae;->zzb()I

    move-result v14

    int-to-float v14, v14

    aput v14, v7, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 36
    :cond_9
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 37
    iget v10, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu;->zzd:I

    move v12, v3

    :goto_7
    if-ge v12, v11, :cond_d

    .line 38
    invoke-virtual {v1, v9, v4}, Lcom/google/photos/vision/barhopper/zzc;->zzg(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 39
    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    .line 40
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    .line 41
    check-cast v9, Lcom/google/photos/vision/barhopper/zzb;

    add-int v1, v12, v10

    rem-int/2addr v1, v11

    add-int v13, v12, v12

    .line 42
    invoke-static {}, Lcom/google/photos/vision/barhopper/zzae;->zzc()Lcom/google/photos/vision/barhopper/zzad;

    move-result-object v14

    aget v15, v7, v13

    float-to-int v15, v15

    .line 43
    iget-boolean v3, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v3, :cond_a

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_a
    iget-object v3, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 44
    check-cast v3, Lcom/google/photos/vision/barhopper/zzae;

    invoke-static {v3, v15}, Lcom/google/photos/vision/barhopper/zzae;->zze(Lcom/google/photos/vision/barhopper/zzae;I)V

    add-int/lit8 v13, v13, 0x1

    .line 45
    aget v3, v7, v13

    float-to-int v3, v3

    .line 46
    iget-boolean v13, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v13, :cond_b

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v13, 0x0

    iput-boolean v13, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    :goto_8
    iget-object v15, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 47
    check-cast v15, Lcom/google/photos/vision/barhopper/zzae;

    invoke-static {v15, v3}, Lcom/google/photos/vision/barhopper/zzae;->zzf(Lcom/google/photos/vision/barhopper/zzae;I)V

    .line 48
    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object v3

    check-cast v3, Lcom/google/photos/vision/barhopper/zzae;

    .line 49
    iget-boolean v14, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v14, :cond_c

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    iput-boolean v13, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_c
    iget-object v13, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 50
    check-cast v13, Lcom/google/photos/vision/barhopper/zzc;

    invoke-static {v13, v1, v3}, Lcom/google/photos/vision/barhopper/zzc;->zzp(Lcom/google/photos/vision/barhopper/zzc;ILcom/google/photos/vision/barhopper/zzae;)V

    .line 51
    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object v1

    check-cast v1, Lcom/google/photos/vision/barhopper/zzc;

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x5

    const/4 v3, 0x0

    goto :goto_7

    .line 52
    :cond_d
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzt()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 53
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzh()Lcom/google/photos/vision/barhopper/zzy;

    move-result-object v3

    .line 54
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    .line 55
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzy;->zzf()I

    move-result v9

    add-int/2addr v9, v8

    .line 56
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzy;->zzc()Ljava/lang/String;

    move-result-object v10

    .line 57
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzy;->zze()Ljava/lang/String;

    move-result-object v11

    .line 58
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzy;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v9, v10, v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v7

    goto :goto_9

    :cond_e
    move-object/from16 v23, v4

    .line 59
    :goto_9
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzv()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 60
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    move-result-object v3

    .line 61
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;->zzd()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v9, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;-><init>(ILjava/lang/String;)V

    move-object/from16 v24, v7

    goto :goto_a

    :cond_f
    move-object/from16 v24, v4

    .line 62
    :goto_a
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzw()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 63
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzj()Lcom/google/photos/vision/barhopper/zzag;

    move-result-object v3

    .line 64
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzag;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzag;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v9, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v7

    goto :goto_b

    :cond_10
    move-object/from16 v25, v4

    .line 65
    :goto_b
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzy()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 66
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzl()Lcom/google/photos/vision/barhopper/zzao;

    move-result-object v3

    .line 67
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;

    .line 68
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzao;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzao;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzao;->zze()I

    move-result v3

    add-int/2addr v3, v8

    invoke-direct {v7, v9, v10, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v26, v7

    goto :goto_c

    :cond_11
    move-object/from16 v26, v4

    .line 69
    :goto_c
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzx()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 70
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzk()Lcom/google/photos/vision/barhopper/zzaj;

    move-result-object v3

    .line 71
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzaj;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzaj;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v7, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move-object/from16 v27, v4

    .line 72
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzu()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 73
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzi()Lcom/google/photos/vision/barhopper/zzac;

    move-result-object v3

    .line 74
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzac;->zza()D

    move-result-wide v9

    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzac;->zzb()D

    move-result-wide v11

    invoke-direct {v4, v9, v10, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;-><init>(DD)V

    move-object/from16 v28, v4

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v28, v3

    .line 75
    :goto_d
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzq()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 76
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzd()Lcom/google/photos/vision/barhopper/zzp;

    move-result-object v3

    .line 77
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    .line 78
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzp;->zzj()Ljava/lang/String;

    move-result-object v30

    .line 79
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzp;->zze()Ljava/lang/String;

    move-result-object v31

    .line 80
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzp;->zzf()Ljava/lang/String;

    move-result-object v32

    .line 81
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzp;->zzh()Ljava/lang/String;

    move-result-object v33

    .line 82
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzp;->zzi()Ljava/lang/String;

    move-result-object v34

    .line 83
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzp;->zzb()Lcom/google/photos/vision/barhopper/zzn;

    move-result-object v7

    .line 84
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzn()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 85
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzv()Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_14
    const/4 v9, 0x0

    :goto_e
    const-string v10, "DTSTART:([0-9TZ]*)"

    .line 86
    invoke-static {v7, v9, v10}, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zze(Lcom/google/photos/vision/barhopper/zzn;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    move-result-object v35

    .line 87
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzp;->zza()Lcom/google/photos/vision/barhopper/zzn;

    move-result-object v3

    .line 88
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzn()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 89
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzv()Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_15
    const/4 v7, 0x0

    :goto_f
    const-string v9, "DTEND:([0-9TZ]*)"

    .line 90
    invoke-static {v3, v7, v9}, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zze(Lcom/google/photos/vision/barhopper/zzn;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    move-result-object v36

    move-object/from16 v29, v4

    invoke-direct/range {v29 .. v36}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;)V

    goto :goto_10

    :cond_16
    const/4 v3, 0x0

    move-object/from16 v29, v3

    .line 91
    :goto_10
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzr()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 92
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zze()Lcom/google/photos/vision/barhopper/zzr;

    move-result-object v3

    .line 93
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    .line 94
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzr;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 95
    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzd()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzi()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzh()Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzc()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzf()Ljava/lang/String;

    move-result-object v35

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zze()Ljava/lang/String;

    move-result-object v36

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd;->zzj()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v30, v9

    .line 96
    invoke-direct/range {v30 .. v37}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v31, v9

    goto :goto_11

    :cond_17
    const/4 v7, 0x0

    move-object/from16 v31, v7

    .line 97
    :goto_11
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzr;->zzd()Ljava/lang/String;

    move-result-object v32

    .line 98
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzr;->zze()Ljava/lang/String;

    move-result-object v33

    .line 99
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzr;->zzi()Ljava/util/List;

    move-result-object v7

    .line 100
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v7, 0x0

    move-object/from16 v34, v7

    goto :goto_13

    .line 101
    :cond_18
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    const/4 v10, 0x0

    .line 102
    :goto_12
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_19

    .line 103
    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    .line 104
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;->zzd()I

    move-result v12

    add-int/2addr v12, v8

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;-><init>(ILjava/lang/String;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_19
    move-object/from16 v34, v9

    .line 105
    :goto_13
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzr;->zzh()Ljava/util/List;

    move-result-object v7

    .line 106
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v7, 0x0

    move-object/from16 v35, v7

    goto :goto_15

    .line 107
    :cond_1a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    const/4 v10, 0x0

    .line 108
    :goto_14
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1b

    .line 109
    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    .line 110
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/photos/vision/barhopper/zzy;

    invoke-virtual {v12}, Lcom/google/photos/vision/barhopper/zzy;->zzf()I

    move-result v12

    add-int/2addr v12, v8

    .line 111
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/photos/vision/barhopper/zzy;

    invoke-virtual {v8}, Lcom/google/photos/vision/barhopper/zzy;->zzc()Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/photos/vision/barhopper/zzy;

    invoke-virtual {v13}, Lcom/google/photos/vision/barhopper/zzy;->zze()Ljava/lang/String;

    move-result-object v13

    .line 113
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/photos/vision/barhopper/zzy;

    invoke-virtual {v14}, Lcom/google/photos/vision/barhopper/zzy;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v8, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v8, -0x1

    goto :goto_14

    :cond_1b
    move-object/from16 v35, v9

    .line 114
    :goto_15
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzr;->zzj()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v36, v7

    check-cast v36, [Ljava/lang/String;

    .line 115
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzr;->zzf()Ljava/util/List;

    move-result-object v3

    .line 116
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v3, 0x0

    move-object/from16 v37, v3

    goto :goto_17

    .line 117
    :cond_1c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    const/4 v8, 0x0

    .line 118
    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1d

    .line 119
    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    .line 120
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb;->zzc()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 121
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb;->zzb()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;-><init>(I[Ljava/lang/String;)V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_1d
    move-object/from16 v37, v7

    :goto_17
    move-object/from16 v30, v4

    .line 122
    invoke-direct/range {v30 .. v37}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;)V

    goto :goto_18

    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v30, v3

    .line 123
    :goto_18
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzs()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 124
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzf()Lcom/google/photos/vision/barhopper/zzt;

    move-result-object v3

    .line 125
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    .line 126
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzi()Ljava/lang/String;

    move-result-object v32

    .line 127
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzk()Ljava/lang/String;

    move-result-object v33

    .line 128
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzq()Ljava/lang/String;

    move-result-object v34

    .line 129
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzo()Ljava/lang/String;

    move-result-object v35

    .line 130
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzl()Ljava/lang/String;

    move-result-object v36

    .line 131
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zze()Ljava/lang/String;

    move-result-object v37

    .line 132
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzc()Ljava/lang/String;

    move-result-object v38

    .line 133
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzd()Ljava/lang/String;

    move-result-object v39

    .line 134
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzf()Ljava/lang/String;

    move-result-object v40

    .line 135
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzp()Ljava/lang/String;

    move-result-object v41

    .line 136
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzm()Ljava/lang/String;

    move-result-object v42

    .line 137
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzj()Ljava/lang/String;

    move-result-object v43

    .line 138
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzh()Ljava/lang/String;

    move-result-object v44

    .line 139
    invoke-virtual {v3}, Lcom/google/photos/vision/barhopper/zzt;->zzn()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v31, v4

    invoke-direct/range {v31 .. v45}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v31, v3

    .line 140
    :goto_19
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;

    .line 141
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzz()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v7, 0x4

    packed-switch v4, :pswitch_data_0

    const/4 v4, -0x1

    goto :goto_1a

    :pswitch_0
    const/16 v4, 0x1000

    goto :goto_1a

    :pswitch_1
    const/16 v4, 0x800

    goto :goto_1a

    :pswitch_2
    const/16 v4, 0x400

    goto :goto_1a

    :pswitch_3
    const/16 v4, 0x200

    goto :goto_1a

    :pswitch_4
    const/16 v4, 0x100

    goto :goto_1a

    :pswitch_5
    const/16 v4, 0x80

    goto :goto_1a

    :pswitch_6
    const/16 v4, 0x40

    goto :goto_1a

    :pswitch_7
    const/16 v4, 0x20

    goto :goto_1a

    :pswitch_8
    const/16 v4, 0x10

    goto :goto_1a

    :pswitch_9
    const/16 v4, 0x8

    goto :goto_1a

    :pswitch_a
    move/from16 v17, v7

    goto :goto_1b

    :pswitch_b
    const/4 v4, 0x2

    goto :goto_1a

    :pswitch_c
    const/4 v4, 0x1

    :goto_1a
    move/from16 v17, v4

    goto :goto_1b

    :pswitch_d
    const/16 v17, 0x0

    .line 142
    :goto_1b
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzn()Ljava/lang/String;

    move-result-object v18

    .line 143
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzn()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzv()Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    :cond_20
    const/4 v4, 0x0

    :goto_1c
    move-object/from16 v19, v4

    .line 144
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzm()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v4

    .line 145
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v8

    if-nez v8, :cond_21

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzd:[B

    move-object/from16 v20, v4

    goto :goto_1d

    .line 146
    :cond_21
    new-array v9, v8, [B

    const/4 v10, 0x0

    .line 147
    invoke-virtual {v4, v9, v10, v10, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zze([BIII)V

    move-object/from16 v20, v9

    .line 148
    :goto_1d
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzo()Ljava/util/List;

    move-result-object v4

    .line 149
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_22

    const/4 v4, 0x0

    move-object/from16 v21, v4

    goto :goto_1f

    .line 150
    :cond_22
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/graphics/Point;

    const/4 v9, 0x0

    .line 151
    :goto_1e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_23

    new-instance v10, Landroid/graphics/Point;

    .line 152
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual {v11}, Lcom/google/photos/vision/barhopper/zzae;->zza()I

    move-result v11

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/photos/vision/barhopper/zzae;

    invoke-virtual {v12}, Lcom/google/photos/vision/barhopper/zzae;->zzb()I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_23
    move-object/from16 v21, v8

    .line 153
    :goto_1f
    invoke-virtual {v1}, Lcom/google/photos/vision/barhopper/zzc;->zzA()I

    move-result v1

    const/4 v8, -0x1

    add-int/2addr v1, v8

    packed-switch v1, :pswitch_data_1

    const/16 v22, 0x0

    goto :goto_21

    :pswitch_e
    const/16 v1, 0xc

    goto :goto_20

    :pswitch_f
    const/16 v1, 0xb

    goto :goto_20

    :pswitch_10
    const/16 v1, 0xa

    goto :goto_20

    :pswitch_11
    const/16 v1, 0x9

    goto :goto_20

    :pswitch_12
    const/16 v1, 0x8

    goto :goto_20

    :pswitch_13
    const/4 v1, 0x7

    goto :goto_20

    :pswitch_14
    const/4 v1, 0x6

    goto :goto_20

    :pswitch_15
    const/4 v1, 0x5

    goto :goto_20

    :pswitch_16
    move/from16 v22, v7

    goto :goto_21

    :pswitch_17
    const/4 v1, 0x3

    goto :goto_20

    :pswitch_18
    const/4 v1, 0x2

    goto :goto_20

    :pswitch_19
    const/4 v1, 0x1

    :goto_20
    move/from16 v22, v1

    :goto_21
    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v31}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;-><init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;)V

    .line 154
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v3, 0x0

    goto/16 :goto_5

    .line 155
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    .line 156
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_27

    :cond_25
    move-object/from16 v0, p3

    .line 157
    move-object/from16 v1, p0

    check-cast v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;

    .line 158
    iget-object v2, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/google/android/libraries/barhopper/BarhopperV3;->close()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    .line 159
    :cond_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_27

    :cond_27
    move-object/from16 v0, p3

    .line 160
    move-object/from16 v1, p0

    check-cast v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;

    .line 161
    iget-object v3, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    if-eqz v3, :cond_28

    goto/16 :goto_26

    :cond_28
    new-instance v3, Lcom/google/android/libraries/barhopper/BarhopperV3;

    invoke-direct {v3}, Lcom/google/android/libraries/barhopper/BarhopperV3;-><init>()V

    iput-object v3, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    .line 162
    invoke-static {}, Lcom/google/barhopper/deeplearning/zzi;->zza()Lcom/google/barhopper/deeplearning/zzh;

    move-result-object v3

    .line 163
    invoke-static {}, Lcom/google/barhopper/deeplearning/zzf;->zza()Lcom/google/barhopper/deeplearning/zze;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_22
    if-ge v7, v6, :cond_2f

    .line 164
    invoke-static {}, Lcom/google/barhopper/deeplearning/zzc;->zza()Lcom/google/barhopper/deeplearning/zzb;

    move-result-object v9

    .line 165
    iget-boolean v10, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v10, :cond_29

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    goto :goto_23

    :cond_29
    const/4 v10, 0x0

    :goto_23
    iget-object v11, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 166
    check-cast v11, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v11, v5}, Lcom/google/barhopper/deeplearning/zzc;->zzf(Lcom/google/barhopper/deeplearning/zzc;I)V

    .line 167
    iget-boolean v11, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v11, :cond_2a

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    iput-boolean v10, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_2a
    iget-object v10, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 168
    check-cast v10, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v10, v5}, Lcom/google/barhopper/deeplearning/zzc;->zzc(Lcom/google/barhopper/deeplearning/zzc;I)V

    const/4 v10, 0x0

    .line 169
    :goto_24
    sget-object v11, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zza:[I

    .line 170
    aget v11, v11, v7

    if-ge v10, v11, :cond_2d

    sget-object v11, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zzb:[[D

    .line 171
    aget-object v11, v11, v8

    const/4 v12, 0x0

    aget-wide v13, v11, v12

    const-wide/high16 v16, 0x4074000000000000L    # 320.0

    mul-double v13, v13, v16

    double-to-float v12, v13

    const/4 v13, 0x1

    .line 172
    aget-wide v13, v11, v13

    .line 173
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v11, v13

    div-float v13, v12, v11

    .line 174
    iget-boolean v14, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v14, :cond_2b

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v14, 0x0

    iput-boolean v14, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    goto :goto_25

    :cond_2b
    const/4 v14, 0x0

    :goto_25
    iget-object v15, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 175
    check-cast v15, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v15, v13}, Lcom/google/barhopper/deeplearning/zzc;->zzd(Lcom/google/barhopper/deeplearning/zzc;F)V

    mul-float/2addr v12, v11

    .line 176
    iget-boolean v11, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v11, :cond_2c

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    iput-boolean v14, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_2c
    iget-object v11, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 177
    check-cast v11, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v11, v12}, Lcom/google/barhopper/deeplearning/zzc;->zze(Lcom/google/barhopper/deeplearning/zzc;F)V

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    :cond_2d
    add-int/2addr v5, v5

    .line 178
    iget-boolean v10, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v10, :cond_2e

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_2e
    iget-object v10, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 179
    check-cast v10, Lcom/google/barhopper/deeplearning/zzf;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object v9

    check-cast v9, Lcom/google/barhopper/deeplearning/zzc;

    invoke-static {v10, v9}, Lcom/google/barhopper/deeplearning/zzf;->zzc(Lcom/google/barhopper/deeplearning/zzf;Lcom/google/barhopper/deeplearning/zzc;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_22

    .line 180
    :cond_2f
    iget-boolean v5, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v5, :cond_30

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_30
    iget-object v5, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 181
    check-cast v5, Lcom/google/barhopper/deeplearning/zzi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object v4

    check-cast v4, Lcom/google/barhopper/deeplearning/zzf;

    invoke-static {v5, v4}, Lcom/google/barhopper/deeplearning/zzi;->zzc(Lcom/google/barhopper/deeplearning/zzi;Lcom/google/barhopper/deeplearning/zzf;)V

    .line 182
    :try_start_0
    iget-object v4, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zzc:Landroid/content/Context;

    .line 183
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "mlkit_barcode_models/barcode_ssd_mobilenet_v1_dmp25_quant.tflite"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zzc:Landroid/content/Context;

    .line 184
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "mlkit_barcode_models/oned_auto_regressor_mobile.tflite"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v6, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zzc:Landroid/content/Context;

    .line 185
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "mlkit_barcode_models/oned_feature_extractor_mobile.tflite"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/bundled/internal/zza;->zze:Lcom/google/android/libraries/barhopper/BarhopperV3;

    .line 186
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zza()Lcom/google/barhopper/deeplearning/zzk;

    move-result-object v2

    .line 188
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzt(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v7

    .line 189
    iget-boolean v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v8, :cond_31

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_31
    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 190
    check-cast v8, Lcom/google/barhopper/deeplearning/zzi;

    invoke-static {v8, v7}, Lcom/google/barhopper/deeplearning/zzi;->zzd(Lcom/google/barhopper/deeplearning/zzi;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    .line 191
    iget-boolean v7, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v7, :cond_32

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_32
    iget-object v7, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 192
    check-cast v7, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object v3

    check-cast v3, Lcom/google/barhopper/deeplearning/zzi;

    invoke-static {v7, v3}, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzc(Lcom/google/barhopper/deeplearning/BarhopperV3Options;Lcom/google/barhopper/deeplearning/zzi;)V

    .line 193
    invoke-static {}, Lcom/google/barhopper/deeplearning/zzn;->zza()Lcom/google/barhopper/deeplearning/zzm;

    move-result-object v3

    .line 194
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzt(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v7

    .line 195
    iget-boolean v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v8, :cond_33

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_33
    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 196
    check-cast v8, Lcom/google/barhopper/deeplearning/zzn;

    invoke-static {v8, v7}, Lcom/google/barhopper/deeplearning/zzn;->zzd(Lcom/google/barhopper/deeplearning/zzn;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    .line 197
    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzt(Ljava/io/InputStream;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v7

    .line 198
    iget-boolean v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v8, :cond_34

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_34
    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 199
    check-cast v8, Lcom/google/barhopper/deeplearning/zzn;

    invoke-static {v8, v7}, Lcom/google/barhopper/deeplearning/zzn;->zzc(Lcom/google/barhopper/deeplearning/zzn;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    .line 200
    iget-boolean v7, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    if-eqz v7, :cond_35

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzo()V

    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzb:Z

    :cond_35
    iget-object v7, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    .line 201
    check-cast v7, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object v3

    check-cast v3, Lcom/google/barhopper/deeplearning/zzn;

    invoke-static {v7, v3}, Lcom/google/barhopper/deeplearning/BarhopperV3Options;->zzd(Lcom/google/barhopper/deeplearning/BarhopperV3Options;Lcom/google/barhopper/deeplearning/zzn;)V

    .line 202
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    move-result-object v2

    check-cast v2, Lcom/google/barhopper/deeplearning/BarhopperV3Options;

    .line 203
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/barhopper/BarhopperV3;->create(Lcom/google/barhopper/deeplearning/BarhopperV3Options;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_36

    .line 204
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_36
    if-eqz v5, :cond_37

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_37
    if-eqz v4, :cond_38

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 205
    :cond_38
    :goto_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_27
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_39

    .line 206
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    :cond_39
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v5, :cond_3a

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    :cond_3a
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz v4, :cond_3b

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    :cond_3b
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to open Barcode models"

    .line 208
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
