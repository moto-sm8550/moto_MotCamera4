.class public abstract Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field public final mSpanGroupIndexCache:Landroid/util/SparseIntArray;

.field public final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final getSpanGroupIndex(II)I
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v0, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, p0

    goto :goto_1

    :cond_0
    if-le v1, p2, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v1, v3

    if-le v1, p2, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    return v2
.end method

.method public final invalidateSpanGroupIndexCache()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanGroupIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final invalidateSpanIndexCache()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
