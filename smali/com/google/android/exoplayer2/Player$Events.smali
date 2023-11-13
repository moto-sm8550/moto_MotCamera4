.class public final Lcom/google/android/exoplayer2/Player$Events;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# instance fields
.field public final flags:Lcom/google/android/exoplayer2/util/FlagSet;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    return-void
.end method


# virtual methods
.method public final varargs containsAny([I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/Player$Events;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Player$Events;

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Events;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->hashCode()I

    move-result p0

    return p0
.end method
