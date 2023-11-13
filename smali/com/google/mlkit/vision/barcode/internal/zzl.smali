.class public final Lcom/google/mlkit/vision/barcode/internal/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/internal/zzj;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcr;


# instance fields
.field public zzb:Z

.field public zzc:Z

.field public zzd:Z

.field public final zze:Landroid/content/Context;

.field public final zzf:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

.field public zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.google.android.gms.vision.barcode"

    const-string v1, "com.google.android.gms.tflite_dynamite"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcr;

    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzf:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    return-void
.end method

.method public static zzd(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.google.mlkit.dynamite.barcode"

    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc()Z

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-boolean v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzb:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zza()Landroid/os/Parcel;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zzc(ILandroid/os/Parcel;)V

    .line 6
    iput-boolean v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzb:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to init barcode scanner."

    invoke-direct {p1, v0, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget v6, p1, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    .line 9
    iget v5, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/16 p0, 0x23

    const/4 v2, 0x0

    if-eq v5, p0, :cond_7

    .line 10
    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;

    .line 11
    iget v7, p1, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    .line 12
    iget v4, p1, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    .line 13
    invoke-static {v4}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->convertToMVRotation(I)I

    move-result v8

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;-><init>(IIIIJ)V

    .line 15
    sget-object v4, Lcom/google/mlkit/vision/common/internal/ImageUtils;->zzb:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 16
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget v4, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    const/16 v5, 0x11

    const/4 v6, 0x3

    if-eq v4, v5, :cond_4

    if-eq v4, p0, :cond_3

    const p0, 0x32315659

    if-ne v4, p0, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    .line 19
    iget p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/16 v0, 0x25

    const-string v1, "Unsupported image format: "

    .line 20
    invoke-static {v0, v1, p1}, Lbd$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1, v6}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 22
    :cond_3
    new-instance p0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p0, v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 23
    :cond_4
    :goto_1
    iget-object p0, p1, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 24
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    .line 26
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zza()Landroid/os/Parcel;

    move-result-object p1

    .line 27
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->zzb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 28
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x0

    .line 29
    invoke-virtual {v11, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpg;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    invoke-virtual {v0, v6, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    .line 31
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    new-instance p0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;

    .line 36
    new-instance v1, Lcom/google/mlkit/vision/barcode/common/Barcode;

    new-instance v2, Lcom/google/mlkit/vision/barcode/internal/zzk;

    invoke-direct {v2, v0}, Lcom/google/mlkit/vision/barcode/internal/zzk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;)V

    .line 37
    invoke-direct {v1, v2}, Lcom/google/mlkit/vision/barcode/common/Barcode;-><init>(Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;)V

    .line 38
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object p0

    :catch_1
    move-exception p0

    .line 39
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to run barcode scanner."

    invoke-direct {p1, v0, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 40
    :cond_6
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v2

    .line 41
    :cond_7
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v2
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zza()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zzc(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DecoupledBarcodeScanner"

    const-string v2, "Failed to release barcode scanner."

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzb:Z

    :cond_0
    return-void
.end method

.method public final zzc()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Z

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/zzg;

    const-string v1, "com.google.mlkit.dynamite.barcode"

    const-string v2, "com.google.mlkit.vision.barcode.bundled.internal.ThickBarcodeScannerCreator"

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create thick barcode scanner."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 5
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to load the bundled barcode module."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Z

    iget-object v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Landroid/content/Context;

    sget-object v3, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcr;

    .line 7
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdb;

    move-result-object v3

    .line 8
    :goto_0
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/zzf;

    invoke-static {v2, v5, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :cond_2
    move v0, v1

    :catch_2
    if-nez v0, :cond_4

    .line 10
    iget-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Landroid/content/Context;

    const-string v2, "barcode"

    const-string/jumbo v3, "tflite_dynamite"

    .line 11
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;

    move-result-object v2

    .line 12
    invoke-static {v0, v2}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd:Z

    :cond_3
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;->zzB:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    invoke-static {p0, v0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;)V

    .line 14
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const/16 v0, 0xe

    const-string v1, "Waiting for the barcode module to be downloaded. Please wait."

    invoke-direct {p0, v1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 15
    :cond_4
    :try_start_2
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/zzf;

    const-string v1, "com.google.android.gms.vision.barcode"

    const-string v2, "com.google.android.gms.vision.barcode.mlkit.BarcodeScannerCreator"

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    invoke-static {v0, v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;)V

    iget-boolean p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Z

    return p0

    :catch_3
    move-exception v0

    .line 19
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;->zzC:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    invoke-static {p0, v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;)V

    .line 21
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create thin barcode scanner."

    invoke-direct {p0, v1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final zze(Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoz;->$r8$clinit:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator"

    .line 3
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 4
    instance-of p3, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpa;

    if-eqz p3, :cond_1

    .line 5
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpa;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoy;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoy;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Landroid/content/Context;

    .line 7
    new-instance p3, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p3, p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzop;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzf:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    .line 9
    iget p0, p0, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    .line 10
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzop;-><init>(I)V

    .line 11
    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpa;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzop;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzox;

    move-result-object p0

    return-object p0
.end method
