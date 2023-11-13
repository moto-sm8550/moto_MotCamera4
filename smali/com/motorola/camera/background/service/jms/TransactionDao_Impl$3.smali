.class public final Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "TransactionDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/motorola/camera/background/service/jms/Transaction;",
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

    invoke-direct {p0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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
    check-cast p2, Lcom/motorola/camera/background/service/jms/Transaction;

    .line 2
    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    const/4 p0, 0x1

    .line 3
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 4
    iget-boolean p0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->markForDelete:Z

    const/4 v0, 0x2

    int-to-long v1, p0

    .line 5
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x3

    .line 6
    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->ts:J

    .line 7
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x4

    .line 8
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->clientId:I

    int-to-long v0, v0

    .line 9
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x5

    .line 10
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->sourceId:I

    int-to-long v0, v0

    .line 11
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x6

    .line 12
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->targetId:I

    int-to-long v0, v0

    .line 13
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x7

    .line 14
    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->jobNum:J

    .line 15
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x8

    .line 16
    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->taskNum:J

    .line 17
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x9

    .line 18
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->priority:I

    int-to-long v0, v0

    .line 19
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 20
    iget-boolean p0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->useFifo:Z

    const/16 v0, 0xa

    int-to-long v1, p0

    .line 21
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 22
    iget-object p0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->comment:Ljava/lang/String;

    const/16 v0, 0xb

    if-nez p0, :cond_0

    .line 23
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/16 p0, 0xc

    .line 25
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->coProcId:I

    int-to-long v0, v0

    .line 26
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xd

    .line 27
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->callerId:I

    int-to-long v0, v0

    .line 28
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xe

    .line 29
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->msgType:I

    int-to-long v0, v0

    .line 30
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 31
    iget-object p0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->msg:Ljava/lang/String;

    const/16 v0, 0xf

    if-nez p0, :cond_1

    .line 32
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/16 p0, 0x10

    .line 34
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->returnCode:I

    int-to-long v0, v0

    .line 35
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x11

    .line 36
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->iCallerId:I

    int-to-long v0, v0

    .line 37
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x12

    .line 38
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->iMsgType:I

    int-to-long v0, v0

    .line 39
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 40
    iget-object p0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->iMsg:Ljava/lang/String;

    const/16 v0, 0x13

    if-nez p0, :cond_2

    .line 41
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 42
    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    const/16 p0, 0x14

    .line 43
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->iReturnCode:I

    int-to-long v0, v0

    .line 44
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 45
    iget-object p0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->state:Ljava/lang/String;

    const/16 v0, 0x15

    if-nez p0, :cond_3

    .line 46
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 47
    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    const/16 p0, 0x16

    .line 48
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->progressInd:I

    int-to-long v0, v0

    .line 49
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x17

    .line 50
    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->timeExpiration:J

    .line 51
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 52
    iget-boolean p0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->scheduled:Z

    const/16 v0, 0x18

    int-to-long v1, p0

    .line 53
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x19

    .line 54
    iget v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->retryCount:I

    int-to-long v0, v0

    .line 55
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x1a

    .line 56
    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/Transaction;->id:J

    .line 57
    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE OR ABORT `transaction_table` SET `id` = ?,`markForDelete` = ?,`ts` = ?,`clientId` = ?,`sourceId` = ?,`targetId` = ?,`jobNum` = ?,`taskNum` = ?,`priority` = ?,`useFifo` = ?,`comment` = ?,`coProcId` = ?,`callerId` = ?,`msgType` = ?,`msg` = ?,`returnCode` = ?,`iCallerId` = ?,`iMsgType` = ?,`iMsg` = ?,`iReturnCode` = ?,`state` = ?,`progressInd` = ?,`timeExpiration` = ?,`scheduled` = ?,`retryCount` = ? WHERE `id` = ?"

    return-object p0
.end method
