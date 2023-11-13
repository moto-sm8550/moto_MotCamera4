.class public final Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;
.super Lcom/motorola/camera/fragments/ReportFragment$DBOperations;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/ReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClearDataDBOperation"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/ReportFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/ReportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

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
    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    invoke-virtual {v1}, Lcom/motorola/camera/fragments/ReportFragment;->getGroup()V

    const-string v1, "KPI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "WHERE_CLAUSE"

    const-string v3, "keytype = ?"

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "WHERE_ARGS"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    .line 6
    invoke-virtual {v1, v0}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->deleteData(Landroid/os/Bundle;)I

    .line 7
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mHandler:Landroid/os/Handler;

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
