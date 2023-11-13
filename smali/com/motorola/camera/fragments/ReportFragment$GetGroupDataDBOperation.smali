.class public final Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;
.super Lcom/motorola/camera/fragments/ReportFragment$DBOperations;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/ReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetGroupDataDBOperation"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/ReportFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/ReportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    invoke-direct {p0}, Lcom/motorola/camera/fragments/ReportFragment$DBOperations;-><init>()V

    return-void
.end method


# virtual methods
.method public final query()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    invoke-virtual {v1}, Lcom/motorola/camera/fragments/ReportFragment;->getGroup()V

    const-string v1, "KPI"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAW_SQL"

    const-string v3, "SELECT keytag, ROUND(AVG(keyvalue)) AS keyvalue, camera, coldstart, mode, _id FROM events WHERE keytype = ? AND taglevel = ? GROUP BY keytag, camera, coldstart, mode ORDER BY keytag ASC"

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SELECTION_ARGS"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    .line 6
    invoke-virtual {v1, v0}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->rawQueryData(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;-><init>(Landroid/database/Cursor;I)V

    .line 8
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 9
    iput v2, v0, Landroid/os/Message;->what:I

    .line 10
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
