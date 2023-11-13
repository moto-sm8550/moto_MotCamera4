.class public final Lcom/motorola/camera/CameraData;
.super Ljava/lang/Object;
.source "CameraData.java"


# instance fields
.field public final mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;


# direct methods
.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p3, p4, v0}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 8
    iget-object p3, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p4, "GLOBAL_UUID"

    invoke-virtual {p3, p4, p1, p2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {p0, p5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V
    .locals 0

    .line 10
    invoke-direct {p0, p3, p4, p13}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 11
    iget-object p3, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p4, "GLOBAL_UUID"

    invoke-virtual {p3, p4, p1, p2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 12
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p2, "FILE_PATH"

    invoke-virtual {p1, p2, p5}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p2, "DATE_TAKEN"

    invoke-virtual {p1, p2, p6, p7}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p2, "DATE_MODIFIED"

    invoke-virtual {p1, p2, p8, p9}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p2, "ORIENTATION"

    invoke-virtual {p1, p2, p12}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget-object p1, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p2, "THUMB_WIDTH"

    invoke-virtual {p1, p2, p10}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p1, "THUMB_HEIGHT"

    invoke-virtual {p0, p1, p11}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string p1, "ERROR_CASE"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    const-string p0, "ID"

    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    const-string p0, "URI"

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "FILE_NAME"

    .line 5
    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DATE_TYPE"

    .line 6
    invoke-virtual {v0, p0, p3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getDataType()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "DATE_TYPE"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getDateModified()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "DATE_MODIFIED"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDateTaken()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "DATE_TAKEN"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "FILE_NAME"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "ID"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOrientation()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "ORIENTATION"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "SEQ_ID"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    return-object p0
.end method

.method public final getTaskID()Lcom/motorola/camera/background/common/TaskId;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string/jumbo v0, "task_id"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    return-object p0
.end method

.method public final getThumbHeight()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "THUMB_HEIGHT"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getThumbPath()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "THUMB_PATH"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getThumbWidth()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "THUMB_WIDTH"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getUUID()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "GLOBAL_UUID"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "URI"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public final isBackgroundServiceJob()Z
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFromCurrentSession()Z
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getUUID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isProcessingUri()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    const-string v0, "PROCESSING_URI"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "GLOBAL_UUID"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "ID"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "DATE_TYPE"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "FILE_NAME"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "FILE_PATH"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "URI"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "PROCESSING_URI"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "DATE_TAKEN"

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "DATE_MODIFIED"

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "ORIENTATION"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "THUMB_WIDTH"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "THUMB_HEIGHT"

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "IS_PRIMARY"

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Lcom/motorola/camera/analytics/SynchronizedBundle;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/analytics/SynchronizedBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
