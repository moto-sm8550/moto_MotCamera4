.class public final Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;
.super Ljava/lang/Object;
.source "TransactionDao_Impl.java"

# interfaces
.implements Lcom/motorola/camera/background/service/jms/TransactionDao;


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __insertionAdapterOfTransaction:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/motorola/camera/background/service/jms/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final __preparedStmtOfDeleteById:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$6;

.field public final __preparedStmtOfUpdate:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$4;

.field public final __preparedStmtOfUpdateMarkForDelete:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$9;

.field public final __preparedStmtOfUpdateMsg:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$10;

.field public final __preparedStmtOfUpdateRetryCount:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$8;

.field public final __updateAdapterOfTransaction:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/motorola/camera/background/service/jms/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$1;

    invoke-direct {v0, p1}, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$1;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__insertionAdapterOfTransaction:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$1;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    new-instance v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$3;

    invoke-direct {v0, p1}, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$3;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__updateAdapterOfTransaction:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$3;

    .line 6
    new-instance v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$4;

    invoke-direct {v0, p1}, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdate:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$4;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    new-instance v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$6;

    invoke-direct {v0, p1}, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$6;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfDeleteById:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$6;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    new-instance v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$8;

    invoke-direct {v0, p1}, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$8;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateRetryCount:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$8;

    .line 11
    new-instance v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$9;

    invoke-direct {v0, p1}, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$9;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateMarkForDelete:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$9;

    .line 12
    new-instance v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$10;

    invoke-direct {v0, p1}, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$10;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateMsg:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$10;

    return-void
.end method


# virtual methods
.method public final count()I
    .locals 3

    const-string v0, "SELECT COUNT(*) FROM transaction_table"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v0, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    .line 4
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 7
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    :catchall_0
    move-exception v1

    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 10
    throw v1
.end method

.method public final deleteById(J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfDeleteById:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$6;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 5
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 8
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfDeleteById:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$6;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 11
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfDeleteById:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$6;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 13
    throw p1
.end method

.method public final insert(Lcom/motorola/camera/background/service/jms/Transaction;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "transactions"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__insertionAdapterOfTransaction:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$1;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 6
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 8
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 9
    throw p1
.end method

.method public final selectAll()Ljava/util/List;
    .locals 60
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/service/jms/Transaction;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM transaction_table"

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2
    iget-object v3, v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 4
    invoke-static {v3, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "markForDelete"

    .line 5
    invoke-static {v3, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "ts"

    .line 6
    invoke-static {v3, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "clientId"

    .line 7
    invoke-static {v3, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "sourceId"

    .line 8
    invoke-static {v3, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "targetId"

    .line 9
    invoke-static {v3, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "jobNum"

    .line 10
    invoke-static {v3, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "taskNum"

    .line 11
    invoke-static {v3, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "priority"

    .line 12
    invoke-static {v3, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "useFifo"

    .line 13
    invoke-static {v3, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "comment"

    .line 14
    invoke-static {v3, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "coProcId"

    .line 15
    invoke-static {v3, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "callerId"

    .line 16
    invoke-static {v3, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "msgType"

    .line 17
    invoke-static {v3, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "msg"

    .line 18
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "returnCode"

    .line 19
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "iCallerId"

    .line 20
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "iMsgType"

    .line 21
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "iMsg"

    .line 22
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "iReturnCode"

    .line 23
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string/jumbo v1, "state"

    .line 24
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "progressInd"

    .line 25
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string/jumbo v1, "timeExpiration"

    .line 26
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "scheduled"

    .line 27
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "retryCount"

    .line 28
    invoke-static {v3, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v27, v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 31
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 32
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v28, 0x1

    if-eqz v2, :cond_0

    move/from16 v31, v28

    goto :goto_1

    :cond_0
    const/16 v31, 0x0

    .line 33
    :goto_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 34
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 35
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 36
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 37
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 38
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 39
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 40
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v42, v28

    goto :goto_2

    :cond_1
    const/16 v42, 0x0

    .line 41
    :goto_2
    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/16 v43, 0x0

    if-eqz v2, :cond_2

    move-object/from16 v2, v43

    goto :goto_3

    .line 42
    :cond_2
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    :goto_3
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 44
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    move/from16 v59, v0

    move/from16 v0, v27

    .line 45
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    move/from16 v27, v0

    move/from16 v0, p0

    .line 46
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v47

    if-eqz v47, :cond_3

    move/from16 p0, v0

    move/from16 v0, v17

    move-object/from16 v47, v43

    goto :goto_4

    .line 47
    :cond_3
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    move/from16 p0, v0

    move/from16 v0, v17

    .line 48
    :goto_4
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    move/from16 v17, v0

    move/from16 v0, v18

    .line 49
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    move/from16 v18, v0

    move/from16 v0, v19

    .line 50
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    move/from16 v19, v0

    move/from16 v0, v20

    .line 51
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_4

    move/from16 v20, v0

    move/from16 v0, v21

    move-object/from16 v51, v43

    goto :goto_5

    .line 52
    :cond_4
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v51, v20

    move/from16 v20, v0

    move/from16 v0, v21

    .line 53
    :goto_5
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    move/from16 v21, v0

    move/from16 v0, v22

    .line 54
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_5

    move/from16 v22, v0

    move/from16 v0, v23

    move-object/from16 v53, v43

    goto :goto_6

    .line 55
    :cond_5
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v53, v22

    move/from16 v22, v0

    move/from16 v0, v23

    .line 56
    :goto_6
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move/from16 v23, v0

    move/from16 v0, v24

    .line 57
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    move/from16 v24, v0

    move/from16 v0, v25

    .line 58
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_6

    move/from16 v25, v0

    move/from16 v0, v26

    move/from16 v57, v28

    goto :goto_7

    :cond_6
    move/from16 v25, v0

    move/from16 v0, v26

    const/16 v57, 0x0

    .line 59
    :goto_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    move/from16 v26, v0

    .line 60
    new-instance v0, Lcom/motorola/camera/background/service/jms/Transaction;

    move-object/from16 v28, v0

    move-object/from16 v43, v2

    invoke-direct/range {v28 .. v58}, Lcom/motorola/camera/background/service/jms/Transaction;-><init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V

    .line 61
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v59

    goto/16 :goto_0

    .line 62
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 63
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 64
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 65
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 66
    throw v0
.end method

.method public final selectById(J)Lcom/motorola/camera/background/service/jms/Transaction;
    .locals 58
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM transaction_table WHERE id = ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    move-wide/from16 v3, p1

    .line 2
    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    iget-object v3, v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    .line 5
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "markForDelete"

    .line 6
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "ts"

    .line 7
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "clientId"

    .line 8
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "sourceId"

    .line 9
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "targetId"

    .line 10
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "jobNum"

    .line 11
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "taskNum"

    .line 12
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "priority"

    .line 13
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "useFifo"

    .line 14
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "comment"

    .line 15
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "coProcId"

    .line 16
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "callerId"

    .line 17
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "msgType"

    .line 18
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "msg"

    .line 19
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "returnCode"

    .line 20
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p2, v1

    const-string v1, "iCallerId"

    .line 21
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "iMsgType"

    .line 22
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "iMsg"

    .line 23
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "iReturnCode"

    .line 24
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string/jumbo v1, "state"

    .line 25
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "progressInd"

    .line 26
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string/jumbo v1, "timeExpiration"

    .line 27
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "scheduled"

    .line 28
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "retryCount"

    .line 29
    invoke-static {v4, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 30
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    const/16 v26, 0x0

    if-eqz v25, :cond_7

    .line 31
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 32
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v30, 0x1

    goto :goto_0

    :cond_0
    const/16 v30, 0x0

    .line 33
    :goto_0
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 34
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 35
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 36
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 37
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 38
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 39
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 40
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v41, 0x1

    goto :goto_1

    :cond_1
    const/16 v41, 0x0

    .line 41
    :goto_1
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v42, v26

    goto :goto_2

    .line 42
    :cond_2
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v42, v0

    .line 43
    :goto_2
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 44
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 45
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    move/from16 v0, p1

    .line 46
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v0, p2

    move-object/from16 v46, v26

    goto :goto_3

    .line 47
    :cond_3
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v46, v0

    move/from16 v0, p2

    .line 48
    :goto_3
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    move/from16 v0, v17

    .line 49
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    move/from16 v0, v18

    .line 50
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    move/from16 v0, v19

    .line 51
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v0, v20

    move-object/from16 v50, v26

    goto :goto_4

    .line 52
    :cond_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v50, v0

    move/from16 v0, v20

    .line 53
    :goto_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    move/from16 v0, v21

    .line 54
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_5
    move/from16 v0, v22

    move-object/from16 v52, v26

    goto :goto_6

    .line 55
    :cond_5
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_5

    .line 56
    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    move/from16 v0, v23

    .line 57
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v0, v24

    .line 58
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v56, 0x1

    goto :goto_7

    :cond_6
    const/16 v56, 0x0

    .line 59
    :goto_7
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    .line 60
    new-instance v26, Lcom/motorola/camera/background/service/jms/Transaction;

    move-object/from16 v27, v26

    invoke-direct/range {v27 .. v57}, Lcom/motorola/camera/background/service/jms/Transaction;-><init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 62
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v26

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .line 63
    :goto_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 64
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 65
    throw v0
.end method

.method public final update(JLjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "state"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdate:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$4;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 18
    invoke-interface {v0, v1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 p3, 0x2

    .line 19
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 20
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 21
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 22
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 24
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdate:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$4;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 26
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdate:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$4;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 29
    throw p1
.end method

.method public final update(Lcom/motorola/camera/background/service/jms/Transaction;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "transactions"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__updateAdapterOfTransaction:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$3;

    .line 4
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 6
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    add-int/lit8 p1, p1, 0x0

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 10
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_3
    invoke-virtual {v0, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 12
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 15
    throw p1
.end method

.method public final updateMarkForDelete(JZ)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "markForDelete"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateMarkForDelete:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$9;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p3

    const/4 p3, 0x1

    .line 3
    invoke-interface {v0, p3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x2

    .line 4
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 9
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateMarkForDelete:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$9;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 12
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateMarkForDelete:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$9;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 14
    throw p1
.end method

.method public final updateMsg(JIILjava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "callerId",
            "msgType",
            "msg",
            "returnCode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateMsg:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$10;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p3

    const/4 p3, 0x1

    .line 3
    invoke-interface {v0, p3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    int-to-long p3, p4

    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, v1, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x3

    if-nez p5, :cond_0

    .line 5
    invoke-interface {v0, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, p3, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p3, 0x4

    int-to-long p4, p6

    .line 7
    invoke-interface {v0, p3, p4, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x5

    .line 8
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 10
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 13
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateMsg:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$10;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 15
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateMsg:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$10;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 18
    throw p1
.end method

.method public final updateRetryCount(JI)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "retryCount"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateRetryCount:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$8;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p3

    const/4 p3, 0x1

    .line 3
    invoke-interface {v0, p3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x2

    .line 4
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 9
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateRetryCount:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$8;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 12
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/TransactionDao_Impl;->__preparedStmtOfUpdateRetryCount:Lcom/motorola/camera/background/service/jms/TransactionDao_Impl$8;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 14
    throw p1
.end method
