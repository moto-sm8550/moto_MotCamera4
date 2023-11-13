.class public final Lcom/motorola/camera/ui/widgets/gl/VboManager;
.super Ljava/lang/Object;
.source "VboManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;
    }
.end annotation


# instance fields
.field public final mVboMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/VboManager;->mVboMap:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public final deleteVbo(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/VboManager;->mVboMap:Ljava/util/EnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteVbo(I)V

    :cond_0
    return-void
.end method

.method public final getCustomVbo([F)I
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    const/4 p0, 0x1

    new-array v0, p0, [I

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const-string p0, "glGenBuffers"

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget p0, v0, v1

    .line 4
    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->setVboFloats(I[F)V

    return p0
.end method

.method public final getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/VboManager;->mVboMap:Ljava/util/EnumMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final load()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/VboManager;->mVboMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->values()[Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 3
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/VboManager;->mVboMap:Ljava/util/EnumMap;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object v6

    .line 4
    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    const/4 v7, 0x1

    new-array v8, v7, [I

    .line 5
    invoke-static {v7, v8, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const-string v7, "glGenBuffers"

    .line 6
    invoke-static {v7}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v7, v8, v2

    .line 7
    invoke-static {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->setVboFloats(I[F)V

    .line 8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
