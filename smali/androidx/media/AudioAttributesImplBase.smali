.class public Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "AudioAttributesImplBase.java"

# interfaces
.implements Landroidx/media/AudioAttributesImpl;


# instance fields
.field public mContentType:I

.field public mFlags:I

.field public mLegacyStream:I

.field public mUsage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 3
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 4
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/media/AudioAttributesImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroidx/media/AudioAttributesImplBase;

    .line 3
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 4
    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_6

    .line 5
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 6
    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 7
    iget v4, p1, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v5, -0x1

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/4 v8, 0x4

    if-eq v4, v5, :cond_1

    move v8, v4

    goto :goto_1

    .line 8
    :cond_1
    iget v5, p1, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    sget v9, Landroidx/media/AudioAttributesCompat;->$r8$clinit:I

    and-int/lit8 v9, v2, 0x1

    if-ne v9, v3, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    and-int/lit8 v9, v2, 0x4

    if-ne v9, v8, :cond_3

    move v8, v6

    goto :goto_1

    :cond_3
    const/4 v9, 0x3

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v8, v9

    goto :goto_1

    :pswitch_1
    move v8, v3

    goto :goto_1

    :pswitch_2
    const/16 v5, 0xa

    goto :goto_0

    :pswitch_3
    const/4 v5, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v5, 0x5

    goto :goto_0

    :pswitch_5
    const/16 v5, 0x8

    :goto_0
    move v8, v5

    goto :goto_1

    :pswitch_6
    move v8, v1

    :goto_1
    :pswitch_7
    if-ne v8, v6, :cond_4

    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    :cond_4
    if-ne v8, v7, :cond_5

    or-int/lit8 v2, v2, 0x1

    :cond_5
    :goto_2
    and-int/lit16 v2, v2, 0x111

    if-ne v0, v2, :cond_6

    .line 9
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 10
    iget p1, p1, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    if-ne v0, p1, :cond_6

    .line 11
    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    if-ne p0, v4, :cond_6

    move v1, v3

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " stream="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " derived"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " usage="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 6
    sget v2, Landroidx/media/AudioAttributesCompat;->$r8$clinit:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v2, "unknown usage "

    .line 7
    invoke-static {v2, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const-string v1, "USAGE_ASSISTANT"

    goto :goto_0

    :pswitch_2
    const-string v1, "USAGE_GAME"

    goto :goto_0

    :pswitch_3
    const-string v1, "USAGE_ASSISTANCE_SONIFICATION"

    goto :goto_0

    :pswitch_4
    const-string v1, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    goto :goto_0

    :pswitch_5
    const-string v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    goto :goto_0

    :pswitch_6
    const-string v1, "USAGE_NOTIFICATION_EVENT"

    goto :goto_0

    :pswitch_7
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    goto :goto_0

    :pswitch_8
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    goto :goto_0

    :pswitch_9
    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    goto :goto_0

    :pswitch_a
    const-string v1, "USAGE_NOTIFICATION_RINGTONE"

    goto :goto_0

    :pswitch_b
    const-string v1, "USAGE_NOTIFICATION"

    goto :goto_0

    :pswitch_c
    const-string v1, "USAGE_ALARM"

    goto :goto_0

    :pswitch_d
    const-string v1, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    goto :goto_0

    :pswitch_e
    const-string v1, "USAGE_VOICE_COMMUNICATION"

    goto :goto_0

    :pswitch_f
    const-string v1, "USAGE_MEDIA"

    goto :goto_0

    :pswitch_10
    const-string v1, "USAGE_UNKNOWN"

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " content="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
