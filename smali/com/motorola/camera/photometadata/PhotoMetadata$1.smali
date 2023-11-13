.class public final Lcom/motorola/camera/photometadata/PhotoMetadata$1;
.super Landroid/media/MediaDataSource;
.source "PhotoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/photometadata/PhotoMetadata;->getHeifAttributes(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mPosition:J

.field public final synthetic val$in:Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$1;->val$in:Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final readAt(J[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, -0x1

    if-gez v0, :cond_1

    return v1

    .line 1
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$1;->mPosition:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$1;->val$in:Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    .line 3
    iput-wide p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$1;->mPosition:J

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$1;->val$in:Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_3

    .line 5
    iget-wide p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$1;->mPosition:J

    int-to-long p4, p1

    add-long/2addr p2, p4

    iput-wide p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$1;->mPosition:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_3
    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$1;->mPosition:J

    return v1
.end method
