.class public final Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;
.super Ljava/lang/Object;
.source "ShaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;
    }
.end annotation


# instance fields
.field public final mShaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/motorola/camera/ui/widgets/gl/Shader;",
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
    new-instance v0, Landroid/util/SparseArray;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;->values()[Lcom/motorola/camera/ui/widgets/gl/ShaderFactory$Shaders;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;->mShaders:Landroid/util/SparseArray;

    return-void
.end method
