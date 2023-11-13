.class public final Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;
.super Ljava/lang/Object;
.source "ProgramUniform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;
    }
.end annotation


# instance fields
.field public final mLocation:I

.field public final mName:Ljava/lang/String;

.field public final mSize:I

.field public final mType:I


# direct methods
.method public constructor <init>(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v12, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x8b87

    .line 2
    invoke-static {v12, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->getProgramiv(II[I)V

    new-array v13, v1, [I

    new-array v14, v1, [I

    const/4 v15, 0x0

    aget v11, v2, v15

    .line 3
    new-array v10, v11, [B

    new-array v4, v1, [I

    aget v3, v2, v15

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v6, v14

    move-object v8, v13

    move-object/from16 p2, v10

    move v15, v11

    move/from16 v11, v16

    .line 4
    invoke-static/range {v1 .. v11}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    const-string v1, "glGetActiveUniform"

    .line 5
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/String;

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v15, :cond_1

    move-object/from16 v2, p2

    .line 7
    aget-byte v3, v2, v11

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    move-object/from16 p2, v2

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    move v11, v15

    :goto_1
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3, v11}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mName:Ljava/lang/String;

    .line 9
    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    const-string v2, "glGetUniformLocation"

    .line 10
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 11
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mLocation:I

    aget v1, v13, v3

    .line 12
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mType:I

    aget v1, v14, v3

    .line 13
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mSize:I

    return-void
.end method


# virtual methods
.method public final checkUniformAssignment(II)V
    .locals 3

    .line 1
    rem-int v0, p1, p2

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mSize:I

    div-int p2, p1, p2

    if-ne v0, p2, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Size mismatch: Cannot assign "

    const-string v1, " values to uniform \'"

    .line 4
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mName:Ljava/lang/String;

    const-string v0, "\'!"

    .line 6
    invoke-static {p1, p0, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Size mismatch: Attempting to assign values of size "

    const-string v2, " to uniform \'"

    .line 9
    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (must be multiple of "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
