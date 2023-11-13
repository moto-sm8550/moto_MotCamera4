.class public abstract Lcom/google/common/base/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public next:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
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
    iput v0, p0, Lcom/google/common/base/AbstractIterator;->state:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/common/base/AbstractIterator;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_c

    .line 2
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    const/4 v0, 0x3

    .line 3
    iput v2, p0, Lcom/google/common/base/AbstractIterator;->state:I

    .line 4
    move-object v2, p0

    check-cast v2, Lcom/google/common/base/Splitter$SplittingIterator;

    .line 5
    iget v4, v2, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 6
    :cond_1
    :goto_1
    iget v5, v2, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    .line 7
    move-object v7, v2

    check-cast v7, Lcom/google/common/base/Splitter$1$1;

    .line 8
    iget-object v8, v7, Lcom/google/common/base/Splitter$1$1;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object v8, v8, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Lcom/google/common/base/CharMatcher;

    iget-object v7, v7, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v8, v7, v5}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 9
    iget-object v5, v2, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 10
    iput v6, v2, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v5, 0x1

    .line 11
    iput v7, v2, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 12
    :goto_2
    iget v7, v2, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-ne v7, v4, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 13
    iput v7, v2, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 14
    iget-object v5, v2, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v7, v5, :cond_1

    .line 15
    iput v6, v2, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v4, v5, :cond_4

    .line 16
    iget-object v7, v2, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v8, v2, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-le v5, v4, :cond_5

    .line 17
    iget-object v7, v2, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v8, v2, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v9, v5, -0x1

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v9

    goto :goto_4

    .line 18
    :cond_5
    iget-boolean v7, v2, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v7, :cond_6

    if-ne v4, v5, :cond_6

    .line 19
    iget v4, v2, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_1

    .line 20
    :cond_6
    iget v7, v2, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    if-ne v7, v1, :cond_7

    .line 21
    iget-object v5, v2, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 22
    iput v6, v2, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :goto_5
    if-le v5, v4, :cond_8

    .line 23
    iget-object v6, v2, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v7, v2, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    if-eqz v6, :cond_8

    move v5, v8

    goto :goto_5

    :cond_7
    sub-int/2addr v7, v1

    .line 24
    iput v7, v2, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 25
    :cond_8
    iget-object v2, v2, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v2, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 26
    :cond_9
    iput v0, v2, Lcom/google/common/base/AbstractIterator;->state:I

    const/4 v2, 0x0

    .line 27
    :goto_6
    iput-object v2, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/String;

    .line 28
    iget v2, p0, Lcom/google/common/base/AbstractIterator;->state:I

    if-eq v2, v0, :cond_a

    .line 29
    iput v1, p0, Lcom/google/common/base/AbstractIterator;->state:I

    goto :goto_7

    :cond_a
    move v1, v3

    :cond_b
    :goto_7
    return v1

    .line 30
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/base/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/common/base/AbstractIterator;->state:I

    .line 3
    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/common/base/AbstractIterator;->next:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
