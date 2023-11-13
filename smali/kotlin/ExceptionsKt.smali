.class public final Lkotlin/ExceptionsKt;
.super Ljava/lang/Object;
.source "Exceptions.kt"


# static fields
.field public static final zza:Lkotlin/ExceptionsKt;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/ExceptionsKt;

    invoke-direct {v0}, Lkotlin/ExceptionsKt;-><init>()V

    sput-object v0, Lkotlin/ExceptionsKt;->zza:Lkotlin/ExceptionsKt;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p0, p1, :cond_0

    sget-object v0, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v0, p0, p1}, Lkotlin/internal/PlatformImplementations;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .locals 1

    .line 1
    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhd;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzds;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhe;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgi;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzda;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzda;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgh;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgq;

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzij;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfa;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfa;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgg;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgf;

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzed;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzed;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgo;

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdi;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgm;

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdf;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhn;

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzee;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzig;

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzex;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzex;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzey;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzey;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhk;

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzch;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzch;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhl;

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzec;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzec;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzho;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzef;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzef;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzei;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzei;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhp;

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzen;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzen;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhz;

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzep;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzep;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhj;

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzea;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzia;

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzer;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzer;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzib;

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzes;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzes;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 34
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzet;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzic;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzeu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzeu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzev;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzie;

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzew;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzew;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhv;

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzej;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzej;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgx;

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzel;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzel;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhs;

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzek;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzek;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhu;

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzem;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzem;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzez;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzez;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzir;

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfu;

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfs;

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzck;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzck;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfr;

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzft;

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfw;

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzco;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzco;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfv;

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfx;

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcp;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfy;

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfz;

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzga;

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcs;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcs;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgb;

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzct;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzct;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbh;

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbj;

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcf;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbi;

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzce;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzce;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgv;

    .line 59
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgj;

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaq;

    .line 61
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzap;

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgk;

    .line 63
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzas;

    .line 64
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzar;

    .line 65
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaw;

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbr;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbr;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzav;

    .line 67
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbs;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbs;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 68
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbp;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzau;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;

    .line 69
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzay;

    .line 70
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbt;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbt;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzax;

    .line 71
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzba;

    .line 72
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaz;

    .line 73
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbg;

    .line 74
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbf;

    .line 75
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbc;

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbb;

    .line 77
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzby;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzby;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbe;

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbd;

    .line 79
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzca;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzca;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfd;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfd;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzis;

    .line 81
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdz;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    .line 83
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdy;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzit;

    .line 84
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdh;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdh;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    .line 85
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfc;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfc;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzix;

    .line 86
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfb;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfb;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzja;

    .line 87
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfe;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    .line 88
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjd;

    .line 89
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    .line 90
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjb;

    .line 91
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfl;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    .line 92
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzff;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzff;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;

    .line 93
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdm;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgy;

    .line 94
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdq;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfq;

    .line 95
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzci;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzci;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgp;

    .line 96
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgw;

    .line 97
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdo;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdo;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgl;

    .line 98
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzde;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzde;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhi;

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdx;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhh;

    .line 100
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzdw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbk;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzbk;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 102
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfh;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    invoke-interface {p1, v0, p0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;

    .line 103
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfj;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfj;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzip;

    .line 104
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfi;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzfi;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzfp;

    .line 105
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcg;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcg;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzge;

    .line 106
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcw;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcw;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgd;

    .line 107
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgc;

    .line 108
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcu;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcu;

    invoke-interface {p1, p0, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
