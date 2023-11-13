.class public final synthetic Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    check-cast p1, Ljava/lang/Byte;

    check-cast p2, Ljava/util/List;

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    .line 4
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    .line 5
    invoke-virtual {p0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
