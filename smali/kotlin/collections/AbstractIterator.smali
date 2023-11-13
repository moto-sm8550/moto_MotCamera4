.class public abstract Lkotlin/collections/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 6

    .line 1
    iget v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_8

    .line 2
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    .line 3
    iput v2, p0, Lkotlin/collections/AbstractIterator;->state:I

    .line 4
    move-object v0, p0

    check-cast v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    .line 5
    :goto_1
    iget-object v2, v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/io/FileTreeWalk$WalkState;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_3

    .line 6
    :cond_1
    invoke-virtual {v2}, Lkotlin/io/FileTreeWalk$WalkState;->step()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    .line 7
    iget-object v2, v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_2
    iget-object v2, v2, Lkotlin/io/FileTreeWalk$WalkState;->root:Ljava/io/File;

    .line 9
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget-object v5, v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    .line 10
    iget v5, v5, Lkotlin/io/FileTreeWalk;->maxDepth:I

    if-lt v2, v5, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iget-object v2, v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->directoryState(Ljava/io/File;)Lkotlin/io/FileTreeWalk$DirectoryState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_2
    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_5

    .line 12
    iput-object v2, v0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    .line 13
    iput v1, v0, Lkotlin/collections/AbstractIterator;->state:I

    goto :goto_4

    :cond_5
    const/4 v2, 0x3

    .line 14
    iput v2, v0, Lkotlin/collections/AbstractIterator;->state:I

    .line 15
    :goto_4
    iget p0, p0, Lkotlin/collections/AbstractIterator;->state:I

    if-ne p0, v1, :cond_6

    goto :goto_5

    :cond_6
    move v1, v3

    :cond_7
    :goto_5
    return v1

    .line 16
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    .line 3
    iget-object p0, p0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
