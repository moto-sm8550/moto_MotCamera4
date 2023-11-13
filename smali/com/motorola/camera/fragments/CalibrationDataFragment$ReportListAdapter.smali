.class public final Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "CalibrationDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/CalibrationDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReportListAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Landroid/content/Context;[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    const/4 v2, 0x0

    const v3, 0x7f0d007a

    const v6, 0x7f0d0078

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    .line 2
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public final getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    new-instance v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Landroid/database/Cursor;)V

    sget p1, Lcom/motorola/camera/fragments/CalibrationDataFragment;->$r8$clinit:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fragments/CalibrationDataFragment;->doDataIO(Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onGroupCollapsed(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->onGroupCollapsed(I)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/HashSet;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onGroupExpanded(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/HashSet;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
