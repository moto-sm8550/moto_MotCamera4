.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$15;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field public final arg$1:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

.field public final arg$2:Ljava/util/List;

.field public final arg$3:Lcom/google/android/datatransport/runtime/TransportContext;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/util/List;Lcom/google/android/datatransport/runtime/TransportContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$15;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$15;->arg$2:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$15;->arg$3:Lcom/google/android/datatransport/runtime/TransportContext;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$15;->arg$1:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object v2, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$15;->arg$2:Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$15;->arg$3:Lcom/google/android/datatransport/runtime/TransportContext;

    move-object/from16 v3, p1

    check-cast v3, Landroid/database/Cursor;

    sget-object v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    .line 1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    .line 2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x7

    .line 3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v4

    .line 4
    :goto_1
    new-instance v9, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;

    invoke-direct {v9}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 5
    iput-object v10, v9, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->autoMetadata:Ljava/util/Map;

    .line 6
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    const/4 v10, 0x2

    .line 7
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setEventMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    const/4 v10, 0x3

    .line 8
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->setUptimeMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    const/4 v10, 0x4

    if-eqz v7, :cond_2

    .line 9
    new-instance v4, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 10
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 11
    sget-object v7, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    goto :goto_2

    .line 12
    :cond_1
    new-instance v8, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v8, v7}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_2
    const/4 v8, 0x5

    .line 13
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 14
    iput-object v4, v9, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    goto :goto_4

    .line 15
    :cond_2
    new-instance v7, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 16
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    .line 17
    sget-object v10, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    goto :goto_3

    .line 18
    :cond_3
    new-instance v11, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v11, v10}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    .line 19
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "bytes"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v13

    new-array v15, v8, [Ljava/lang/String;

    .line 20
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v12, "event_payloads"

    const-string v14, "event_id = ?"

    const-string/jumbo v18, "sequence_num"

    .line 21
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    sget-object v8, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;

    .line 22
    invoke-static {v4, v8}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 23
    invoke-direct {v7, v10, v4}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 24
    iput-object v7, v9, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    :goto_4
    const/4 v4, 0x6

    .line 25
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 26
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 27
    iput-object v4, v9, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->code:Ljava/lang/Integer;

    .line 28
    :cond_4
    invoke-virtual {v9}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v4

    .line 29
    new-instance v7, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;

    invoke-direct {v7, v5, v6, v0, v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;-><init>(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)V

    .line 30
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method
