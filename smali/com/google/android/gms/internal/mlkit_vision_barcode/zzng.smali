.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

.field public final synthetic zzc:Ljava/lang/Object;

.field public final synthetic zzd:J

.field public final synthetic zze:Lcom/google/mlkit/vision/barcode/internal/zzg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;Ljava/lang/Object;JLcom/google/mlkit/vision/barcode/internal/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;->zzc:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;->zzd:J

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;->zze:Lcom/google/mlkit/vision/barcode/internal/zzg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;->zzbc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;->zzc:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;->zzd:J

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzng;->zze:Lcom/google/mlkit/vision/barcode/internal/zzg;

    .line 1
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzm:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzm:Ljava/util/HashMap;

    .line 2
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;

    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbh;-><init>()V

    .line 3
    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzm:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzch;

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzo(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;J)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzl:Ljava/util/HashMap;

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzq()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    .line 10
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzch;->zzc(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;

    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;-><init>()V

    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v8, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v8, v10

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-long v10, v7

    div-long/2addr v8, v10

    .line 14
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 15
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide v9, 0x7fffffffffffffffL

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzc:Ljava/lang/Long;

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 16
    invoke-static {v4, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zza(Ljava/util/List;D)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 17
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zza:Ljava/lang/Long;

    const-wide v7, 0x4052c00000000000L    # 75.0

    .line 18
    invoke-static {v4, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zza(Ljava/util/List;D)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 19
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzf:Ljava/lang/Long;

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 20
    invoke-static {v4, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zza(Ljava/util/List;D)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 21
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zze:Ljava/lang/Long;

    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    .line 22
    invoke-static {v4, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zza(Ljava/util/List;D)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 23
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzd:Ljava/lang/Long;

    const-wide/16 v7, 0x0

    .line 24
    invoke-static {v4, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zza(Ljava/util/List;D)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 25
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzb:Ljava/lang/Long;

    .line 26
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;)V

    .line 27
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 28
    iget-object v6, p0, Lcom/google/mlkit/vision/barcode/internal/zzg;->zza:Ljava/lang/Object;

    check-cast v6, Lcom/google/mlkit/vision/barcode/internal/zzi;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdy;

    .line 29
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;

    invoke-direct {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;-><init>()V

    iget-boolean v6, v6, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    .line 30
    :goto_2
    iput-object v6, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzki;

    .line 31
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdv;

    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdv;-><init>()V

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v9, 0x7fffffff

    and-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdv;->zzb:Ljava/lang/Integer;

    .line 34
    iput-object v3, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdy;

    .line 35
    iput-object v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjs;

    .line 36
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzea;

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzea;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdv;)V

    .line 37
    iput-object v3, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzea;

    .line 38
    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkl;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    move-result-object v3

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkk;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznm;->zzm:Ljava/util/HashMap;

    .line 40
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method
