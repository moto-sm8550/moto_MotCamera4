.class public final Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;
.super Ljava/lang/Object;
.source "ShaderCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ShaderCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgramBinary"
.end annotation


# instance fields
.field public final mBinary:Ljava/nio/ByteBuffer;

.field public final mFormat:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mFormat:I

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mFormat:I

    .line 6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public static access$800(Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mFormat:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method
