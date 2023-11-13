.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzjy;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic zza:Lcom/google/android/datatransport/runtime/TransportFactoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/TransportFactoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjy;->zza:Lcom/google/android/datatransport/runtime/TransportFactoryImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjy;->zza:Lcom/google/android/datatransport/runtime/TransportFactoryImpl;

    .line 2
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v1, "proto"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/google/mlkit/vision/common/internal/zzb;->zza$1:Lcom/google/mlkit/vision/common/internal/zzb;

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;->getTransport(Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object p0

    return-object p0
.end method
