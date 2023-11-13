.class public final synthetic Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;-><init>()V

    sput-object v0, Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;->INSTANCE:Lcom/google/gson/stream/JsonToken$EnumUnboxingLocalUtility;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic stringValueOf(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "BEGIN_ARRAY"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "END_ARRAY"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "BEGIN_OBJECT"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "END_OBJECT"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "NAME"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "STRING"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string p0, "NUMBER"

    return-object p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string p0, "BOOLEAN"

    return-object p0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string p0, "NULL"

    return-object p0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string p0, "END_DOCUMENT"

    return-object p0

    :cond_9
    const-string p0, "null"

    return-object p0
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 4

    sget-object p0, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    .line 1
    new-instance p0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    const-class v0, Lcom/google/android/exoplayer2/util/BundleableUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 4
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 6
    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v3

    .line 8
    :goto_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 10
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    const/4 v1, 0x4

    .line 11
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 12
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    const/4 v1, 0x5

    .line 13
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 14
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    const/4 v1, 0x6

    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 16
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    const/4 v1, 0x7

    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v3

    .line 18
    :goto_3
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    const/16 v1, 0x8

    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v3

    .line 20
    :goto_4
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/16 v1, 0x9

    .line 21
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, v3

    .line 22
    :goto_5
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    const/16 v1, 0xa

    .line 23
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move-object v1, v3

    .line 24
    :goto_6
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    const/16 v1, 0xb

    .line 25
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 26
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_8

    .line 29
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    const/16 v0, 0xd

    .line 30
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 31
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/16 v0, 0xe

    .line 32
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 33
    iput-wide v2, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    const/16 v0, 0xf

    .line 34
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 35
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    const/16 v0, 0x10

    .line 36
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 37
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    const/16 v0, 0x11

    .line 38
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 39
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    const/16 v0, 0x12

    .line 40
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 41
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    const/16 v0, 0x13

    .line 42
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 43
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 44
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    const/16 v0, 0x14

    .line 45
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    const/16 v0, 0x15

    .line 47
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 48
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 49
    sget v0, Lcom/google/android/exoplayer2/video/ColorInfo;->$r8$clinit:I

    sget-object v0, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;

    const/16 v2, 0x16

    .line 50
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 51
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromNullableBundle(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 52
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    const/16 v0, 0x17

    .line 53
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    const/16 v0, 0x18

    .line 55
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 56
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    const/16 v0, 0x19

    .line 57
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    const/16 v0, 0x1a

    .line 59
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 60
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    const/16 v0, 0x1b

    .line 61
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 62
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    const/16 v0, 0x1c

    .line 63
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    const/16 v0, 0x1d

    .line 65
    invoke-static {v0}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 66
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I

    .line 67
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0

    .line 68
    :cond_8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7
.end method
