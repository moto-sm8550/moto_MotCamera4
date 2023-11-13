.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.2"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

.field public final zzc:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzb:Ljava/nio/charset/Charset;

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zza:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zzb()Z

    move-result v0

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 16
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    move-result-object v2

    .line 17
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;)V

    goto :goto_1

    .line 18
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    if-eqz v1, :cond_3

    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    move-result-object v2

    .line 21
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;)V

    :goto_1
    move-object v0, v3

    goto :goto_2

    .line 22
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 24
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zzc()I

    move-result v0

    if-ne v0, v4, :cond_5

    move v1, v4

    :cond_5
    if-eqz v1, :cond_6

    .line 25
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    .line 26
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;

    .line 27
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 29
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    .line 30
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object v0

    goto :goto_2

    .line 31
    :cond_6
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    .line 32
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;

    .line 33
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;

    const/4 v6, 0x0

    .line 34
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    .line 35
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object v0

    goto :goto_2

    .line 36
    :cond_7
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zzc()I

    move-result v0

    if-ne v0, v4, :cond_8

    move v1, v4

    :cond_8
    if-eqz v1, :cond_a

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    .line 38
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    .line 39
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    .line 40
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    if-eqz v6, :cond_9

    .line 41
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    move-object v3, v0

    .line 42
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object v0

    goto :goto_2

    .line 43
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_a
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    .line 45
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    .line 46
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgd;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;

    const/4 v6, 0x0

    .line 47
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    .line 48
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzez;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object v0

    .line 49
    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgb;

    if-nez p0, :cond_b

    goto :goto_3

    :cond_b
    return-object p0

    :cond_c
    :goto_3
    return-object v0
.end method
