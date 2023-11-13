.class public final Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;
.super Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
    }
.end annotation


# static fields
.field public static final BASIC_CHARACTER_SET:[I

.field public static final COLUMN_INDICES:[I

.field public static final ODD_PARITY_BYTE_TABLE:[Z

.field public static final ROW_INDICES:[I

.field public static final SPECIAL_CHARACTER_SET:[I

.field public static final SPECIAL_ES_FR_CHARACTER_SET:[I

.field public static final SPECIAL_PT_DE_CHARACTER_SET:[I

.field public static final STYLE_COLORS:[I


# instance fields
.field public captionMode:I

.field public captionRowCount:I

.field public final ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public final cueBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public currentChannel:I

.field public currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

.field public isCaptionValid:Z

.field public isInCaptionService:Z

.field public lastCueUpdateUs:J

.field public lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public final packetLength:I

.field public repeatableControlCc1:B

.field public repeatableControlCc2:B

.field public repeatableControlSet:Z

.field public final selectedChannel:I

.field public final selectedField:I

.field public final validDataChannelTimeoutUs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ROW_INDICES:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->STYLE_COLORS:[I

    const/16 v0, 0x60

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_5

    sput-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    const/16 v0, 0x100

    new-array v0, v0, [Z

    .line 8
    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    return-void

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
        0x14
        0x18
        0x1c
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0xff0100
        -0xffff01
        -0xff0001
        -0x10000
        -0x100
        -0xff01
    .end array-data

    :array_3
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    :array_4
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    :array_5
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    :array_6
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 5
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    const-wide/32 v3, 0xf42400

    .line 6
    iput-wide v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    const-string v0, "application/x-mp4-cea-608"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    if-eq p2, v0, :cond_3

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    const-string p2, "Cea608Decoder"

    const-string v0, "Invalid channel. Defaulting to CC1."

    .line 8
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 10
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_1

    .line 11
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 12
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_1

    .line 13
    :cond_2
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_1

    .line 15
    :cond_3
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 16
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    goto :goto_1

    .line 17
    :cond_4
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    .line 18
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    .line 19
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 21
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    return-void
.end method


# virtual methods
.method public final createSubtitle()Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    .line 2
    new-instance p0, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final decode(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 13

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 5
    iget v3, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v4, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v4

    .line 6
    iget v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->packetLength:I

    const/4 v5, 0x3

    if-lt v3, v4, :cond_31

    const/4 v3, 0x2

    if-ne v4, v3, :cond_1

    const/4 v2, -0x4

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-byte v2, v2

    .line 8
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 9
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ccData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v7, v2, 0x1

    .line 10
    iget v8, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedField:I

    if-eq v7, v8, :cond_3

    goto :goto_0

    :cond_3
    and-int/lit8 v7, v4, 0x7f

    int-to-byte v7, v7

    and-int/lit8 v8, v6, 0x7f

    int-to-byte v8, v8

    if-nez v7, :cond_4

    if-nez v8, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    and-int/lit8 v2, v2, 0x4

    const/4 v10, 0x4

    if-ne v2, v10, :cond_5

    .line 12
    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ODD_PARITY_BYTE_TABLE:[Z

    aget-boolean v4, v2, v4

    if-eqz v4, :cond_5

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_5

    move v2, p1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    const/16 v4, 0x10

    if-eqz v2, :cond_8

    and-int/lit16 v6, v7, 0xf0

    if-ne v6, v4, :cond_6

    move v6, p1

    goto :goto_3

    :cond_6
    move v6, v0

    :goto_3
    if-eqz v6, :cond_8

    .line 13
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    if-eqz v6, :cond_7

    iget-byte v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    if-ne v6, v7, :cond_7

    iget-byte v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    if-ne v6, v8, :cond_7

    .line 14
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    move v6, p1

    goto :goto_5

    .line 15
    :cond_7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 16
    iput-byte v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 17
    iput-byte v8, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    goto :goto_4

    .line 18
    :cond_8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    :goto_4
    move v6, v0

    :goto_5
    if-eqz v6, :cond_9

    goto :goto_0

    :cond_9
    if-nez v2, :cond_a

    if-eqz v9, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto/16 :goto_18

    :cond_a
    if-gt p1, v7, :cond_b

    const/16 v2, 0xf

    if-gt v7, v2, :cond_b

    move v2, p1

    goto :goto_6

    :cond_b
    move v2, v0

    :goto_6
    const/16 v6, 0x14

    const/16 v9, 0x20

    if-eqz v2, :cond_c

    .line 20
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    goto :goto_8

    :cond_c
    and-int/lit16 v2, v7, 0xf7

    if-ne v2, v6, :cond_d

    move v2, p1

    goto :goto_7

    :cond_d
    move v2, v0

    :goto_7
    if-eqz v2, :cond_f

    if-eq v8, v9, :cond_e

    const/16 v2, 0x2f

    if-eq v8, v2, :cond_e

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    goto :goto_8

    .line 21
    :pswitch_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    goto :goto_8

    .line 22
    :cond_e
    :pswitch_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    .line 23
    :cond_f
    :goto_8
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    and-int/lit16 v2, v7, 0xe0

    if-nez v2, :cond_11

    move v11, p1

    goto :goto_9

    :cond_11
    move v11, v0

    :goto_9
    if-eqz v11, :cond_12

    shr-int/lit8 v11, v7, 0x3

    and-int/2addr v11, p1

    .line 24
    iput v11, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    .line 25
    :cond_12
    iget v11, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    iget v12, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->selectedChannel:I

    if-ne v11, v12, :cond_13

    move v11, p1

    goto :goto_a

    :cond_13
    move v11, v0

    :goto_a
    if-nez v11, :cond_14

    goto/16 :goto_0

    :cond_14
    if-nez v2, :cond_15

    move v1, p1

    goto :goto_b

    :cond_15
    move v1, v0

    :goto_b
    if-eqz v1, :cond_2f

    and-int/lit16 v1, v7, 0xf7

    const/16 v2, 0x11

    if-ne v1, v2, :cond_16

    and-int/lit16 v11, v8, 0xf0

    const/16 v12, 0x30

    if-ne v11, v12, :cond_16

    move v11, p1

    goto :goto_c

    :cond_16
    move v11, v0

    :goto_c
    if-eqz v11, :cond_17

    .line 26
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    and-int/lit8 v2, v8, 0xf

    .line 27
    sget-object v3, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_CHARACTER_SET:[I

    aget v2, v3, v2

    int-to-char v2, v2

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto/16 :goto_18

    :cond_17
    and-int/lit16 v11, v7, 0xf6

    const/16 v12, 0x12

    if-ne v11, v12, :cond_18

    and-int/lit16 v12, v8, 0xe0

    if-ne v12, v9, :cond_18

    move v12, p1

    goto :goto_d

    :cond_18
    move v12, v0

    :goto_d
    if-eqz v12, :cond_1a

    .line 29
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    .line 30
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    and-int/lit8 v2, v7, 0x1

    if-nez v2, :cond_19

    and-int/lit8 v2, v8, 0x1f

    .line 31
    sget-object v3, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_ES_FR_CHARACTER_SET:[I

    aget v2, v3, v2

    goto :goto_e

    :cond_19
    and-int/lit8 v2, v8, 0x1f

    .line 32
    sget-object v3, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->SPECIAL_PT_DE_CHARACTER_SET:[I

    aget v2, v3, v2

    :goto_e
    int-to-char v2, v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    goto/16 :goto_18

    :cond_1a
    if-ne v1, v2, :cond_1b

    and-int/lit16 v2, v8, 0xf0

    if-ne v2, v9, :cond_1b

    move v2, p1

    goto :goto_f

    :cond_1b
    move v2, v0

    :goto_f
    if-eqz v2, :cond_1d

    .line 34
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    and-int/lit8 v1, v8, 0x1

    if-ne v1, p1, :cond_1c

    move v1, p1

    goto :goto_10

    :cond_1c
    move v1, v0

    :goto_10
    shr-int/lit8 v2, v8, 0x1

    and-int/lit8 v2, v2, 0x7

    .line 35
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 36
    iget-object v4, v3, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/ArrayList;

    new-instance v5, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget-object v3, v3, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-direct {v5, v2, v1, v3}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;-><init>(IZI)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_1d
    and-int/lit16 v2, v7, 0xf0

    if-ne v2, v4, :cond_1e

    and-int/lit16 v2, v8, 0xc0

    const/16 v12, 0x40

    if-ne v2, v12, :cond_1e

    move v2, p1

    goto :goto_11

    :cond_1e
    move v2, v0

    :goto_11
    if-eqz v2, :cond_26

    .line 37
    sget-object v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->ROW_INDICES:[I

    and-int/lit8 v2, v7, 0x7

    aget v1, v1, v2

    and-int/lit8 v2, v8, 0x20

    if-eqz v2, :cond_1f

    move v2, p1

    goto :goto_12

    :cond_1f
    move v2, v0

    :goto_12
    if-eqz v2, :cond_20

    add-int/lit8 v1, v1, 0x1

    .line 38
    :cond_20
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 39
    iget v3, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    if-eq v1, v3, :cond_22

    .line 40
    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v3, p1, :cond_21

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 41
    new-instance v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    iget v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    invoke-direct {v2, v3, v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 42
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_21
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 44
    iput v1, v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    :cond_22
    and-int/lit8 v1, v8, 0x10

    if-ne v1, v4, :cond_23

    move v1, p1

    goto :goto_13

    :cond_23
    move v1, v0

    :goto_13
    and-int/lit8 v2, v8, 0x1

    if-ne v2, p1, :cond_24

    move v2, p1

    goto :goto_14

    :cond_24
    move v2, v0

    :goto_14
    shr-int/lit8 v3, v8, 0x1

    and-int/lit8 v3, v3, 0x7

    .line 45
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    if-eqz v1, :cond_25

    const/16 v5, 0x8

    goto :goto_15

    :cond_25
    move v5, v3

    .line 46
    :goto_15
    iget-object v6, v4, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/ArrayList;

    new-instance v7, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-direct {v7, v5, v2, v4}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;-><init>(IZI)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_30

    .line 47
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    sget-object v2, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->COLUMN_INDICES:[I

    aget v2, v2, v3

    .line 48
    iput v2, v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    goto/16 :goto_18

    :cond_26
    const/16 v2, 0x17

    const/16 v4, 0x21

    if-ne v1, v2, :cond_27

    if-lt v8, v4, :cond_27

    const/16 v1, 0x23

    if-gt v8, v1, :cond_27

    move v1, p1

    goto :goto_16

    :cond_27
    move v1, v0

    :goto_16
    if-eqz v1, :cond_28

    .line 49
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    add-int/lit8 v8, v8, -0x20

    .line 50
    iput v8, v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    goto/16 :goto_18

    :cond_28
    if-ne v11, v6, :cond_29

    and-int/lit16 v1, v8, 0xf0

    if-ne v1, v9, :cond_29

    move v1, p1

    goto :goto_17

    :cond_29
    move v1, v0

    :goto_17
    if-eqz v1, :cond_30

    if-eq v8, v9, :cond_2e

    const/16 v1, 0x29

    if-eq v8, v1, :cond_2d

    packed-switch v8, :pswitch_data_2

    .line 51
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-nez v1, :cond_2a

    goto/16 :goto_18

    .line 52
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 53
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    goto/16 :goto_18

    .line 54
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 55
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    goto/16 :goto_18

    .line 56
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    .line 57
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    goto :goto_18

    :cond_2a
    if-eq v8, v4, :cond_2c

    packed-switch v8, :pswitch_data_3

    goto :goto_18

    .line 58
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 59
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_18

    .line 60
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_18

    :pswitch_7
    if-ne v1, p1, :cond_30

    .line 61
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    .line 62
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rollUp()V

    goto :goto_18

    .line 63
    :pswitch_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 64
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v1, p1, :cond_2b

    if-ne v1, v5, :cond_30

    .line 65
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    goto :goto_18

    .line 66
    :cond_2c
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->backspace()V

    goto :goto_18

    .line 67
    :cond_2d
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_18

    .line 68
    :cond_2e
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    goto :goto_18

    .line 69
    :cond_2f
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    and-int/lit8 v2, v7, 0x7f

    add-int/lit8 v2, v2, -0x20

    .line 70
    sget-object v3, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->BASIC_CHARACTER_SET:[I

    aget v2, v3, v2

    int-to-char v2, v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    and-int/lit16 v1, v8, 0xe0

    if-eqz v1, :cond_30

    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    and-int/lit8 v2, v8, 0x7f

    add-int/lit8 v2, v2, -0x20

    .line 73
    aget v2, v3, v2

    int-to-char v2, v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->append(C)V

    :cond_30
    :goto_18
    move v1, p1

    goto/16 :goto_0

    :cond_31
    if-eqz v1, :cond_33

    .line 75
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-eq v0, p1, :cond_32

    if-ne v0, v5, :cond_33

    .line 76
    :cond_32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 77
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->playbackPositionUs:J

    .line 78
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    :cond_33
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x25
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2c
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->validDataChannelTimeoutUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-wide v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    cmp-long v4, v6, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v8, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->playbackPositionUs:J

    sub-long/2addr v8, v6

    cmp-long v0, v8, v0

    if-ltz v0, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 7
    iput-wide v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    .line 8
    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    .line 9
    new-instance v7, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-direct {v7, v1}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    .line 12
    iget-wide v5, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->playbackPositionUs:J

    const-wide v8, 0x7fffffffffffffffL

    move-object v4, v0

    .line 13
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLcom/google/android/exoplayer2/text/Subtitle;J)V

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final flush()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionMode(I)V

    const/4 v1, 0x4

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->setCaptionRowCount(I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isCaptionValid:Z

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlSet:Z

    .line 9
    iput-byte v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc1:B

    .line 10
    iput-byte v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->repeatableControlCc2:B

    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentChannel:I

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->isInCaptionService:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCueUpdateUs:J

    return-void
.end method

.method public final getDisplayCues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    .line 3
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->build(I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v5

    .line 4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_0

    .line 5
    iget v5, v5, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_4

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/Cue;

    if-eqz v5, :cond_3

    .line 8
    iget v6, v5, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    if-eq v6, v3, :cond_2

    .line 9
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->build(I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v5

    .line 10
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v4
.end method

.method public final isNewSubtitleDataAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->lastCues:Ljava/util/List;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final resetCueBuilders()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCaptionMode(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionMode:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cueBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 5
    iput p1, v1, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->resetCueBuilders()V

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_4

    .line 7
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->cues:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public final setCaptionRowCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->captionRowCount:I

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder;->currentCueBuilder:Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    return-void
.end method
