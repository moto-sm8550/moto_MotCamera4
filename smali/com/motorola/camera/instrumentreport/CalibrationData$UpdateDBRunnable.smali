.class public final Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;
.super Ljava/lang/Object;
.source "CalibrationData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/instrumentreport/CalibrationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateDBRunnable"
.end annotation


# instance fields
.field public final mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

.field public final synthetic this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/instrumentreport/CalibrationData;Lcom/motorola/camera/photometadata/PhotoMetadata;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->groupDBquery(Ljava/lang/Boolean;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    if-eqz v3, :cond_0

    .line 5
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/motorola/camera/instrumentreport/CalibrationData;->groupDBquery(Ljava/lang/Boolean;)Landroid/database/Cursor;

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 7
    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CalibrationBackCam"

    .line 9
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-nez v6, :cond_1

    .line 11
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const-string v6, "CalibrationFrontCam"

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v5, :cond_2

    .line 14
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto/16 :goto_b

    :catch_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_b

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_2
    :try_start_2
    const-string v4, "CalibrationData"

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :cond_3
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 18
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 20
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 21
    sget-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v3, :cond_4

    const-string v3, "CalibrationFrontCam"

    goto :goto_4

    :cond_4
    const-string v3, "CalibrationBackCam"

    :goto_4
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object v3, v5, v0

    const-string v0, "RAW_SQL"

    const-string v6, "select keytag from events WHERE keytype = ? "

    .line 22
    invoke-virtual {v2, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SELECTION_ARGS"

    .line 23
    invoke-virtual {v2, v0, v5}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 24
    sget-boolean v0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    if-eqz v0, :cond_b

    .line 25
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 26
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getDebugReportPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "CALIBRATION_BUILD_STRING"

    .line 28
    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v0, "WHERE_CLAUSE"

    const-string v6, "keytype = ?"

    .line 30
    invoke-virtual {v2, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WHERE_ARGS"

    .line 31
    invoke-virtual {v2, v0, v5}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    .line 33
    invoke-virtual {v0, v2}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->deleteData(Landroid/os/Bundle;)I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_SENSOR_NAME:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "SENSOR_NAME"

    .line 36
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_MNF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "MNF Calibration Status"

    .line 38
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB Calibration Status"

    .line 40
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AF Calibration Status"

    .line 42
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_LS_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "LS Calibration Status"

    .line 44
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_PDAF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "PDAF Calibration Status"

    .line 46
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_DUAL_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$500(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "DUAL Calibration Status"

    .line 48
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CAL_VERSION"

    .line 50
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "MANUFACTURE_ID"

    .line 52
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_DATE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "MANUFACTURE_DATE"

    .line 54
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_LINE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "MANUFACTURE_LINE"

    .line 56
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_SENSOR_SERIAL_NUM:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "SENSOR_SERIAL_NUM"

    .line 58
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MOT_PART_NUM:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "MOT_PART_NUM"

    .line 60
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_LENS_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "LENS_ID"

    .line 62
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_FACTORY_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "FACTORY_ID"

    .line 64
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_IR_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "IR_FILTER"

    .line 66
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_LIL_X_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CIE_LIL_X_SOURCE_1"

    .line 68
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_LIL_Y_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CIE_LIL_Y_SOURCE_1"

    .line 70
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_BIG_Y_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CIE_BIG_Y_SOURCE_1"

    .line 72
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_R"

    .line 74
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_Gr"

    .line 76
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_Gb"

    .line 78
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_B"

    .line 80
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_GOLDEN_R"

    .line 82
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_GOLDEN_Gr"

    .line 84
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_GOLDEN_Gb"

    .line 86
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_GOLDEN_B"

    .line 88
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "BLACK_LEVEL_R"

    .line 90
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "BLACK_LEVEL_Gr"

    .line 92
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "BLACK_LEVEL_Gb"

    .line 94
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "BLACK_LEVEL_B"

    .line 96
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_RG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_RG"

    .line 98
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_BG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_BG"

    .line 100
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GRGB:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AWB_SOURCE_1_GRGB"

    .line 102
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_CAL_VER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AF_CAL_VER"

    .line 104
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_HW_REV:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AF_HW_REV"

    .line 106
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_INF_DAC:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AF_INF_DAC"

    .line 108
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_MACRO_DAC:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AF_MACRO_DAC"

    .line 110
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_INF_DAC_ORG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AF_INF_DAC_ORG"

    .line 112
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_MACRO_DAC_ORG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AF_MACRO_DAC_ORG"

    .line 114
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_ACTUATOR_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AF_ACTUATOR_ID"

    .line 116
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CALSTATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_6

    move-object v2, v1

    goto :goto_5

    .line 119
    :cond_6
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 120
    sget-object v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mCalibrationStatusMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    const-string v2, "Parse Error"

    :goto_5
    const-string v5, "CALSTATUS"

    .line 121
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_COLOR_ENABLED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$700(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "COLOR_ENABLED"

    .line 123
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_ROLLOFF_ENABLED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$700(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ROLLOFF_ENABLED"

    .line 125
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->this$0:Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v5, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_AF_CAL_INFO_VALID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$700(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AF_CAL_INFO_VALID"

    .line 127
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CHECK_CIE_OTP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CHECK_CIE_OTP"

    .line 129
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CHECK_AWB_OTP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CHECK_AWB_OTP"

    .line 131
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_BLUR_INTENSITY:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "BLUR_INTENSITY"

    .line 133
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_LEFT:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ROI_LEFT"

    .line 135
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_TOP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ROI_TOP"

    .line 137
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_WIDTH:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ROI_WIDTH"

    .line 139
    invoke-static {v2, v0, v3, v5, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p0, p0, Lcom/motorola/camera/instrumentreport/CalibrationData$UpdateDBRunnable;->mMetaData:Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_HEIGHT:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ROI_HEIGHT"

    .line 141
    invoke-static {p0, v0, v3, v2, p0}, Lcom/motorola/camera/instrumentreport/CalibrationData;->access$400(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    .line 143
    monitor-enter p0

    .line 144
    :try_start_4
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_8

    .line 145
    :cond_7
    :try_start_5
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/instrumentreport/InstrumentReportDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 146
    :cond_8
    :try_start_6
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 148
    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "events"

    invoke-virtual {v3, v5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_6

    .line 149
    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    :try_start_7
    const-string v1, "InstrumentReportDBAccessor"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting DB connection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 151
    :goto_7
    :try_start_8
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 152
    monitor-exit p0

    goto :goto_9

    .line 153
    :goto_8
    :try_start_9
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 154
    throw v0

    :catch_4
    move-exception v0

    const-string v1, "InstrumentReportDBAccessor"

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting DB connection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 156
    monitor-exit p0

    .line 157
    :goto_9
    sget-boolean p0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz p0, :cond_a

    .line 158
    sput-boolean v4, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    goto :goto_a

    .line 159
    :cond_a
    sput-boolean v4, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 160
    monitor-exit p0

    throw v0

    :cond_b
    :goto_a
    return-void

    .line 161
    :goto_b
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 162
    throw p0
.end method
