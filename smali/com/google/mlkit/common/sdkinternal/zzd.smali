.class public final Lcom/google/mlkit/common/sdkinternal/zzd;
.super Ljava/lang/ref/PhantomReference;
.source "com.google.mlkit:common@@18.0.0"


# instance fields
.field public final zza:Ljava/util/Set;

.field public final zzb:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V
    .locals 1

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/zzb;->zza:Lcom/google/mlkit/common/sdkinternal/zzb;

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/zzd;->zza:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzd;->zzb:Ljava/lang/Runnable;

    return-void
.end method
