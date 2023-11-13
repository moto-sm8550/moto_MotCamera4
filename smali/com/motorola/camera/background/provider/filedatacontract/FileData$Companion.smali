.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileData$Companion;
.super Ljava/lang/Object;
.source "FileData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/provider/filedatacontract/FileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromContentValues(Landroid/content/ContentValues;)Lcom/motorola/camera/background/provider/filedatacontract/FileData;
    .locals 7

    .line 1
    new-instance p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v2, v2, v3}, Lcom/motorola/camera/background/provider/filedatacontract/FileData;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    const-string v3, "id"

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_3

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v6

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4
    :goto_2
    iput-wide v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    :cond_3
    const-string/jumbo v0, "tag"

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, v0

    .line 7
    :cond_6
    :goto_4
    iput-object v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTag:Ljava/lang/Long;

    :cond_7
    const-string v0, "file_name"

    if-eqz p1, :cond_8

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_5

    :cond_8
    move v1, v4

    :goto_5
    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    move-object v0, v6

    .line 10
    :goto_6
    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFileName:Ljava/lang/String;

    :cond_a
    const-string/jumbo v0, "uri"

    if-eqz p1, :cond_b

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7

    :cond_b
    move v1, v4

    :goto_7
    if-eqz v1, :cond_d

    if-eqz p1, :cond_c

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_c
    move-object v0, v6

    .line 13
    :goto_8
    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mUri:Ljava/lang/String;

    :cond_d
    const-string/jumbo v0, "ts"

    if-eqz p1, :cond_e

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_9

    :cond_e
    move v1, v4

    :goto_9
    if-eqz v1, :cond_10

    if-eqz p1, :cond_f

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_a

    :cond_f
    move-object v0, v6

    .line 16
    :goto_a
    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mTs:Ljava/lang/Long;

    :cond_10
    const-string v0, "MIME_type"

    if-eqz p1, :cond_11

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_b

    :cond_11
    move v1, v4

    :goto_b
    if-eqz v1, :cond_13

    if-eqz p1, :cond_12

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_12
    move-object v0, v6

    .line 19
    :goto_c
    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mMIMEType:Ljava/lang/String;

    :cond_13
    const-string v0, "format"

    if-eqz p1, :cond_14

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_d

    :cond_14
    move v1, v4

    :goto_d
    if-eqz v1, :cond_16

    if-eqz p1, :cond_15

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_15
    move-object v0, v6

    .line 22
    :goto_e
    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mFormat:Ljava/lang/String;

    :cond_16
    const-string/jumbo v0, "time_out"

    if-eqz p1, :cond_17

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_f

    :cond_17
    move v1, v4

    :goto_f
    if-eqz v1, :cond_19

    if-eqz p1, :cond_18

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_10

    :cond_18
    move-object v0, v6

    .line 25
    :goto_10
    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mExpirationTime:Ljava/lang/Long;

    :cond_19
    const-string v0, "compression_type"

    if-eqz p1, :cond_1a

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_11

    :cond_1a
    move v1, v4

    :goto_11
    if-eqz v1, :cond_1c

    if-eqz p1, :cond_1b

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_1b
    move-object v0, v6

    .line 28
    :goto_12
    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mCompressionType:Ljava/lang/String;

    :cond_1c
    const-string v0, "encryption_type"

    if-eqz p1, :cond_1d

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_13

    :cond_1d
    move v1, v4

    :goto_13
    if-eqz v1, :cond_1f

    if-eqz p1, :cond_1e

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_1e
    move-object v0, v6

    .line 31
    :goto_14
    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mEncryptionType:Ljava/lang/String;

    :cond_1f
    const-string/jumbo v0, "size"

    if-eqz p1, :cond_20

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_15

    :cond_20
    move v1, v4

    :goto_15
    if-eqz v1, :cond_22

    if-eqz p1, :cond_21

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_16

    :cond_21
    move-object v0, v6

    .line 34
    :goto_16
    iput-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    :cond_22
    const-string v0, "dims.width"

    if-eqz p1, :cond_23

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_17

    :cond_23
    move v1, v4

    :goto_17
    if-eqz v1, :cond_25

    .line 36
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    if-eqz p1, :cond_24

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_18

    :cond_24
    move-object v0, v6

    .line 38
    :goto_18
    iput-object v0, v1, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->width:Ljava/lang/Integer;

    :cond_25
    const-string v0, "dims.height"

    if-eqz p1, :cond_26

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    goto :goto_19

    :cond_26
    move v1, v4

    :goto_19
    if-eqz v1, :cond_28

    .line 40
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    if-eqz p1, :cond_27

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1a

    :cond_27
    move-object v0, v6

    .line 42
    :goto_1a
    iput-object v0, v1, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->height:Ljava/lang/Integer;

    :cond_28
    const-string v0, "dims.stride"

    if-eqz p1, :cond_29

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    :cond_29
    if-eqz v4, :cond_2b

    .line 44
    iget-object v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    if-eqz p1, :cond_2a

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 46
    :cond_2a
    iput-object v6, v1, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->stride:Ljava/lang/Integer;

    :cond_2b
    return-object p0
.end method
