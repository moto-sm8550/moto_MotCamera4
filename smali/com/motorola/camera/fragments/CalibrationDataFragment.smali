.class public Lcom/motorola/camera/fragments/CalibrationDataFragment;
.super Landroidx/fragment/app/Fragment;
.source "CalibrationDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperationsRunnable;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$GetDataFromDBThreadFactory;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListChildClickListener;,
        Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAdapter:Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mExpandableListView:Landroid/widget/ExpandableListView;

.field public final mHandler:Lcom/motorola/camera/fragments/CalibrationDataFragment$1;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public final mOpenGroupSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 2
    const-class v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/HashSet;

    .line 4
    new-instance v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fragments/CalibrationDataFragment$1;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mHandler:Lcom/motorola/camera/fragments/CalibrationDataFragment$1;

    return-void
.end method


# virtual methods
.method public final doDataIO(Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetDataFromDBThreadFactory;

    invoke-direct {v0}, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetDataFromDBThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 3
    :cond_1
    new-instance v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperationsRunnable;

    invoke-direct {v0, p1}, Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperationsRunnable;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error executing current measure runnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const p3, 0x7f0d0077

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a007a

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 3
    sget-object p3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->QCOM_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {p3}, Lcom/motorola/camera/shared/DeviceProperties;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x8

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110082

    .line 6
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p3, v5, v0

    .line 7
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p2, 0x7f0a00ad

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/4 v4, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    .line 14
    iget-object v4, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f110081

    .line 17
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v0

    .line 18
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const p2, 0x7f0a00ab

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 23
    new-instance p3, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListChildClickListener;

    invoke-direct {p3}, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListChildClickListener;-><init>()V

    .line 24
    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    const p2, 0x7f0a017d

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 26
    iget-object p3, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p3, p2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 27
    new-instance p2, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

    .line 28
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string p3, "keytype"

    .line 29
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [I

    const p3, 0x7f0a03c2

    aput p3, v8, v0

    const-string p3, "keytag"

    const-string v0, "calbrtnvalue"

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object v9

    const/4 p3, 0x2

    new-array v10, p3, [I

    fill-array-data v10, :array_0

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Landroid/content/Context;[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    iput-object p2, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

    .line 30
    new-instance p3, Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewBinder(Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;)V

    .line 31
    iget-object p2, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object p3, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 32
    new-instance p2, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;

    invoke-direct {p2, p0}, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fragments/CalibrationDataFragment;->doDataIO(Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f0a03c2
        0x7f0a03c3
    .end array-data
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method
