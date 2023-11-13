.class public final Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "SsaDecoder.java"


# static fields
.field public static final SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final dialogueFormatFromInitializationData:Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

.field public final haveInitializationData:Z

.field public screenHeight:F

.field public screenWidth:F

.field public styles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ssa/SsaStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>()V

    const v0, -0x800001

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenWidth:F

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenHeight:F

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format:"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->dialogueFormatFromInitializationData:Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->dialogueFormatFromInitializationData:Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    :goto_0
    return-void
.end method

.method public static addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_3
    add-int/lit8 p1, v0, -0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    :goto_1
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0
.end method

.method public static computeDefaultLineOrPosition(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, -0x800001

    return p0

    :cond_0
    const p0, 0x3f733333

    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3d4ccccd

    return p0
.end method

.method public static parseTimecodeUs(Ljava/lang/String;)J
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    const/4 v6, 0x2

    .line 4
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    mul-long/2addr v6, v4

    add-long/2addr v6, v0

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    add-long/2addr v0, v6

    const/4 v2, 0x4

    .line 6
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public final decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 36

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 4
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 6
    :cond_0
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->dialogueFormatFromInitializationData:Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    const-string v6, "Format:"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->fromFormatLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v6, "Dialogue:"

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v7, "SsaDecoder"

    if-nez v4, :cond_4

    const-string v6, "Skipping dialogue line before complete format: "

    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 13
    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/16 v6, 0x9

    .line 14
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget v8, v4, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->length:I

    const-string v9, ","

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 15
    array-length v8, v6

    iget v9, v4, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->length:I

    if-eq v8, v9, :cond_6

    const-string v6, "Skipping dialogue line with fewer columns than format: "

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 17
    :goto_2
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 18
    :cond_6
    iget v8, v4, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    aget-object v8, v6, v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v8, v10

    const-string v13, "Skipping invalid timing: "

    if-nez v12, :cond_8

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v13, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_3
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 21
    :cond_8
    iget v12, v4, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    aget-object v12, v6, v12

    invoke-static {v12}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v10, v14, v10

    if-nez v10, :cond_a

    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v13, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_9
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    :goto_4
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 24
    :cond_a
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->styles:Ljava/util/LinkedHashMap;

    const/4 v10, -0x1

    if-eqz v5, :cond_b

    iget v11, v4, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->styleIndex:I

    if-eq v11, v10, :cond_b

    .line 25
    aget-object v11, v6, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    .line 26
    :goto_5
    iget v11, v4, Lcom/google/android/exoplayer2/text/ssa/SsaDialogueFormat;->textIndex:I

    aget-object v6, v6, v11

    .line 27
    sget-object v11, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    const/4 v12, 0x0

    .line 28
    :goto_6
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    move-object/from16 p3, v3

    const/4 v3, 0x1

    if-eqz v13, :cond_f

    .line 29
    invoke-virtual {v11, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :try_start_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->parsePosition(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v13, :cond_c

    move-object v12, v13

    .line 32
    :catch_0
    :cond_c
    :try_start_1
    sget-object v13, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x1

    .line 34
    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :cond_d
    const/4 v3, -0x1

    :goto_7
    const/4 v13, -0x1

    if-eq v3, v13, :cond_e

    move v10, v3

    :catch_1
    :cond_e
    move-object/from16 v3, p3

    goto :goto_6

    .line 37
    :cond_f
    new-instance v3, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;

    .line 38
    sget-object v3, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\n"

    const-string v11, "\\N"

    .line 39
    invoke-virtual {v3, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "\\n"

    .line 40
    invoke-virtual {v3, v11, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "\\h"

    const-string/jumbo v11, "\u00a0"

    .line 41
    invoke-virtual {v3, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 42
    iget v6, v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenWidth:F

    iget v11, v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenHeight:F

    .line 43
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v20, 0x0

    const v29, -0x800001

    const/high16 v32, -0x80000000

    const/16 v30, 0x0

    const/high16 v31, -0x1000000

    if-eqz v5, :cond_17

    .line 44
    iget-object v3, v5, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    if-eqz v3, :cond_10

    .line 45
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v0, v5, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 47
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v0

    move-object/from16 p1, v4

    const/16 v4, 0x21

    move-wide/from16 v34, v14

    const/4 v14, 0x0

    .line 48
    invoke-virtual {v13, v3, v14, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_10
    move-object/from16 p1, v4

    move-wide/from16 v34, v14

    .line 49
    :goto_8
    iget v0, v5, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->fontSize:F

    const v3, -0x800001

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_11

    cmpl-float v3, v11, v3

    if-eqz v3, :cond_11

    div-float/2addr v0, v11

    const/4 v3, 0x1

    goto :goto_9

    :cond_11
    move/from16 v0, v29

    move/from16 v3, v32

    .line 50
    :goto_9
    iget-boolean v4, v5, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->bold:Z

    if-eqz v4, :cond_12

    iget-boolean v14, v5, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->italic:Z

    if-eqz v14, :cond_12

    .line 51
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v14, 0x3

    invoke-direct {v4, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 52
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v14

    const/4 v15, 0x0

    move/from16 p2, v0

    const/16 v0, 0x21

    .line 53
    invoke-virtual {v13, v4, v15, v14, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    :cond_12
    move/from16 p2, v0

    const/4 v15, 0x0

    const/16 v0, 0x21

    if-eqz v4, :cond_13

    .line 54
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v14, 0x1

    invoke-direct {v4, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 55
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v14

    .line 56
    invoke-virtual {v13, v4, v15, v14, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    .line 57
    :cond_13
    iget-boolean v4, v5, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->italic:Z

    if-eqz v4, :cond_14

    .line 58
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v14, 0x2

    invoke-direct {v4, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 59
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v14

    .line 60
    invoke-virtual {v13, v4, v15, v14, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 61
    :cond_14
    :goto_a
    iget-boolean v4, v5, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->underline:Z

    if-eqz v4, :cond_15

    .line 62
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 63
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v14

    .line 64
    invoke-virtual {v13, v4, v15, v14, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 65
    :cond_15
    iget-boolean v4, v5, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->strikeout:Z

    if-eqz v4, :cond_16

    .line 66
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 67
    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v14

    .line 68
    invoke-virtual {v13, v4, v15, v14, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_16
    move/from16 v27, p2

    move/from16 v26, v3

    goto :goto_b

    :cond_17
    move-object/from16 p1, v4

    move-wide/from16 v34, v14

    const/4 v15, 0x0

    move/from16 v27, v29

    move/from16 v26, v32

    :goto_b
    const/4 v0, -0x1

    if-eq v10, v0, :cond_18

    goto :goto_c

    :cond_18
    if-eqz v5, :cond_19

    .line 69
    iget v10, v5, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->alignment:I

    goto :goto_c

    :cond_19
    move v10, v0

    :goto_c
    const-string v0, "Unknown alignment: "

    const/16 v3, 0x1e

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_d

    .line 70
    :pswitch_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_e

    .line 71
    :pswitch_2
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_e

    .line 72
    :pswitch_3
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_e

    .line 73
    :goto_d
    invoke-static {v3, v0, v10, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    :pswitch_4
    const/4 v4, 0x0

    :goto_e
    move-object/from16 v18, v4

    const/high16 v4, -0x80000000

    packed-switch v10, :pswitch_data_1

    :pswitch_5
    goto :goto_10

    :pswitch_6
    const/4 v5, 0x2

    goto :goto_f

    :pswitch_7
    const/4 v5, 0x1

    :goto_f
    move/from16 v25, v5

    goto :goto_11

    :pswitch_8
    move/from16 v25, v15

    goto :goto_11

    .line 74
    :goto_10
    invoke-static {v3, v0, v10, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    :pswitch_9
    move/from16 v25, v4

    :goto_11
    packed-switch v10, :pswitch_data_2

    :pswitch_a
    goto :goto_13

    :pswitch_b
    move/from16 v23, v15

    goto :goto_14

    :pswitch_c
    const/4 v0, 0x1

    goto :goto_12

    :pswitch_d
    const/4 v0, 0x2

    :goto_12
    move/from16 v23, v0

    goto :goto_14

    .line 75
    :goto_13
    invoke-static {v3, v0, v10, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    :pswitch_e
    move/from16 v23, v4

    :goto_14
    if-eqz v12, :cond_1a

    const v0, -0x800001

    cmpl-float v3, v11, v0

    if-eqz v3, :cond_1a

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_1a

    .line 76
    iget v0, v12, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v6

    .line 77
    iget v3, v12, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v11

    goto :goto_15

    .line 78
    :cond_1a
    invoke-static/range {v25 .. v25}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->computeDefaultLineOrPosition(I)F

    move-result v0

    .line 79
    invoke-static/range {v23 .. v23}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->computeDefaultLineOrPosition(I)F

    move-result v3

    :goto_15
    move/from16 v24, v0

    move/from16 v21, v3

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/text/Cue;

    move-object/from16 v16, v0

    const/16 v33, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v13

    move-object/from16 v19, v20

    move/from16 v28, v29

    invoke-direct/range {v16 .. v33}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    .line 81
    invoke-static {v8, v9, v2, v1}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I

    move-result v3

    move-wide/from16 v4, v34

    .line 82
    invoke-static {v4, v5, v2, v1}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I

    move-result v4

    :goto_16
    if-ge v3, v4, :cond_1c

    .line 83
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_1b
    :goto_17
    move-object/from16 p3, v3

    move-object/from16 p1, v4

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p3

    goto/16 :goto_0

    .line 84
    :cond_1d
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_9
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v3, "[Script Info]"

    .line 2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x5b

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_5

    .line 3
    :catch_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget v3, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v8, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v8

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v3

    if-eq v3, v5, :cond_0

    :cond_1
    const-string v3, ":"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    array-length v3, v0

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/preference/R$color;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "playresx"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "playresy"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    :try_start_0
    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenHeight:F

    goto :goto_1

    .line 10
    :cond_4
    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->screenWidth:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    const-string v3, "[V4+ Styles]"

    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v8, "SsaDecoder"

    if-eqz v3, :cond_1e

    .line 12
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_2
    const/4 v10, 0x0

    .line 13
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1d

    .line 14
    iget v0, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit:I

    iget v12, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v12

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    if-eq v0, v5, :cond_1d

    :cond_6
    const-string v0, "Format:"

    .line 16
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v12, ","

    const/4 v13, -0x1

    const/4 v14, 0x3

    const/4 v15, 0x6

    if-eqz v0, :cond_11

    const/4 v0, 0x7

    .line 17
    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move v11, v6

    move v12, v13

    move/from16 v18, v12

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    .line 18
    :goto_4
    array-length v0, v10

    if-ge v11, v0, :cond_f

    .line 19
    aget-object v0, v10, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/R$color;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v5, "alignment"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    :cond_7
    const/4 v0, 0x7

    goto/16 :goto_6

    :sswitch_1
    const-string v5, "fontsize"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    move v0, v15

    goto :goto_6

    :sswitch_2
    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v0, 0x5

    goto :goto_6

    :sswitch_3
    const-string v5, "bold"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x4

    goto :goto_6

    :sswitch_4
    const-string v5, "primarycolour"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    move v0, v14

    goto :goto_6

    :sswitch_5
    const-string/jumbo v5, "strikeout"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move v0, v4

    goto :goto_6

    :sswitch_6
    const-string/jumbo v5, "underline"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5

    :cond_d
    move v0, v7

    goto :goto_6

    :sswitch_7
    const-string v5, "italic"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    move v0, v6

    goto :goto_6

    :goto_5
    move v0, v13

    :goto_6
    packed-switch v0, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    move/from16 v18, v11

    goto :goto_7

    :pswitch_1
    move/from16 v20, v11

    goto :goto_7

    :pswitch_2
    move v12, v11

    goto :goto_7

    :pswitch_3
    move/from16 v21, v11

    goto :goto_7

    :pswitch_4
    move/from16 v19, v11

    goto :goto_7

    :pswitch_5
    move/from16 v24, v11

    goto :goto_7

    :pswitch_6
    move/from16 v23, v11

    goto :goto_7

    :pswitch_7
    move/from16 v22, v11

    :goto_7
    add-int/lit8 v11, v11, 0x1

    const/16 v5, 0x5b

    goto/16 :goto_4

    :cond_f
    if-eq v12, v13, :cond_10

    .line 20
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;

    array-length v5, v10

    move-object/from16 v16, v0

    move/from16 v17, v12

    move/from16 v25, v5

    invoke-direct/range {v16 .. v25}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;-><init>(IIIIIIIII)V

    move-object v10, v0

    const/16 v5, 0x5b

    goto/16 :goto_3

    :cond_10
    const/16 v5, 0x5b

    goto/16 :goto_2

    :cond_11
    const-string v0, "Style:"

    .line 21
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    if-nez v10, :cond_13

    const-string v0, "Skipping \'Style:\' line before \'Format:\' line: "

    .line 22
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_12
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 23
    :goto_8
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_13
    const-string v5, "\'"

    .line 24
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 25
    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 26
    array-length v0, v12

    iget v15, v10, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->length:I

    const-string v9, "SsaStyle"

    if-eq v0, v15, :cond_14

    new-array v0, v14, [Ljava/lang/Object;

    .line 27
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    array-length v5, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    aput-object v11, v0, v4

    const-string v5, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    .line 28
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 30
    :cond_14
    :try_start_1
    new-instance v14, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;

    iget v0, v10, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->nameIndex:I

    aget-object v0, v12, v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 32
    iget v0, v10, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->alignmentIndex:I

    if-eq v0, v13, :cond_15

    .line 33
    aget-object v0, v12, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    goto :goto_9

    :cond_15
    move/from16 v19, v13

    .line 34
    :goto_9
    iget v0, v10, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    if-eq v0, v13, :cond_16

    .line 35
    aget-object v0, v12, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_a

    :cond_16
    const/16 v20, 0x0

    .line 36
    :goto_a
    iget v0, v10, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    const v15, -0x800001

    if-eq v0, v13, :cond_17

    .line 37
    aget-object v0, v12, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 38
    :try_start_2
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v21, v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 39
    :try_start_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to parse font size: \'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    move/from16 v21, v15

    .line 40
    :goto_b
    iget v0, v10, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->boldIndex:I

    if-eq v0, v13, :cond_18

    aget-object v0, v12, v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v22, 0x1

    goto :goto_c

    :cond_18
    const/16 v22, 0x0

    :goto_c
    iget v0, v10, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->italicIndex:I

    if-eq v0, v13, :cond_19

    aget-object v0, v12, v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v23, 0x1

    goto :goto_d

    :cond_19
    const/16 v23, 0x0

    :goto_d
    iget v0, v10, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->underlineIndex:I

    if-eq v0, v13, :cond_1a

    aget-object v0, v12, v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v24, 0x1

    goto :goto_e

    :cond_1a
    const/16 v24, 0x0

    :goto_e
    iget v0, v10, Lcom/google/android/exoplayer2/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    if-eq v0, v13, :cond_1b

    aget-object v0, v12, v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v25, 0x1

    goto :goto_f

    :cond_1b
    const/16 v25, 0x0

    :goto_f
    move-object/from16 v17, v14

    invoke-direct/range {v17 .. v25}, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;-><init>(Ljava/lang/String;ILjava/lang/Integer;FZZZZ)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_11

    :catch_2
    move-exception v0

    .line 45
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Skipping malformed \'Style:\' line: \'"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    const/4 v14, 0x0

    :goto_11
    if-eqz v14, :cond_1c

    .line 46
    iget-object v0, v14, Lcom/google/android/exoplayer2/text/ssa/SsaStyle;->name:Ljava/lang/String;

    invoke-interface {v3, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    :goto_12
    const/4 v4, 0x2

    const/16 v5, 0x5b

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    .line 47
    :cond_1d
    iput-object v3, v1, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->styles:Ljava/util/LinkedHashMap;

    goto/16 :goto_0

    :cond_1e
    const-string v3, "[V4 Styles]"

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v0, "[V4 Styles] are not supported"

    .line 49
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    const-string v3, "[Events]"

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_20
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_7
        -0x3d363934 -> :sswitch_6
        -0xb7325a4 -> :sswitch_5
        -0x43a3db2 -> :sswitch_4
        0x2e3a85 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x15d92cd0 -> :sswitch_1
        0x695fa1e3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
