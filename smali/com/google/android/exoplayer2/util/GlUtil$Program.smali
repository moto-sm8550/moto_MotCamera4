.class public final Lcom/google/android/exoplayer2/util/GlUtil$Program;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Program"
.end annotation


# instance fields
.field public final attributeByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/GlUtil$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public final attributes:[Lcom/google/android/exoplayer2/util/GlUtil$Attribute;

.field public final programId:I

.field public final uniformByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/GlUtil$Uniform;",
            ">;"
        }
    .end annotation
.end field

.field public final uniforms:[Lcom/google/android/exoplayer2/util/GlUtil$Uniform;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->programId:I

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    const v2, 0x8b31

    move-object/from16 v3, p1

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000(IILjava/lang/String;)V

    const v2, 0x8b30

    move-object/from16 v3, p2

    .line 5
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/GlUtil;->access$000(IILjava/lang/String;)V

    .line 6
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const v5, 0x8b82

    .line 7
    invoke-static {v1, v5, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v3, v3, v4

    if-eq v3, v2, :cond_1

    const-string v3, "Unable to link shader program: \n"

    .line 8
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 9
    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/GlUtil;->throwGlException(Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 11
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->attributeByName:Ljava/util/HashMap;

    new-array v3, v2, [I

    const v5, 0x8b89

    .line 12
    invoke-static {v1, v5, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v3, v4

    .line 13
    new-array v1, v1, [Lcom/google/android/exoplayer2/util/GlUtil$Attribute;

    iput-object v1, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->attributes:[Lcom/google/android/exoplayer2/util/GlUtil$Attribute;

    move v1, v4

    :goto_1
    aget v5, v3, v4

    if-ge v1, v5, :cond_4

    .line 14
    iget v15, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->programId:I

    new-array v5, v2, [I

    const v6, 0x8b8a

    .line 15
    invoke-static {v15, v6, v5, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v14, v5, v4

    .line 16
    new-array v13, v14, [B

    aget v7, v5, v4

    new-array v8, v2, [I

    new-array v10, v2, [I

    new-array v12, v2, [I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v5, v15

    move v6, v1

    move-object/from16 p1, v13

    move/from16 v13, v16

    move v2, v14

    move-object/from16 v14, p1

    move/from16 v18, v15

    move/from16 v15, v17

    .line 17
    invoke-static/range {v5 .. v15}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 18
    new-instance v5, Ljava/lang/String;

    move v14, v4

    :goto_2
    if-ge v14, v2, :cond_3

    move-object/from16 v6, p1

    .line 19
    aget-byte v7, v6, v14

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 p1, v6

    goto :goto_2

    :cond_3
    move-object/from16 v6, p1

    move v14, v2

    .line 20
    :goto_3
    invoke-direct {v5, v6, v4, v14}, Ljava/lang/String;-><init>([BII)V

    move/from16 v2, v18

    .line 21
    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 22
    new-instance v2, Lcom/google/android/exoplayer2/util/GlUtil$Attribute;

    invoke-direct {v2, v5}, Lcom/google/android/exoplayer2/util/GlUtil$Attribute;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->attributes:[Lcom/google/android/exoplayer2/util/GlUtil$Attribute;

    aput-object v2, v6, v1

    .line 24
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->attributeByName:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_1

    .line 25
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->uniformByName:Ljava/util/HashMap;

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 26
    iget v3, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->programId:I

    const v5, 0x8b86

    invoke-static {v3, v5, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v3, v2, v4

    .line 27
    new-array v3, v3, [Lcom/google/android/exoplayer2/util/GlUtil$Uniform;

    iput-object v3, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->uniforms:[Lcom/google/android/exoplayer2/util/GlUtil$Uniform;

    move v3, v4

    :goto_4
    aget v5, v2, v4

    if-ge v3, v5, :cond_7

    .line 28
    iget v15, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->programId:I

    new-array v5, v1, [I

    const v6, 0x8b87

    .line 29
    invoke-static {v15, v6, v5, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    new-array v12, v1, [I

    aget v14, v5, v4

    .line 30
    new-array v13, v14, [B

    aget v7, v5, v4

    new-array v8, v1, [I

    new-array v10, v1, [I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v5, v15

    move v6, v3

    move-object/from16 p1, v13

    move/from16 v13, v16

    move v1, v14

    move-object/from16 v14, p1

    move/from16 v19, v15

    move/from16 v15, v17

    .line 31
    invoke-static/range {v5 .. v15}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 32
    new-instance v5, Ljava/lang/String;

    move v14, v4

    :goto_5
    if-ge v14, v1, :cond_6

    move-object/from16 v6, p1

    .line 33
    aget-byte v7, v6, v14

    if-nez v7, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 p1, v6

    goto :goto_5

    :cond_6
    move-object/from16 v6, p1

    move v14, v1

    .line 34
    :goto_6
    invoke-direct {v5, v6, v4, v14}, Ljava/lang/String;-><init>([BII)V

    move/from16 v1, v19

    .line 35
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 36
    new-instance v1, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;

    invoke-direct {v1, v5}, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->uniforms:[Lcom/google/android/exoplayer2/util/GlUtil$Uniform;

    aput-object v1, v6, v3

    .line 38
    iget-object v6, v0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->uniformByName:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x1

    goto :goto_4

    .line 39
    :cond_7
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void
.end method


# virtual methods
.method public final getAttributeArrayLocationAndEnable(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->programId:I

    .line 2
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    .line 3
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return p0
.end method

.method public final getUniformLocation(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->programId:I

    .line 2
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method
