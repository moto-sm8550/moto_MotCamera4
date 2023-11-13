.class public final Lcom/google/android/exoplayer2/util/FlagSet$Builder;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/FlagSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public buildCalled:Z

.field public final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final add(I)Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-object p0
.end method

.method public final build()Lcom/google/android/exoplayer2/util/FlagSet;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->buildCalled:Z

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/FlagSet;

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->flags:Landroid/util/SparseBooleanArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-object v0
.end method
