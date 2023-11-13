.class public Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;
.super Ljava/lang/Object;
.source "AtlasMap.java"


# instance fields
.field public mAtlasMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;",
            ">;"
        }
    .end annotation
.end field

.field public mSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final containsKey(I)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasMap;->mAtlasMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
