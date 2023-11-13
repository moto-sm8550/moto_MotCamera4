.class public final Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.0.0"


# static fields
.field public static final zza:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field public final zzb:Ljava/util/LinkedList;

.field public zzc:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "StreamingFormatChecker"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zzb:Ljava/util/LinkedList;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zzc:J

    return-void
.end method


# virtual methods
.method public final check(Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 7

    .line 1
    iget p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zzb:Ljava/util/LinkedList;

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zzb:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    iget-object p1, p0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zzb:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zzb:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zzb:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {p1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const-string v3, "null reference"

    .line 8
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1388

    cmp-long p1, v3, v5

    if-gez p1, :cond_3

    iget-wide v3, p0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zzc:J

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    sub-long v3, v0, v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    .line 10
    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zzc:J

    sget-object p0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 11
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->canLog(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ML Kit has detected that you seem to pass camera frames to the detector as a Bitmap object. This is inefficient. Please use YUV_420_888 format for camera2 API or NV21 format for (legacy) camera API and directly pass down the byte array to ML Kit."

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamingFormatChecker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
