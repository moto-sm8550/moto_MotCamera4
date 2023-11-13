.class public final Lcom/google/gson/internal/ConstructorConstructor$5;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    check-cast p0, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-object p0
.end method
