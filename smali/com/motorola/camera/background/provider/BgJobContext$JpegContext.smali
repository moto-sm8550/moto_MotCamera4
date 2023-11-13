.class public final Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;
.super Ljava/lang/Object;
.source "BgJobContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/provider/BgJobContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JpegContext"
.end annotation


# instance fields
.field public instanceId:J

.field public instanceTag:J

.field public jpegFids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;",
            ">;"
        }
    .end annotation
.end field

.field public slot:J


# direct methods
.method public constructor <init>(JJJLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/background/provider/BgJobContext$JpegFileId;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    .line 2
    iput-wide p3, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceId:J

    .line 3
    iput-wide p5, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceTag:J

    .line 4
    iput-object p7, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;

    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceId:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceTag:J

    iget-wide v5, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceTag:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceId:J

    const/16 v3, 0x1f

    .line 1
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    .line 2
    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceTag:J

    .line 3
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/background/common/JobId$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "JpegContext(slot="

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->slot:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", instanceTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->instanceTag:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", jpegFids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgJobContext$JpegContext;->jpegFids:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
