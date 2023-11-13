.class public final Lcom/google/android/exoplayer2/Player$Commands$Builder;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player$Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    return-void
.end method


# virtual methods
.method public final addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    :cond_0
    return-object p0
.end method

.method public final build()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/Player$Commands;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->build()Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/Player$Commands;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;)V

    return-object v0
.end method
