.class public final Lcom/motorola/camera/fragments/CalibrationDataFragment$1;
.super Landroid/os/Handler;
.source "CalibrationDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/CalibrationDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

    if-eqz v1, :cond_4

    .line 4
    iget-boolean v0, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;

    .line 7
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    if-le p1, v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 9
    iget-object v1, v1, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

    .line 10
    invoke-virtual {v1, p1, v0}, Landroid/widget/CursorTreeAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/HashSet;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;

    if-eqz p1, :cond_4

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 19
    iget-object v0, v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/CursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 22
    iget-object v1, v1, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

    .line 23
    invoke-virtual {v1}, Landroid/widget/CursorTreeAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 24
    iget-object v1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 25
    iget-object v1, v1, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/HashSet;

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    new-instance v2, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;

    invoke-direct {v2, v1, p1}, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Landroid/database/Cursor;)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fragments/CalibrationDataFragment;->doDataIO(Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
