.class public final Lcom/motorola/camera/ui/widgets/gl/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# instance fields
.field public final mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

.field public mProgramHandle:I

.field public final mUniforms:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;


# direct methods
.method public constructor <init>(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mUniforms:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;

    .line 3
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    .line 4
    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ge v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    const v7, 0x8b82

    const-wide v8, 0xffffffffL

    const/16 v10, 0x20

    const-wide v11, -0x100000000L

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v13, v1

    shl-long/2addr v13, v10

    and-long/2addr v11, v13

    int-to-long v13, v2

    and-long/2addr v13, v8

    or-long/2addr v11, v13

    .line 5
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->getInstance()Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    move-result-object v3

    .line 6
    iget-object v13, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    monitor-enter v13

    .line 7
    :try_start_0
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    .line 8
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    .line 9
    sget-object v11, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 10
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v11

    const-string v12, "glCreateProgram"

    .line 11
    invoke-static {v12}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-eqz v11, :cond_3

    .line 12
    iget v12, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mFormat:I

    iget-object v13, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v13

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v3

    .line 13
    invoke-static {v11, v12, v13, v3}, Landroid/opengl/GLES30;->glProgramBinary(IILjava/nio/Buffer;I)V

    const-string v3, "glProgramBinary"

    .line 14
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    new-array v3, v4, [I

    aput v6, v3, v6

    .line 15
    invoke-static {v11, v7, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->getProgramiv(II[I)V

    aget v3, v3, v6

    if-eq v3, v4, :cond_3

    .line 16
    invoke-static {v11}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v3, "glDeleteProgram"

    .line 17
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v11, v6

    .line 18
    :cond_3
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    if-nez v11, :cond_a

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getShaderSource(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getShaderSource(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x8b31

    .line 21
    invoke-static {v12, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const v12, 0x8b30

    .line 22
    invoke-static {v12, v11}, Lcom/motorola/camera/ui/widgets/gl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v12

    const-string v13, "glCreateProgram"

    .line 24
    invoke-static {v13}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-eqz v12, :cond_6

    .line 25
    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    .line 26
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 27
    invoke-static {v12, v11}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 28
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 29
    invoke-static {v12}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string v3, "glLinkProgram"

    .line 30
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    new-array v3, v4, [I

    .line 31
    invoke-static {v12, v7, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->getProgramiv(II[I)V

    aget v3, v3, v6

    if-eq v3, v4, :cond_6

    const-string v3, "Shader"

    const-string v7, "Could not link mProgramHandle: "

    .line 32
    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {v12}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, "glGetProgramInfoLog"

    .line 34
    invoke-static {v11}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 35
    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {v12}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v3, "glDeleteProgram"

    .line 37
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :goto_2
    move v11, v6

    goto :goto_3

    :cond_6
    move v11, v12

    .line 38
    :goto_3
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    if-eqz v11, :cond_a

    .line 39
    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    if-ge v3, v5, :cond_7

    move v3, v4

    goto :goto_4

    :cond_7
    move v3, v6

    :goto_4
    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    int-to-long v12, v1

    shl-long/2addr v12, v10

    const-wide v14, -0x100000000L

    and-long/2addr v12, v14

    int-to-long v1, v2

    and-long/2addr v1, v8

    or-long/2addr v1, v12

    new-array v3, v4, [I

    aput v6, v3, v6

    const v5, 0x8741

    .line 40
    invoke-static {v11, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->getProgramiv(II[I)V

    aget v5, v3, v6

    if-lez v5, :cond_9

    new-array v5, v4, [I

    aget v7, v3, v6

    .line 41
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    aget v12, v3, v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v15, v5

    move-object/from16 v17, v7

    .line 42
    invoke-static/range {v11 .. v17}, Landroid/opengl/GLES30;->glGetProgramBinary(II[II[IILjava/nio/Buffer;)V

    const-string v3, "glGetProgramBinary"

    .line 43
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    aget v5, v5, v6

    invoke-direct {v3, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;-><init>(ILjava/nio/ByteBuffer;)V

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_a

    .line 45
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->getInstance()Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    move-result-object v5

    .line 46
    iget-object v7, v5, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    monitor-enter v7

    .line 47
    :try_start_1
    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 48
    iput-boolean v4, v5, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mDirty:Z

    .line 49
    monitor-exit v7

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_6
    new-array v1, v4, [I

    .line 50
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    const v3, 0x8b86

    invoke-static {v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->getProgramiv(II[I)V

    aget v2, v1, v6

    if-lez v2, :cond_c

    move v2, v6

    :goto_7
    aget v3, v1, v6

    if-ge v2, v3, :cond_c

    .line 51
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    invoke-direct {v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;-><init>(II)V

    .line 52
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mName:Ljava/lang/String;

    .line 53
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mLookupMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    if-eqz v4, :cond_b

    .line 54
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mUniforms:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput-object v3, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 55
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to locate uniform value \'"

    .line 56
    invoke-static {v1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    iget-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mName:Ljava/lang/String;

    const-string v3, "\'!"

    .line 58
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void

    :catchall_1
    move-exception v0

    .line 60
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static getShaderSource(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 6
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v2, "Shader"

    const-string v3, "Error reading shader"

    .line 10
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :goto_1
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 2
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const-string v1, "glCreateShader"

    .line 3
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const-string p1, "glShaderSource"

    .line 5
    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const-string p1, "glCompileShader"

    .line 7
    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v2, 0x8b81

    .line 8
    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    const-string v2, "glGetShaderiv"

    .line 9
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Shader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "glGetShaderInfoLog"

    .line 12
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 13
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "glDeleteShader"

    .line 15
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public final getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    .line 3
    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mName:Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 5
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const-string v1, "glGetAttribLocation"

    .line 6
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-ltz v0, :cond_0

    .line 7
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    .line 8
    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mName:Ljava/lang/String;

    .line 9
    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;-><init>(Ljava/lang/String;I)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object v1, p0, p1

    move-object v0, v1

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown attribute \'"

    .line 12
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mName:Ljava/lang/String;

    const-string v1, "\'!"

    .line 14
    invoke-static {v0, p1, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mUniforms:[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get uniform location for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final pushAttributes()V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 2
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/nio/FloatBuffer;

    const-string v5, "glVertexAttribPointer"

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    .line 4
    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    iget v8, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iget-boolean v9, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mShouldNormalize:Z

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget-object v11, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/nio/FloatBuffer;

    .line 5
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    .line 8
    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    iget v8, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iget-boolean v9, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mShouldNormalize:Z

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget v11, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mOffset:I

    .line 9
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 10
    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    .line 11
    :goto_1
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 12
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glEnableVertexAttribArray"

    .line 13
    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;

    move-result-object p0

    .line 6
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mLocation:I

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 7
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p0, "glUniform1f"

    .line 8
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;

    move-result-object p0

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mLocation:I

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 3
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string p0, "glUniform1i"

    .line 4
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V
    .locals 3

    .line 9
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;

    move-result-object p0

    .line 10
    array-length p1, p2

    .line 11
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mType:I

    const/16 v1, 0x1406

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot assign float-array to incompatible uniform type for uniform \'"

    .line 13
    invoke-static {p2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mName:Ljava/lang/String;

    const-string v0, "\'!"

    .line 15
    invoke-static {p2, p0, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :pswitch_0
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->checkUniformAssignment(II)V

    .line 18
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mLocation:I

    .line 19
    div-int/2addr p1, v1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 20
    invoke-static {p0, p1, p2, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const-string p0, "glUniform4fv"

    .line 21
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->checkUniformAssignment(II)V

    .line 23
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mLocation:I

    .line 24
    div-int/2addr p1, v0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 25
    invoke-static {p0, p1, p2, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    const-string p0, "glUniform3fv"

    .line 26
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->checkUniformAssignment(II)V

    .line 28
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mLocation:I

    .line 29
    div-int/2addr p1, v0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 30
    invoke-static {p0, p1, p2, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    const-string p0, "glUniform2fv"

    .line 31
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->checkUniformAssignment(II)V

    .line 33
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mLocation:I

    .line 34
    div-int/2addr p1, v0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 35
    invoke-static {p0, p1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p0, "glUniformMatrix4fv"

    .line 36
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x9

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->checkUniformAssignment(II)V

    .line 38
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mLocation:I

    .line 39
    div-int/2addr p1, v0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 40
    invoke-static {p0, p1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    const-string p0, "glUniformMatrix3fv"

    .line 41
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_5
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->checkUniformAssignment(II)V

    .line 43
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mLocation:I

    .line 44
    div-int/2addr p1, v1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 45
    invoke-static {p0, p1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    const-string p0, "glUniformMatrix2fv"

    .line 46
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->checkUniformAssignment(II)V

    .line 48
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform;->mLocation:I

    .line 49
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 50
    invoke-static {p0, p1, p2, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    const-string p0, "glUniform1fv"

    .line 51
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8b50
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8b5a
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final use()V
    .locals 1

    .line 1
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sResourcesMaps:Ljava/util/Map;

    .line 2
    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p0, "glUseProgram"

    .line 3
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
