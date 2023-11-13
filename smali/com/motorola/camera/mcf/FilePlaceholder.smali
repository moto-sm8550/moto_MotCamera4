.class public final Lcom/motorola/camera/mcf/FilePlaceholder;
.super Ljava/lang/Object;
.source "FilePlaceholder.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;,
        Lcom/motorola/camera/mcf/FilePlaceholder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/mcf/FilePlaceholder;",
        "",
        "()V",
        "Companion",
        "FilePlaceholderData",
        "MotCamera-MCF_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/mcf/FilePlaceholder$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/mcf/FilePlaceholder$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/FilePlaceholder$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcf/FilePlaceholder;->Companion:Lcom/motorola/camera/mcf/FilePlaceholder$Companion;

    const-class v0, Lcom/motorola/camera/mcf/FilePlaceholder$Companion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/FilePlaceholder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/FilePlaceholder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final deleteData(Landroid/content/Context;J)I
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/FilePlaceholder;->Companion:Lcom/motorola/camera/mcf/FilePlaceholder$Companion;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->deleteData(Landroid/content/Context;J)I

    move-result p0

    return p0
.end method

.method public static final deleteTagData(Landroid/content/Context;J)I
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/FilePlaceholder;->Companion:Lcom/motorola/camera/mcf/FilePlaceholder$Companion;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->deleteTagData(Landroid/content/Context;J)I

    move-result p0

    return p0
.end method

.method public static final requestFilePlaceholder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIIIIJ)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lcom/motorola/camera/mcf/FilePlaceholder;->Companion:Lcom/motorola/camera/mcf/FilePlaceholder$Companion;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "context"

    .line 1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fileNamePrefix"

    move-object/from16 v6, p1

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mime"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->UNDEFINED:Lcom/motorola/camera/background/common/IOMIMEType;

    .line 3
    sget-object v3, Lcom/motorola/camera/background/common/IOFormat;->BIN:Lcom/motorola/camera/background/common/IOFormat;

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "makernote"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->MAKERNOTE_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v4, "thumb"

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "nv21"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    sget-object v3, Lcom/motorola/camera/background/common/IOFormat;->NV21:Lcom/motorola/camera/background/common/IOFormat;

    .line 8
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_3
    const-string v4, "nv12"

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    sget-object v3, Lcom/motorola/camera/background/common/IOFormat;->NV12:Lcom/motorola/camera/background/common/IOFormat;

    .line 11
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_4
    const-string v4, "json"

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    sget-object v3, Lcom/motorola/camera/background/common/IOFormat;->JSON:Lcom/motorola/camera/background/common/IOFormat;

    .line 14
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->JSON_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_5
    const-string v4, "jpeg"

    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    sget-object v3, Lcom/motorola/camera/background/common/IOFormat;->JPEG:Lcom/motorola/camera/background/common/IOFormat;

    .line 17
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->JPEG_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_6
    const-string v4, "exif"

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 19
    :cond_5
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->EXIF_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_7
    const-string v4, "app6"

    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 21
    :cond_6
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->APP6_DATA:Lcom/motorola/camera/background/common/IOMIMEType;

    goto :goto_0

    :sswitch_8
    const-string v4, "raw"

    .line 22
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    .line 23
    :cond_7
    sget-object v3, Lcom/motorola/camera/background/common/IOFormat;->RAW:Lcom/motorola/camera/background/common/IOFormat;

    .line 24
    sget-object v2, Lcom/motorola/camera/background/common/IOMIMEType;->RAW_IMAGE:Lcom/motorola/camera/background/common/IOMIMEType;

    :goto_0
    move-object v13, v2

    move-object v14, v3

    goto :goto_2

    .line 25
    :goto_1
    invoke-static {}, Lcom/motorola/camera/mcf/FilePlaceholder;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown mime type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 26
    :goto_2
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;

    .line 27
    sget-object v19, Lcom/motorola/camera/background/common/IOCompression;->NONE:Lcom/motorola/camera/background/common/IOCompression;

    .line 28
    sget-object v20, Lcom/motorola/camera/background/common/IOEncryption;->NONE:Lcom/motorola/camera/background/common/IOEncryption;

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v15

    .line 30
    sget-object v2, Lcom/motorola/camera/background/common/UniqueId;->Companion:Lcom/motorola/camera/background/common/UniqueId$Companion;

    invoke-virtual {v2}, Lcom/motorola/camera/background/common/UniqueId$Companion;->generateUniqueId()J

    move-result-wide v9

    move-object v3, v1

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, p1

    move-wide/from16 v7, p9

    .line 31
    invoke-virtual/range {v3 .. v8}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->createBaseFileName(Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    .line 32
    sget-object v2, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    const-string v3, "fileName"

    .line 33
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, v0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->getBasePathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 35
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2, v0}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;->createBaseDir(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    const-string v2, "com.motorola.camera3.background.provider.filedatacontract.FileProviderCustom"

    .line 38
    invoke-static {v0, v2, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_3

    .line 39
    :cond_8
    sget-object v2, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    sget-object v2, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    const-string v5, "requestNewContentUri: Not able to create file: "

    .line 40
    invoke-static {v5}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 41
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_9

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v6, v0

    const-string v4, "context.getContentResolver()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    move-wide v7, v9

    move-wide/from16 v9, p9

    move-object v12, v2

    move-wide/from16 v17, p3

    move/from16 v21, p5

    move/from16 v22, p6

    move/from16 v23, p7

    move/from16 v24, p8

    invoke-virtual/range {v5 .. v24}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContract$Companion;->insertFileDatabase(Landroid/content/ContentResolver;JJLjava/lang/String;Landroid/net/Uri;Lcom/motorola/camera/background/common/IOMIMEType;Lcom/motorola/camera/background/common/IOFormat;JJLcom/motorola/camera/background/common/IOCompression;Lcom/motorola/camera/background/common/IOEncryption;IIII)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v0, v3

    .line 43
    :goto_4
    invoke-static {}, Lcom/motorola/camera/mcf/FilePlaceholder;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestFilePlaceholder: idUriPair = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " fileUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " filePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_a

    .line 44
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_a
    move-object v5, v3

    .line 45
    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b

    .line 46
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_6

    :cond_b
    const-wide/16 v0, -0x1

    :goto_6
    if-eqz v2, :cond_c

    .line 47
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_c
    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_d

    const-string v3, "/private_cache_root"

    .line 48
    invoke-static {v2, v3}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 49
    :cond_d
    new-instance v2, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;

    invoke-direct {v2, v0, v1, v3}, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData;-><init>(JLjava/lang/String;)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x1b828 -> :sswitch_8
        0x2dca35 -> :sswitch_7
        0x2fb910 -> :sswitch_6
        0x31e068 -> :sswitch_5
        0x31ece8 -> :sswitch_4
        0x33c1e9 -> :sswitch_3
        0x33c207 -> :sswitch_2
        0x693b1d6 -> :sswitch_1
        0x4c83a636 -> :sswitch_0
    .end sparse-switch
.end method
