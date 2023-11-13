.class public final Lcom/motorola/camera/mcf/McfAuxBinData;
.super Ljava/lang/Object;
.source "McfAuxBinData.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String; = "McfAuxBinData"

.field public static final FORMAT_APP6:Ljava/lang/String; = "BIN_DATA"

.field public static final FORMAT_JPEG:Ljava/lang/String; = "JPEG_DATA"

.field private static final MNAME_APPX:Ljava/lang/String; = "JPEG_APPX"

.field public static final MTEXT_APPX_ID:Ljava/lang/String; = "6"


# instance fields
.field private final mAuxilaryBuffer:[B

.field private final mFormat:Ljava/lang/String;

.field private final mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

.field private final mName:Ljava/lang/String;

.field private final mPrimaryBuffer:[B

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mText:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mFormat:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mPrimaryBuffer:[B

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mAuxilaryBuffer:[B

    return-void
.end method


# virtual methods
.method public getAppXId()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mText:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAuxiliary()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mAuxilaryBuffer:[B

    return-object p0
.end method

.method public getAuxiliaryLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mAuxilaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimary()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mPrimaryBuffer:[B

    return-object p0
.end method

.method public getPrimaryLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mPrimaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public isAppXData()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mName:Ljava/lang/String;

    const-string v0, "JPEG_APPX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "McfAuxBinData{mName=\'"

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mText=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mText:Ljava/lang/String;

    const-string v3, ", mFormat=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mFormat:Ljava/lang/String;

    const-string v3, ", mInstance="

    .line 7
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/TableInfo$Column$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxBinData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimary size ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimaryLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAuxiliary size ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxBinData;->getAuxiliaryLength()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
