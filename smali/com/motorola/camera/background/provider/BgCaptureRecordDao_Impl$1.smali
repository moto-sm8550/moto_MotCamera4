.class public final Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "BgCaptureRecordDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/motorola/camera/background/provider/BgCaptureRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    .line 2
    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->id:J

    const/4 p0, 0x1

    .line 3
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 4
    iget-object p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->mediaStoreUri:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_0

    .line 5
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x3

    .line 7
    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->ts:J

    .line 8
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x4

    .line 9
    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->expirationTime:J

    .line 10
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x5

    .line 11
    iget v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->clientId:I

    int-to-long v0, v0

    .line 12
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x6

    .line 13
    iget v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->sourceId:I

    int-to-long v0, v0

    .line 14
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x7

    .line 15
    iget v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->targetId:I

    int-to-long v0, v0

    .line 16
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x8

    .line 17
    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    .line 18
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x9

    .line 19
    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->taskNum:J

    .line 20
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xa

    .line 21
    iget v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->priority:I

    int-to-long v0, v0

    .line 22
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 23
    iget-boolean p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->useFifo:Z

    const/16 v0, 0xb

    int-to-long v1, p0

    .line 24
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 25
    iget-object p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->comment:Ljava/lang/String;

    const/16 v0, 0xc

    if-nez p0, :cond_1

    .line 26
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 27
    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/16 p0, 0xd

    .line 28
    iget v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressLevel:I

    int-to-long v0, v0

    .line 29
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xe

    .line 30
    iget v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->progressMax:I

    int-to-long v0, v0

    .line 31
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xf

    .line 32
    iget v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbWidth:I

    int-to-long v0, v0

    .line 33
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x10

    .line 34
    iget v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbHeight:I

    int-to-long v0, v0

    .line 35
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 36
    iget-object p0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbnailPath:Ljava/lang/String;

    const/16 v0, 0x11

    if-nez p0, :cond_2

    .line 37
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 38
    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    const/16 p0, 0x12

    .line 39
    iget-wide v0, p2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->uuid:J

    .line 40
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR ABORT INTO `bgCaptureRecord_table` (`id`,`mediaStoreUri`,`ts`,`expirationTime`,`clientId`,`sourceId`,`targetId`,`jobNum`,`taskNum`,`priority`,`useFifo`,`comment`,`progressLevel`,`progressMax`,`thumbWidth`,`thumbHeight`,`thumbnailPath`,`uuid`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
