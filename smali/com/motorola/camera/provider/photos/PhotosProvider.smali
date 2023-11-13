.class public Lcom/motorola/camera/provider/photos/PhotosProvider;
.super Landroid/content/ContentProvider;
.source "PhotosProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;,
        Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;,
        Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    }
.end annotation


# static fields
.field public static final FILE_NAME_PROJECTION:[Ljava/lang/String;

.field public static final TYPE_ID_PROJECTION:[Ljava/lang/String;

.field public static final mProcessingFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field public static final mRawFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field public static final sAccessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;",
            ">;"
        }
    .end annotation
.end field

.field public static sHandler:Landroid/os/Handler;

.field public static final sTemporarySnapshots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public mAuthority:Ljava/lang/String;

.field public mTrustedPartners:Lcom/motorola/camera/provider/photos/TrustedPartners;

.field public mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/motorola/camera/provider/photos/PhotosProvider;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mProcessingFiles:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mRawFiles:Ljava/util/Map;

    const-string/jumbo v0, "special_type_id"

    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->TYPE_ID_PROJECTION:[Ljava/lang/String;

    const-string v0, "_id"

    const-string/jumbo v1, "volume_name"

    const-string v2, "_display_name"

    const-string v3, "relative_path"

    .line 11
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->FILE_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static detectSpecialTypeImage(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "_display_name"

    .line 4
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryFilesOnVolume(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 6
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_1
    sget-object p1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sOriginalShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    new-array v8, v5, [Ljava/lang/String;

    aput-object v7, v8, v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    .line 13
    sget-object v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    aput-object v9, v7, v6

    sget-object v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    aput-object v9, v7, v5

    sget-object v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    aput-object v9, v7, v4

    sget-object v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    aput-object v9, v7, v3

    sget-object v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v9, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    aput-object v9, v7, v2

    .line 14
    invoke-static {v1, v0, p1, v7, v8}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->hasAssociateShotWithSuffix(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v6

    :goto_1
    if-eqz p1, :cond_3

    .line 15
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    .line 16
    :cond_3
    sget-object p1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sBestShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    new-array v9, v5, [Ljava/lang/String;

    aput-object v8, v9, v6

    .line 21
    invoke-static {v1, v0, p1, v7, v9}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->hasAssociateShotWithSuffix(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v6

    :goto_2
    if-eqz p1, :cond_5

    .line 22
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    .line 23
    :cond_5
    sget-object p1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sCompositionShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    new-array v9, v5, [Ljava/lang/String;

    aput-object v8, v9, v6

    .line 28
    invoke-static {v1, v0, p1, v7, v9}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->hasAssociateShotWithSuffix(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    :cond_6
    move p1, v6

    :goto_3
    if-eqz p1, :cond_7

    .line 29
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    .line 30
    :cond_7
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "_PORTRAIT"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v5

    goto :goto_4

    :cond_8
    move p1, v6

    :goto_4
    if-eqz p1, :cond_9

    .line 32
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    .line 33
    :cond_9
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v0, "_LAYER"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v5

    goto :goto_5

    :cond_a
    move p1, v6

    :goto_5
    if-eqz p1, :cond_b

    .line 35
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    .line 36
    :cond_b
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string v0, "_AI"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v5

    goto :goto_6

    :cond_c
    move p1, v6

    :goto_6
    if-eqz p1, :cond_d

    .line 38
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->LowLightAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    .line 39
    :cond_d
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    const-string v0, "_DOC.jpg"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v5

    goto :goto_7

    :cond_e
    move p1, v6

    :goto_7
    if-eqz p1, :cond_f

    .line 41
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    .line 42
    :cond_f
    invoke-static {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v0, "_IS"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    move p1, v5

    goto :goto_8

    :cond_10
    move p1, v6

    :goto_8
    if-eqz p1, :cond_11

    .line 44
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->ImageStabilizationAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    .line 45
    :cond_11
    sget-object p1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sCudShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 47
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v6

    .line 50
    invoke-static {v1, p1, p0, v7, v2}, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->hasAssociateShotWithSuffix(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    :cond_12
    if-eqz v6, :cond_13

    .line 51
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->CudAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0

    .line 52
    :cond_13
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->None:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0
.end method

.method public static getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110313

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processing"

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p0, :cond_0

    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getStabilizationUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110313

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "stabilize"

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static queryFilesOnVolume(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android:query-arg-sql-selection"

    const-string v3, "_display_name LIKE ?"

    .line 5
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "%"

    .line 6
    invoke-static {v4, p1, v4}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "android:query-arg-sql-selection-args"

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "android:query-arg-match-pending"

    .line 8
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-static {p0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 10
    invoke-static {p0, p2, v0}, Lcom/motorola/camera/storage/MediaStoreClient;->queryOrNull(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static saveThumbnailToFile(JLjava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/motorola/camera/saving/FileName;

    sget-object v2, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    .line 3
    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v0

    invoke-virtual {p3, p2, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_0

    .line 6
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p2, p1

    :goto_0
    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object p2, p0

    move-object p0, v0

    .line 9
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    .line 10
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_2
    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    :cond_1
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 14
    throw p0
.end method

.method public static updateRawThumbnail(JLandroid/graphics/Bitmap;)V
    .locals 8

    const-string v0, "PhotosProvider"

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->mRawFiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Long;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    .line 3
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 4
    sget-object v5, Lcom/motorola/camera/provider/photos/PhotosProvider;->mRawFiles:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v4, v4, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mThumbnail:Ljava/io/File;

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1

    const-string v4, " success"

    goto :goto_1

    :cond_1
    const-string v4, " failed"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "_processing_"

    const/4 v2, 0x1

    .line 9
    invoke-static {p0, p1, v1, p2, v2}, Lcom/motorola/camera/provider/photos/PhotosProvider;->saveThumbnailToFile(JLjava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;

    move-result-object p2

    .line 10
    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->mRawFiles:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    invoke-direct {p1, p2}, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;-><init>(Ljava/io/File;)V

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public final addProcessingRow(Lcom/motorola/camera/CameraData;Landroid/database/MatrixCursor;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isBackgroundServiceJob()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    const/16 p0, 0x3c

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    mul-int/lit16 p0, p0, 0x7530

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Processing timeout, removing "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhotosProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 6
    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda15;-><init>(Lcom/motorola/camera/saving/SaveImageService;J)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    .line 7
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const/4 v3, 0x0

    aput-object v2, p0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, p1

    const/4 v0, 0x2

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p1

    .line 9
    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance v1, Lcom/motorola/camera/provider/photos/TrustedPartners;

    invoke-direct {v1, p1, v0}, Lcom/motorola/camera/provider/photos/TrustedPartners;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mTrustedPartners:Lcom/motorola/camera/provider/photos/TrustedPartners;

    .line 5
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    .line 6
    new-instance p2, Landroid/content/UriMatcher;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v1, "type/*"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "data/*"

    const/4 v2, 0x2

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "processing"

    const/4 v2, 0x7

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "processing/#"

    const/16 v2, 0x8

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v1, "stabilize/*/*"

    const/16 v2, 0x9

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    .line 13
    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    const-string v1, "icon/#/badge"

    const/4 v2, 0x3

    .line 14
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "icon/#/dialog"

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "delete/#"

    const/4 v2, 0x5

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "file/*"

    const/16 v2, 0xa

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    iget-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v0, "values/*"

    const/16 v1, 0xb

    invoke-virtual {p2, p0, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 20
    invoke-virtual {p0, p1}, Lcom/motorola/camera/AppFeatures;->refreshFeatureList(Landroid/content/Context;)V

    .line 21
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final buildValuesResult(Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2

    .line 1
    new-instance p0, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string/jumbo v0, "version"

    .line 1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final varargs checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v0

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string p1, "Unsupported mode: %s, expected: %s"

    .line 4
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhotosProvider"

    .line 5
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->validateCallingPackage()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 3
    :goto_0
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    if-eqz p2, :cond_4

    if-nez p3, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->get(Landroid/content/Context;)Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 7
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryTypeFromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object p2

    .line 8
    sget-object p3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    if-ne p2, p3, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->get(Landroid/content/Context;)Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/String;

    aput-object p1, p2, v0

    const-string/jumbo p1, "special_types_mapper"

    const-string p3, "media_store_id=?"

    .line 11
    invoke-virtual {p0, p1, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return v1

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 14
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized uri : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized handleStabilizationOpen(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3
    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-eqz v1, :cond_9

    .line 5
    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 6
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x5539bbf2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v5, -0x356f97e5    # -4731917.5f

    if-eq v4, v5, :cond_1

    const v5, 0x4f4e50ec

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "thumbnail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v6

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "source"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v4, "destination"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    :cond_3
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v3, :cond_4

    const-string p2, "PhotosProvider"

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query not recognized for stabilization Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo p1, "w"

    const-string/jumbo v0, "wa"

    .line 11
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V

    .line 12
    iget-object p1, v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mPrivateTempVideoFile:Ljava/io/File;

    if-nez p1, :cond_5

    .line 13
    iget-object p1, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object p1

    .line 14
    iput-object p1, v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mPrivateTempVideoFile:Ljava/io/File;

    :cond_5
    const/high16 p2, 0x20000000

    .line 15
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_2
    const-string p1, "r"

    .line 16
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    iget-object p1, v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mVideoThumbFile:Ljava/io/File;

    const/high16 p2, 0x10000000

    .line 18
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_7
    :try_start_3
    const-string p1, "r"

    .line 19
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V

    .line 20
    iget-object p1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    .line 21
    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    :try_start_4
    const-string p1, "PhotosProvider"

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID doesn\'t match cached timelapse: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    .line 23
    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Mismatch of IDs"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p1, "PhotosProvider"

    const-string p2, "Timelapse video data not found"

    .line 26
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    :goto_2
    if-nez p1, :cond_a

    .line 27
    :try_start_5
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Query not recognized for stabilization Uri"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_a
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->validateCallingPackage()V

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final onCreate()Z
    .locals 1

    .line 1
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "PhotosProvider"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    const/4 p0, 0x1

    return p0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->validateCallingPackage()V

    .line 2
    iget-object v3, v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eq v3, v4, :cond_e

    if-eq v3, v8, :cond_e

    packed-switch v3, :pswitch_data_0

    .line 3
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/provider/photos/PhotosProvider$FileHolder;

    const-string v3, "PhotosProvider"

    if-eqz v1, :cond_1

    .line 6
    invoke-static/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    if-nez v2, :cond_0

    .line 7
    invoke-static {v9, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open for not writable file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Filed to open "

    const-string v3, " for writing"

    .line 10
    invoke-static {v2, v0, v3}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open for not accessible file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Failed to open "

    .line 14
    invoke-static {v2, v0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcom/motorola/camera/provider/photos/PhotosProvider;->handleStabilizationOpen(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_2
    const-string v3, "r"

    .line 17
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V

    .line 18
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    if-eqz v4, :cond_2

    .line 21
    iget-object v0, v4, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mThumbnail:Ljava/io/File;

    .line 22
    invoke-static {v0, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 23
    :try_start_1
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 24
    monitor-exit p0

    goto/16 :goto_5

    .line 25
    :cond_2
    :try_start_2
    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->mRawFiles:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    if-eqz v4, :cond_3

    .line 26
    iget-object v0, v4, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mThumbnail:Ljava/io/File;

    .line 27
    invoke-static {v0, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 28
    :try_start_3
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 29
    monitor-exit p0

    goto/16 :goto_5

    .line 30
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 31
    invoke-static {v2, v3}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingPostView(J)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v4, v9

    :goto_0
    if-eqz v4, :cond_5

    .line 32
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_5

    const-string v5, "_processing_"

    .line 33
    invoke-static {v2, v3, v5, v4, v7}, Lcom/motorola/camera/provider/photos/PhotosProvider;->saveThumbnailToFile(JLjava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;

    move-result-object v4

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    invoke-direct {v3, v4}, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v4, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 36
    :try_start_5
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 37
    monitor-exit p0

    goto/16 :goto_5

    .line 38
    :cond_5
    :try_start_6
    invoke-static {v2, v3}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/16 v8, 0x1f4

    if-nez v4, :cond_b

    .line 39
    :try_start_7
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v4

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 41
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "orientation"

    .line 42
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string/jumbo v10, "width"

    .line 43
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "height"

    .line 44
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "orientation"

    .line 45
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 46
    invoke-static {v10, v11, v12}, Lcom/motorola/camera/Util;->getSize(III)Landroid/util/Size;

    move-result-object v10

    .line 47
    new-instance v24, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v11

    const-string v13, "_display_name"

    .line 48
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, "_data"

    .line 49
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v13, "datetaken"

    .line 50
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-string v13, "date_modified"

    .line 51
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 52
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v23

    const/16 v25, 0x0

    move-object/from16 v10, v24

    move-object v13, v4

    move-object/from16 v26, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move/from16 v20, v21

    move/from16 v21, v23

    move/from16 v23, v25

    invoke-direct/range {v10 .. v23}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    goto :goto_1

    :cond_6
    move-object/from16 v26, v15

    move-object/from16 v24, v9

    .line 53
    :goto_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    move-object/from16 v10, v24

    goto :goto_2

    :cond_7
    move-object v10, v9

    :goto_2
    if-nez v10, :cond_8

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Landroid/util/Size;

    invoke-direct {v11, v8, v8}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v10, v4, v11, v9}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    .line 55
    :cond_8
    new-instance v11, Landroid/util/Size;

    invoke-virtual {v10}, Lcom/motorola/camera/CameraData;->getThumbWidth()I

    move-result v12

    .line 56
    invoke-virtual {v10}, Lcom/motorola/camera/CameraData;->getThumbHeight()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/util/Size;-><init>(II)V

    .line 57
    invoke-static {v11}, Lcom/motorola/camera/utility/SizeUtility;->isSizeValid(Landroid/util/Size;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 58
    invoke-static {v10, v11}, Lcom/motorola/camera/Util;->loadPostViewThumbnail(Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    .line 59
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Landroid/util/Size;

    invoke-direct {v11, v8, v8}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v10, v4, v11, v9}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    :try_start_8
    const-string v10, "_processing_"

    .line 60
    invoke-static {v2, v3, v10, v4, v5}, Lcom/motorola/camera/provider/photos/PhotosProvider;->saveThumbnailToFile(JLjava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;

    move-result-object v10

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    invoke-direct {v12, v10}, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {v10, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 63
    :try_start_9
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 64
    :try_start_a
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 65
    monitor-exit p0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v9

    :goto_4
    if-eqz v4, :cond_a

    .line 66
    :try_start_b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_a
    throw v0

    :catch_0
    move-object v4, v9

    :catch_1
    if-eqz v4, :cond_b

    .line 68
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    :cond_b
    invoke-static {v2, v3}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v0

    .line 70
    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    monitor-enter v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v0, :cond_d

    .line 71
    :try_start_c
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 72
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v10

    iget v10, v10, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 73
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 75
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Bitmap;

    .line 76
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/io/File;

    if-nez v5, :cond_c

    const-string v5, "_processing_snapshot_"

    .line 77
    invoke-static {v2, v3, v5, v8, v7}, Lcom/motorola/camera/provider/photos/PhotosProvider;->saveThumbnailToFile(JLjava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/io/File;

    move-result-object v5

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v9, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_c
    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 80
    :try_start_d
    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 81
    monitor-exit p0

    goto :goto_5

    .line 82
    :cond_d
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 83
    :try_start_f
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v3, -0x1000000

    .line 85
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 87
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 88
    aget-object v3, v2, v5

    .line 89
    aget-object v2, v2, v7
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 90
    :try_start_10
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    .line 91
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 92
    :try_start_11
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x32

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 93
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 95
    :try_start_12
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 96
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 97
    monitor-exit p0

    move-object v0, v3

    :goto_5
    return-object v0

    :catchall_2
    move-exception v0

    move-object v9, v4

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v9, v4

    goto :goto_7

    :catchall_3
    move-exception v0

    :goto_6
    move-object/from16 v27, v9

    move-object v9, v2

    move-object/from16 v2, v27

    goto :goto_8

    :catch_3
    move-exception v0

    :goto_7
    move-object/from16 v27, v9

    move-object v9, v2

    move-object/from16 v2, v27

    goto :goto_9

    :catchall_4
    move-exception v0

    .line 98
    :try_start_13
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v9

    .line 99
    :goto_8
    :try_start_15
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 100
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 101
    throw v0

    :catch_4
    move-exception v0

    move-object v2, v9

    .line 102
    :goto_9
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 104
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    const-string v4, "r"

    .line 105
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/provider/photos/PhotosProvider;->checkFileMode(Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v8, :cond_f

    const v2, 0x7f070115

    goto :goto_a

    :cond_f
    const v2, 0x7f07005d

    .line 108
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "temp_icon-"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ".png"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_14

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 113
    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_10

    .line 115
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    invoke-static {v0, v2, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_b

    .line 117
    :cond_10
    instance-of v4, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v4, :cond_11

    .line 118
    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    .line 119
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 120
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {v0, v5, v5, v7, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v2

    goto :goto_b

    :cond_11
    move-object v0, v9

    :goto_b
    if-eqz v0, :cond_13

    if-ne v3, v8, :cond_12

    const/16 v2, 0x14

    new-array v2, v2, [F

    .line 123
    fill-array-data v2, :array_0

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 126
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 127
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 129
    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v4, v0, v2, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_c

    :cond_12
    move-object v3, v0

    .line 132
    :goto_c
    monitor-enter p0

    .line 133
    :try_start_16
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 134
    :try_start_17
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v0, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 135
    :try_start_18
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 136
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_10

    :catchall_7
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v9, v2

    goto :goto_d

    :catchall_8
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    .line 138
    :goto_d
    :try_start_19
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :goto_e
    move-object v2, v9

    .line 139
    :goto_f
    :try_start_1a
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 140
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    throw v0

    :catchall_9
    move-exception v0

    .line 142
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    throw v0

    .line 143
    :cond_13
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Drawable not supported"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_14
    :goto_10
    invoke-static {v10, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->validateCallingPackage()V

    .line 2
    iget-object v2, v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->mUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v2, v4, :cond_1b

    const/4 v7, -0x1

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x2

    const/16 v11, 0xb

    if-eq v2, v10, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v11, :cond_0

    return-object v6

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cli_display_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "has_cli_display"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v7, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    .line 5
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->buildValuesResult(Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 6
    :cond_3
    sget v0, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->buildValuesResult(Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v6

    :goto_1
    return-object v6

    .line 7
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryProcessing(J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_5
    const-wide/16 v2, -0x1

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryProcessing(J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 9
    :cond_6
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    sget-object v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    if-nez v2, :cond_7

    .line 12
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 13
    :cond_7
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 14
    array-length v8, v0

    new-array v8, v8, [Ljava/lang/Object;

    move v12, v5

    .line 15
    :goto_2
    array-length v13, v0

    if-ge v12, v13, :cond_1a

    .line 16
    aget-object v13, v0, v12

    .line 17
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x4

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string/jumbo v14, "special_type_description"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    goto/16 :goto_3

    :cond_8
    move v14, v11

    goto/16 :goto_4

    :sswitch_1
    const-string v14, "configuration"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v14, 0xa

    goto/16 :goto_4

    :sswitch_2
    const-string v14, "interact_activity_class_name"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v14, 0x9

    goto/16 :goto_4

    :sswitch_3
    const-string v14, "edit_activity_class_name"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v14, 0x8

    goto/16 :goto_4

    :sswitch_4
    const-string v14, "interact_activity_package_name"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto/16 :goto_3

    :cond_c
    move v14, v9

    goto :goto_4

    :sswitch_5
    const-string/jumbo v14, "special_type_name"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_3

    :cond_d
    const/4 v14, 0x6

    goto :goto_4

    :sswitch_6
    const-string v14, "launch_activity_class_name"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_3

    :cond_e
    const/4 v14, 0x5

    goto :goto_4

    :sswitch_7
    const-string v14, "editor_description"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_3

    :cond_f
    move v14, v15

    goto :goto_4

    :sswitch_8
    const-string v14, "launch_activity_package_name"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_3

    :cond_10
    const/4 v14, 0x3

    goto :goto_4

    :sswitch_9
    const-string v14, "editor_promo"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    goto :goto_3

    :cond_11
    move v14, v10

    goto :goto_4

    :sswitch_a
    const-string v14, "edit_activity_package_name"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_3

    :cond_12
    move v14, v4

    goto :goto_4

    :sswitch_b
    const-string/jumbo v14, "special_type_icon_uri"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    goto :goto_3

    :cond_13
    move v14, v5

    goto :goto_4

    :goto_3
    move v14, v7

    :goto_4
    const-string v16, ""

    packed-switch v14, :pswitch_data_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized column in projection: "

    .line 19
    invoke-static {v1, v13}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :pswitch_0
    invoke-virtual {v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v13

    if-eqz v13, :cond_14

    const-string v16, "edit"

    goto :goto_6

    .line 22
    :cond_14
    iget v13, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    and-int/2addr v13, v4

    if-ne v13, v4, :cond_15

    move v13, v4

    goto :goto_5

    :cond_15
    move v13, v5

    :goto_5
    if-eqz v13, :cond_16

    const-string v16, "badge"

    .line 23
    :cond_16
    :goto_6
    aput-object v16, v8, v12

    goto :goto_7

    .line 24
    :pswitch_1
    invoke-virtual {v2, v15}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->getActivityClassForConfig(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    goto :goto_7

    .line 25
    :pswitch_2
    invoke-virtual {v2, v10}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->getActivityClassForConfig(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    goto :goto_7

    .line 26
    :pswitch_3
    invoke-virtual {v2, v15}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->getActivityPackageForConfig(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    goto :goto_7

    .line 27
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 28
    iget v14, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mNameResId:I

    if-eqz v14, :cond_17

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 29
    :cond_17
    aput-object v16, v8, v12

    goto :goto_7

    .line 30
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 31
    iget v14, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mDescriptionResId:I

    if-eqz v14, :cond_18

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 32
    :cond_18
    aput-object v16, v8, v12

    goto :goto_7

    .line 33
    :pswitch_6
    aput-object v6, v8, v12

    goto :goto_7

    .line 34
    :pswitch_7
    invoke-virtual {v2, v10}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->getActivityPackageForConfig(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    goto :goto_7

    .line 35
    :pswitch_8
    iget v13, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIconResId:I

    if-lez v13, :cond_19

    .line 36
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    const-string v15, "content"

    .line 37
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    iget-object v15, v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->mAuthority:Ljava/lang/String;

    .line 38
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "icon"

    .line 39
    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 40
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    aput-object v13, v8, v12

    goto :goto_7

    .line 41
    :cond_19
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v12

    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 42
    :cond_1a
    invoke-virtual {v3, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v3

    .line 43
    :cond_1b
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/provider/photos/TypeIDDatabase;->get(Landroid/content/Context;)Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 47
    invoke-virtual {v1, v7, v2, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryTypeFromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v0

    .line 48
    sget-object v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string/jumbo v9, "special_type_id"

    if-ne v0, v8, :cond_22

    .line 49
    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 50
    invoke-static {v2, v3}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v0

    if-eqz v0, :cond_1c

    move v0, v4

    goto :goto_8

    :cond_1c
    move v0, v5

    :goto_8
    if-nez v0, :cond_21

    :cond_1d
    const-string v0, "external"

    .line 51
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 52
    sget-object v8, Lcom/motorola/camera/provider/photos/PhotosProvider;->FILE_NAME_PROJECTION:[Ljava/lang/String;

    sget-object v10, Lcom/motorola/camera/storage/MediaStoreClient;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient;

    const-string/jumbo v10, "uri"

    .line 53
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v10, Lcom/motorola/camera/storage/MediaStoreClient;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient;

    invoke-virtual {v10, v0}, Lcom/motorola/camera/storage/MediaStoreClient;->requireMediaItem(Landroid/net/Uri;)V

    .line 55
    :try_start_0
    new-instance v10, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    invoke-direct {v10, v0, v8}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;-><init>(Landroid/net/Uri;[Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 56
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    :goto_9
    instance-of v8, v0, Lkotlin/Result$Failure;

    if-eqz v8, :cond_1e

    move-object v0, v6

    .line 58
    :cond_1e
    move-object v8, v0

    check-cast v8, Landroid/database/Cursor;

    if-eqz v8, :cond_1f

    .line 59
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 60
    new-instance v0, Ljava/io/File;

    const-string v10, "relative_path"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "_display_name"

    .line 61
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "volume_name"

    .line 62
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 63
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 64
    invoke-static {v0, v10}, Lcom/motorola/camera/provider/photos/PhotosProvider;->detectSpecialTypeImage(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v8, v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 66
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v1

    :cond_1f
    if-eqz v8, :cond_20

    .line 67
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_20
    sget-object v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->None:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 69
    :cond_21
    :goto_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "media_store_id"

    invoke-virtual {v0, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    iget-object v8, v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "special_types_mapper"

    .line 73
    invoke-virtual {v7, v8, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 74
    invoke-virtual {v1, v7, v2, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryTypeFromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v0

    .line 75
    :cond_22
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 76
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->None:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    if-eq v0, v2, :cond_23

    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    if-eq v0, v2, :cond_23

    new-array v2, v4, [Ljava/lang/Object;

    .line 77
    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    aput-object v0, v2, v5

    .line 78
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_23
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b3cb4fb -> :sswitch_b
        -0x51f4f261 -> :sswitch_a
        -0x2acd3843 -> :sswitch_9
        -0x1cf2d178 -> :sswitch_8
        -0x1a31b7d6 -> :sswitch_7
        -0x24f3e6a -> :sswitch_6
        0xd31806a -> :sswitch_5
        0x14538ccb -> :sswitch_4
        0x37f97a6d -> :sswitch_3
        0x626fd499 -> :sswitch_2
        0x733374f6 -> :sswitch_1
        0x757df53d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final queryProcessing(J)Landroid/database/Cursor;
    .locals 6

    .line 1
    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "special_type_id"

    const-string v2, "media_store_id"

    const-string v3, "progress_status"

    const-string v4, "progress_percentage"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/motorola/camera/CameraApp;->waitForInstance()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 3
    sget-object p1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 4
    iget-object v1, p1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    monitor-enter v1

    .line 5
    :try_start_0
    new-instance p2, Ljava/util/LinkedList;

    iget-object p1, p1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/CameraData;

    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->addProcessingRow(Lcom/motorola/camera/CameraData;Landroid/database/MatrixCursor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 9
    :cond_1
    invoke-static {p1, p2}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->addProcessingRow(Lcom/motorola/camera/CameraData;Landroid/database/MatrixCursor;)V

    .line 10
    :cond_2
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Long;

    invoke-interface {p0, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Long;

    .line 11
    array-length p2, p0

    move v1, p1

    :goto_1
    if-ge v1, p2, :cond_6

    aget-object v2, p0, v1

    .line 12
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 13
    invoke-static {v3, v4}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    if-nez v3, :cond_5

    .line 14
    sget-object v3, Lcom/motorola/camera/provider/photos/PhotosProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    if-nez v3, :cond_4

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No processing thumbnail found for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhotosProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 16
    :cond_4
    iget-boolean v5, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mScheduledForRemoval:Z

    if-nez v5, :cond_5

    .line 17
    iput-boolean v4, v3, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mScheduledForRemoval:Z

    .line 18
    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    .line 19
    new-instance v5, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v2, p1}, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public final queryTypeFromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    .locals 8

    .line 1
    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 2
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider;->TYPE_ID_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v4, p3

    const-string/jumbo v1, "special_types_mapper"

    const-string v3, "media_store_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string/jumbo p2, "special_type_id"

    .line 6
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 7
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    sget-object p3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mTypeMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    .line 9
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    throw p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->validateCallingPackage()V

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final validateCallingPackage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->mTrustedPartners:Lcom/motorola/camera/provider/photos/TrustedPartners;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/provider/photos/TrustedPartners;->isTrustedApplication(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method
