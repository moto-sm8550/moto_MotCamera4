.class public final Landroidx/collection/ArraySet$1;
.super Landroidx/collection/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/MapCollections<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/collection/ArraySet;


# direct methods
.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 0

    iput-object p1, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    invoke-direct {p0}, Landroidx/collection/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method public final colClear()V
    .locals 0

    iget-object p0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    return-void
.end method

.method public final colGetEntry(II)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    iget-object p0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final colGetMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final colGetSize()I
    .locals 0

    iget-object p0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    iget p0, p0, Landroidx/collection/ArraySet;->mSize:I

    return p0
.end method

.method public final colIndexOfKey(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final colIndexOfValue(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final colRemoveAt(I)V
    .locals 0

    iget-object p0, p0, Landroidx/collection/ArraySet$1;->this$0:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method public final colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
