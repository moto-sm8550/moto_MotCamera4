.class public Lcom/motorola/camera/analytics/PostCaptureImageEvent;
.super Lcom/motorola/camera/analytics/PostCaptureEvent;
.source "PostCaptureImageEvent.java"


# static fields
.field public static final MANUFACTURE_DATE_FORMATS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ddMMMyyyy"

    const-string/jumbo v1, "yyyy/MM/dd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->MANUFACTURE_DATE_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/analytics/PostCaptureEvent;-><init>()V

    return-void
.end method

.method public static processExifData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    const/4 v2, 0x0

    const-string v3, "ExposureMode"

    .line 3
    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    const-string p1, "DIS"

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    const-string p1, "HDR"

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget v6, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    .line 6
    iget-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6, p1, v7}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(ILcom/motorola/camera/ShotType;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eq v3, v5, :cond_3

    if-ne v3, v4, :cond_4

    :cond_3
    const-string v3, "MODE"

    .line 7
    invoke-virtual {p0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_4
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v3

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    int-to-long v6, v4

    iget v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-virtual {v3, v6, v7, p1, v4}, Lcom/motorola/camera/analytics/AnalyticsHelper;->setShotToShotMode(JLjava/lang/String;I)V

    .line 10
    iget-object p1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v1, "ANALYTICS_SWFLASHFIREDONAUTO"

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "FLASHMODE"

    .line 12
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "auto"

    .line 13
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    const-string p1, "Flash"

    .line 14
    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x19

    if-ne p1, v1, :cond_7

    move v2, v5

    goto :goto_1

    :cond_6
    move v2, p1

    :cond_7
    :goto_1
    const-string p1, "FLASHFIRED"

    .line 15
    invoke-virtual {p0, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, -0x1

    const-string v1, "LightSource"

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_8

    const-string p1, "LGHTSRC"

    .line 17
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    return-void
.end method

.method public static processMakerNotes(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 2
    sget-object v1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDR_MERGE_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnLongValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)J

    move-result-wide v1

    const-string v3, "HDRMRGSTATUS"

    .line 4
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5
    sget-object v1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_HDR_MERGE_TIME:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 6
    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnLongValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)J

    move-result-wide v1

    const-string v3, "HDRMERGETIME"

    .line 7
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 8
    sget-object v1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_SCENEMODE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    const-string v2, "INITIALIZED"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCNMODE"

    .line 10
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_MORPHO_NOISE_ENABLED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    const/4 v2, -0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnIntValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;I)I

    move-result v1

    const-string v3, "MORPHNOISENBLD"

    .line 13
    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    sget-object v1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_LUX:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x3b

    .line 15
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v2, :cond_3

    .line 16
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 17
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    .line 19
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v2, v5, v7

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-nez v2, :cond_3

    const-string v2, "LUX"

    .line 20
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p0, v2, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    sget-object v1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_AF_STATE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->get(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    sget-object v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->AF_STATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    :goto_2
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_6

    .line 25
    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    if-eqz v1, :cond_7

    .line 26
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string v2, "FOCDIST"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 27
    :cond_7
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    .line 28
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_AF_CAL_INFO_VALID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 29
    invoke-virtual {p1, v0, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnIntValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;I)I

    move-result v0

    const-string v1, "FOCCAL"

    .line 30
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    const-string v1, "NS"

    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MANFCTID"

    .line 33
    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->MANUFACTURE_DATE_FORMATS:[Ljava/lang/String;

    const/4 v2, 0x2

    move v3, v4

    :goto_4
    if-ge v3, v2, :cond_a

    aget-object v5, v0, v3

    .line 35
    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_DATE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 36
    invoke-virtual {p1, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_5

    .line 37
    :cond_8
    :try_start_2
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 38
    invoke-virtual {v7, v4}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 39
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 40
    invoke-virtual {v7, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    :goto_5
    move-object v5, v1

    .line 41
    :goto_6
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    move-object v5, v1

    :goto_7
    const-string v0, "MANFCTDATE"

    .line 42
    invoke-virtual {p0, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CALVER"

    .line 45
    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hdrMode value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    goto :goto_0

    :cond_1
    const-string v1, "auto"

    goto :goto_0

    :cond_2
    const-string v1, "on"

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final populateActivePhotosData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 5

    .line 1
    iget-object p0, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v0, "MOTION_PHOTOS_ALLOWED"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 3
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 5
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    .line 7
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "MTNSTAT"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_5

    .line 10
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v1, "ANALYTICS_MOTION_SAVED"

    .line 11
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_2

    .line 13
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v1, "MTNSVD"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-wide/16 v1, 0x0

    const-string p2, "ANALYTICS_MOTION_VIDDUR"

    .line 16
    invoke-virtual {p0, p2, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_3

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :cond_3
    if-eqz p0, :cond_4

    .line 19
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-nez p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-nez v0, :cond_5

    .line 20
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p0, "MTNVIDDUR"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    return-void
.end method

.method public final populateOptionalImageValues(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 2
    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    const-string v5, "REARCALIBRATION"

    .line 3
    invoke-virtual {v0, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v5, :cond_0

    .line 5
    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v9, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const-string v9, "FRONTCALIBRATION"

    .line 6
    invoke-virtual {v0, v9}, Lcom/motorola/camera/analytics/SynchronizedBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v10, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v9, v10, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    if-nez v5, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    const-string v5, "FOCCAL"

    .line 7
    invoke-virtual {v1, v5, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "NS"

    const-string v9, "MANFCTID"

    .line 8
    invoke-virtual {v1, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "MANFCTDATE"

    .line 9
    invoke-virtual {v1, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "CALVER"

    .line 10
    invoke-virtual {v1, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_3
    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "TIMER_CHECKIN"

    invoke-virtual {v5, v9, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_4

    const-string v9, "TIMERVAL"

    .line 12
    invoke-virtual {v1, v9, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    :cond_4
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 14
    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_10

    .line 15
    iget-object v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    move-object/from16 v12, p0

    .line 16
    invoke-virtual {v12, v3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v6, v12, :cond_8

    .line 17
    iget-object v12, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v12, v14}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    if-eqz v12, :cond_8

    .line 18
    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v14, v14, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 19
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 20
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 21
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_5

    .line 22
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float/2addr v15, v14

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float/2addr v15, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v12

    goto :goto_2

    :cond_5
    const/16 v12, 0x64

    .line 23
    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-nez v12, :cond_6

    move-object v12, v8

    :cond_6
    if-eqz v12, :cond_7

    .line 24
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v13, v14, :cond_7

    move v14, v6

    goto :goto_3

    :cond_7
    move v14, v7

    :goto_3
    if-nez v14, :cond_8

    .line 25
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v14, "MANFOCUS"

    invoke-virtual {v1, v14, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    :cond_8
    sget-object v12, Lcom/motorola/camera/analytics/PostCaptureEvent;->WB_VALUES:Landroid/util/SparseArray;

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v14, v14, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 27
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 28
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/2addr v14, v6

    if-eqz v14, :cond_9

    const-string v14, "AUTO"

    .line 29
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "WHTBLNC"

    .line 30
    invoke-virtual {v1, v14, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_9
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v12, v12, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-double v14, v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v14, v14, v16

    .line 32
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    if-nez v12, :cond_a

    .line 33
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    :cond_a
    if-eqz v12, :cond_b

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 34
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-nez v14, :cond_b

    move v14, v6

    goto :goto_4

    :cond_b
    move v14, v7

    :goto_4
    if-nez v14, :cond_c

    .line 35
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v12, "XPSRTIME"

    invoke-virtual {v1, v12, v14, v15}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 36
    :cond_c
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v12, v12, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_d

    move v9, v13

    .line 37
    :cond_d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_e

    move-object v9, v8

    :cond_e
    if-eqz v9, :cond_f

    .line 38
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v13, v12, :cond_f

    move v12, v6

    goto :goto_5

    :cond_f
    move v12, v7

    :goto_5
    if-nez v12, :cond_10

    .line 39
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v12, "ISOSPEED"

    invoke-virtual {v1, v12, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    :cond_10
    invoke-static {v3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getExposureCompensation(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/Double;

    move-result-object v9

    if-nez v9, :cond_11

    .line 41
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :cond_11
    if-eqz v9, :cond_12

    .line 42
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-nez v10, :cond_12

    move v10, v6

    goto :goto_6

    :cond_12
    move v10, v7

    :goto_6
    if-nez v10, :cond_13

    .line 43
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-string v11, "XPSR"

    invoke-virtual {v1, v11, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 44
    :cond_13
    move-object v9, v3

    check-cast v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 45
    iget-boolean v9, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    .line 46
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_14

    move-object v9, v8

    :cond_14
    if-eqz v9, :cond_15

    .line 47
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_15

    move v10, v6

    goto :goto_7

    :cond_15
    move v10, v7

    :goto_7
    if-nez v10, :cond_16

    .line 48
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "FILEFORMAT"

    invoke-virtual {v1, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    :cond_16
    iget-object v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "ANALYTICS_PHOTO_SOLID_TIME"

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 50
    iget-object v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v10, 0x0

    if-nez v9, :cond_17

    .line 51
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :cond_17
    if-eqz v9, :cond_18

    .line 52
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_18

    goto :goto_8

    :cond_18
    move v6, v7

    :goto_8
    if-nez v6, :cond_19

    .line 53
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v9, "PHTOSLD"

    invoke-virtual {v1, v9, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_19
    const/16 v6, 0x27

    .line 54
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 55
    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "ANALYTICS_DOC_SCAN_TOAST"

    .line 56
    invoke-virtual {v0, v5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 57
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 58
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    :cond_1a
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "DOCTOAST"

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    :cond_1b
    iget-object v5, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 61
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_1d

    .line 62
    iget-object v5, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 63
    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    if-ne v5, v7, :cond_1c

    goto :goto_9

    .line 64
    :cond_1c
    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 65
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_IMAGE_STABILIZATION_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 66
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_a

    :cond_1d
    :goto_9
    move v5, v6

    .line 67
    :goto_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_1e

    move-object v5, v8

    .line 68
    :cond_1e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, "SIS"

    invoke-virtual {v1, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    iget-object v5, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 70
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v5

    if-nez v5, :cond_20

    .line 71
    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 72
    sget-object v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    if-ne v2, v5, :cond_1f

    goto :goto_b

    .line 73
    :cond_1f
    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 74
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->MCF_AI_LOW_LIGHT_SELFIE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 76
    :cond_20
    :goto_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_21

    move-object v2, v8

    .line 77
    :cond_21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v5, "LLS"

    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v2, :cond_23

    .line 79
    iget v2, v2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_22

    goto :goto_c

    :cond_22
    move-object v8, v2

    .line 80
    :goto_c
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v5, "MCF_SCN"

    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    :cond_23
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_26

    const-string v4, "IS_CLI_DISPLAY"

    .line 82
    invoke-virtual {v0, v4}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    iget v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    if-nez v0, :cond_26

    .line 83
    :cond_24
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_25

    .line 84
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 85
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "SPMIRR"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_26
    return-void
.end method

.method public postProcessData(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 4

    .line 1
    check-cast p3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz p3, :cond_5

    .line 2
    iget-object v0, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    .line 3
    sget-object v1, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "FLASHFIRED"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "HDRMRGSTATUS"

    const-wide/16 v2, -0x1

    .line 5
    invoke-virtual {p2, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "HDRMERGETIME"

    .line 6
    invoke-virtual {p2, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "LGHTSRC"

    const/4 v2, -0x1

    .line 7
    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SCNMODE"

    const-string v3, "INITIALIZED"

    .line 8
    invoke-virtual {p2, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MORPHNOISENBLD"

    .line 9
    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-object v0, p3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const/16 v2, 0x29

    if-ne v0, v2, :cond_1

    .line 11
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->populateDualCaptureData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->populateOptionalImageValues(Lcom/motorola/camera/analytics/SynchronizedBundle;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 13
    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->populateActivePhotosData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 14
    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->processExifData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    .line 15
    iget-object p0, p3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz p0, :cond_4

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {p2, p3}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;->processMakerNotes(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "PostCaptureImageEvent"

    const-string p2, "Exception in postProcessData"

    .line 18
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return-void
.end method
