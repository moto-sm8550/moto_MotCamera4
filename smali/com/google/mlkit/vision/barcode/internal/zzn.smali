.class public final Lcom/google/mlkit/vision/barcode/internal/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/internal/zzj;


# instance fields
.field public zza:Z

.field public final zzb:Landroid/content/Context;

.field public final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;

.field public final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

.field public zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzb:Landroid/content/Context;

    .line 2
    iget p1, p2, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;->zza:I

    .line 3
    iput p1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;->zza:I

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzc()Z

    :cond_0
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    if-eqz p0, :cond_6

    .line 2
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    .line 3
    iget v1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    .line 4
    iget v2, p1, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 5
    iget v0, p1, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    .line 6
    invoke-static {v0}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->convertToMVRotation(I)I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;-><init>(IIIJI)V

    .line 7
    :try_start_0
    iget v0, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const v1, 0x32315659

    if-ne v0, v1, :cond_1

    .line 8
    invoke-static {p1}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->convertToNv21Buffer(Lcom/google/mlkit/vision/common/InputImage;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;)[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    .line 12
    iget p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported image format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    const-string p0, "null reference"

    .line 14
    invoke-static {v3, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw v3

    .line 15
    :cond_3
    iget-object p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    .line 16
    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;)[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    move-result-object p0

    goto :goto_0

    .line 18
    :cond_4
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p1, v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->zzb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v7, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p1, 0x2

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    .line 24
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    .line 25
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    move-object p0, p1

    .line 26
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v1, p0, v2

    .line 29
    new-instance v3, Lcom/google/mlkit/vision/barcode/common/Barcode;

    new-instance v4, Lcom/google/mlkit/vision/barcode/internal/zzm;

    invoke-direct {v4, v1}, Lcom/google/mlkit/vision/barcode/internal/zzm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;)V

    .line 30
    invoke-direct {v3, v4}, Lcom/google/mlkit/vision/barcode/common/Barcode;-><init>(Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;)V

    .line 31
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object p1

    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to detect with legacy barcode detector"

    invoke-direct {p1, v0, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 33
    :cond_6
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const/16 p1, 0xe

    const-string v0, "Error initializing the legacy barcode scanner."

    invoke-direct {p0, v0, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zza()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zza;->zzc(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LegacyBarcodeScanner"

    const-string v2, "Failed to release legacy barcode detector."

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    :cond_0
    return-void
.end method

.method public final zzc()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzb:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/zzf;

    const-string v3, "com.google.android.gms.vision.dynamite"

    .line 2
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v2, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4
    sget v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;->$r8$clinit:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    .line 5
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 6
    instance-of v3, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzai;

    if-eqz v3, :cond_2

    .line 7
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzai;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzag;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzag;-><init>(Landroid/os/IBinder;)V

    move-object v0, v2

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzb:Landroid/content/Context;

    .line 9
    new-instance v3, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v3, v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 10
    iget-object v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;

    .line 11
    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzai;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzad;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaf;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "LegacyBarcodeScanner"

    const-string v2, "Request optional module download."

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzb:Landroid/content/Context;

    const-string v2, "barcode"

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzam;->zza:Lcom/google/android/gms/internal/mlkit_common/zzak;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 14
    invoke-static {v4, v3}, Lcom/moto/patternlibrary/R$layout;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 15
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/mlkit_common/zzam;->zzi([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_common/zzam;

    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/util/List;)V

    .line 17
    iput-boolean v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zza:Z

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;->zzB:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    invoke-static {p0, v0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;)V

    .line 19
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Waiting for the barcode module to be downloaded. Please wait."

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 20
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;

    invoke-static {p0, v0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to load deprecated vision dynamite module."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 23
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create legacy barcode detector."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
