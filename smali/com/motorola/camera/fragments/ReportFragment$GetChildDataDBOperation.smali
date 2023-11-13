.class public final Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;
.super Lcom/motorola/camera/fragments/ReportFragment$DBOperations;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/ReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetChildDataDBOperation"
.end annotation


# instance fields
.field public final mGroupCursor:Landroid/database/Cursor;

.field public final mGroupPosition:I

.field public final synthetic this$0:Lcom/motorola/camera/fragments/ReportFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/ReportFragment;Landroid/database/Cursor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    invoke-direct {p0}, Lcom/motorola/camera/fragments/ReportFragment$DBOperations;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    .line 3
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupPosition:I

    return-void
.end method


# virtual methods
.method public final query()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    const-string v4, "keytag"

    .line 5
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    const-string v4, "camera"

    .line 6
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    const-string v3, "coldstart"

    .line 7
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    const-string v5, "mode"

    .line 8
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "RAW_SQL"

    const-string v4, "SELECT keytag, keyvalue, camera, coldstart, mode, flash, focus, hdr, _id FROM events WHERE keytag = ? AND camera = ? AND coldstart = ? AND mode = ? ORDER BY timestamp DESC"

    .line 9
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SELECTION_ARGS"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    .line 12
    invoke-virtual {v1, v0}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->rawQueryData(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;-><init>(Landroid/database/Cursor;I)V

    .line 14
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 15
    iput v3, v0, Landroid/os/Message;->what:I

    .line 16
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    iget v1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->mGroupPosition:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mHandler:Landroid/os/Handler;

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
